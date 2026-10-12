import NoFourMUBs.Step2.SOS.Canonical086
import NoFourMUBs.Step2.SOS.Canonical127
import NoFourMUBs.Step2.SOS.Canonical128
import NoFourMUBs.Step2.SOS.Canonical129
import NoFourMUBs.Step2.SOS.Canonical137
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical162
import NoFourMUBs.Step2.SOS.Canonical167
import NoFourMUBs.Step2.SOS.Canonical168
import NoFourMUBs.Step2.SOS.Canonical169
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical173
import NoFourMUBs.Step2.SOS.Canonical174
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical358
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions100
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions163
import NoFourMUBs.Step2.SOS.Reductions164
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions243
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical114
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical120
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical150
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection7808 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -60), (20, 5), (76, -240), (81, -240), (94, 15), (241, 160), (243, 160), (691, -240), (698, 880), (704, 80), (808, 720), (913, 720), (1005, 720), (1047, -720), (1052, -240), (1055, -480), (1058, -480), (1059, 80), (1139, 1440), (1204, 1440), (1219, -480), (1226, 400), (1227, 400), (1251, -130)]

def reductionPivot7808 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound7808 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4145).moment H =
      Integer.Sparse.eval reductionProjection7808 (momentVector H) := by
  have heq : reductionPivot7808 = (fun u v => (normalNode4145).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4145).moment H = injectiveMoment H reductionPivot7808 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4145).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7808 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7808 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7808 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5247, reductionProjection2658, reductionProjection7807, reductionProjection3127, reductionProjection7298] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7808 (0 : Fin 5)) = canonicalInput9351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5247 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9351 hH))).trans (reductionSound5247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7808 (1 : Fin 5)) = canonicalInput8175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2658 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2658 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8175 hH))).trans (reductionSound2658 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7808 (2 : Fin 5)) = (normalNode4162).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7807 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7808 (3 : Fin 5)) = canonicalInput8149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3127 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8149 hH))).trans (reductionSound3127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7808 (4 : Fin 5)) = canonicalInput8148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7298 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7808 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8148 hH))).trans (reductionSound7298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4145).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7808 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4145).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7808 (j : Fin 5)))
      1 1440 1440 1 ![72, 1440, 1440, 288, 288] ![20, 1, 1, 5, 5] reductionProjection7808 ![reductionProjection5247, reductionProjection2658, reductionProjection7807, reductionProjection3127, reductionProjection7298]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7809 : Integer.Sparse (Fin 1613) := [(434, -1), (957, -1), (1204, -2)]

def reductionPivot7809 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, -1, 1, -1], ![1, -1, 1, -1]]

theorem reductionSound7809 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5530).moment H =
      Integer.Sparse.eval reductionProjection7809 (momentVector H) := by
  have heq : reductionPivot7809 = (fun u v => (normalNode5530).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5530).moment H = injectiveMoment H reductionPivot7809 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5530).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7809 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7809 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7809 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection477, oldProjection614, reductionProjection2654, reductionProjection2654] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7809 (0 : Fin 4)) = canonicalInput11123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7809 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection477 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7809 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11123 hH))).trans (oldProjectionSound477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7809 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4839 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7809 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection614 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7809 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection614 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4839 hH))).trans (oldProjectionSound614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7809 (2 : Fin 4)) = canonicalInput10775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7809 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2654 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7809 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10775 hH))).trans (reductionSound2654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7809 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1204).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7809 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2654 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7809 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5530).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7809 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5530).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7809 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7809 ![oldProjection477, oldProjection614, reductionProjection2654, reductionProjection2654]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7810 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 10), (426, 720), (434, 720), (565, 720), (698, 320), (775, 720), (808, 720), (928, -1440), (956, 720), (957, 720), (1055, -480), (1139, 1440), (1203, 720), (1204, 2160), (1219, -240), (1226, 80), (1227, 320), (1251, -95)]

def reductionPivot7810 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound7810 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4146).moment H =
      Integer.Sparse.eval reductionProjection7810 (momentVector H) := by
  have heq : reductionPivot7810 = (fun u v => (normalNode4146).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4146).moment H = injectiveMoment H reductionPivot7810 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4146).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7810 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7810 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7810 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1944, reductionProjection2739, reductionProjection3202, reductionProjection7809, reductionProjection287] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7810 (0 : Fin 5)) = canonicalInput9352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1944 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9352 hH))).trans (oldProjectionSound1944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7810 (1 : Fin 5)) = canonicalInput8177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2739 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2739 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8177 hH))).trans (reductionSound2739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7810 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code928).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7810 (3 : Fin 5)) = canonicalInput8151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7809 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8151 hH))).trans (reductionSound7809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7810 (4 : Fin 5)) = canonicalInput8150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection287 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7810 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8150 hH))).trans (reductionSound287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4146).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7810 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4146).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7810 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1, 2, 2] ![1, 5, 1440, 720, 720] reductionProjection7810 ![oldProjection1944, reductionProjection2739, reductionProjection3202, reductionProjection7809, reductionProjection287]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7811 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -5), (94, -5), (241, 60), (243, 20), (400, 180), (423, 180), (426, 360), (698, 100), (762, 180), (775, 540), (781, 180), (1058, -60), (1139, 180), (1203, 360), (1204, 180), (1205, 180), (1226, 40), (1251, -5)]

def reductionPivot7811 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound7811 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode4147).moment H =
      Integer.Sparse.eval reductionProjection7811 (momentVector H) := by
  have heq : reductionPivot7811 = (fun u v => (normalNode4147).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4147).moment H = injectiveMoment H reductionPivot7811 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4147).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7811 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7811 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7811 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2847, reductionProjection7308, reductionProjection283, reductionProjection2685, reductionProjection2655] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7811 (0 : Fin 5)) = canonicalInput9353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9353 hH))).trans (reductionSound2847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7811 (1 : Fin 5)) = canonicalInput8178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7308 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8178 hH))).trans (reductionSound7308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7811 (2 : Fin 5)) = (normalNode4166).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection283 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7811 (3 : Fin 5)) = canonicalInput8157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2685 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8157 hH))).trans (reductionSound2685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7811 (4 : Fin 5)) = canonicalInput8156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2655 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7811 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8156 hH))).trans (reductionSound2655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4147).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7811 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4147).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7811 (j : Fin 5)))
      1 360 1440 4 ![288, 1440, 144, 288, 1440] ![5, 1, 10, 5, 1] reductionProjection7811 ![reductionProjection2847, reductionProjection7308, reductionProjection283, reductionProjection2685, reductionProjection2655]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7812 : Integer.Sparse (Fin 1613) := [(94, 1), (698, -8), (700, -16), (704, -8), (803, -72), (806, -72), (1187, -72), (1251, 1)]

def reductionPivot7812 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, -2, -1], ![1, 0, 1, -2]]

theorem reductionSound7812 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4167).moment H =
      Integer.Sparse.eval reductionProjection7812 (momentVector H) := by
  have heq : reductionPivot7812 = (fun u v => (normalNode4167).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4167).moment H = injectiveMoment H reductionPivot7812 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4167).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7812 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7812 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7812 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1015, oldProjection599, reductionProjection158, oldProjection601] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7812 (0 : Fin 4)) = canonicalInput20784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7812 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1015 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7812 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20784 hH))).trans (oldProjectionSound1015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7812 (1 : Fin 4)) = canonicalInput8955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7812 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection599 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7812 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8955 hH))).trans (oldProjectionSound599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7812 (2 : Fin 4)) = canonicalInput8171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7812 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection158 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7812 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8171 hH))).trans (reductionSound158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7812 (3 : Fin 4)) = canonicalInput8160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7812 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection601 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7812 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8160 hH))).trans (oldProjectionSound601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4167).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7812 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4167).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7812 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection7812 ![oldProjection1015, oldProjection599, reductionProjection158, oldProjection601]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7813 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 2), (94, -18), (243, 48), (691, -48), (698, 96), (700, 160), (704, 32), (803, 144), (806, 432), (1047, -144), (1052, -48), (1059, 16), (1174, 288), (1187, 144), (1219, -192), (1226, 32), (1251, 1)]

def reductionPivot7813 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound7813 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4148).moment H =
      Integer.Sparse.eval reductionProjection7813 (momentVector H) := by
  have heq : reductionPivot7813 = (fun u v => (normalNode4148).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4148).moment H = injectiveMoment H reductionPivot7813 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4148).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7813 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7813 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7813 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5243, oldProjection2262, oldProjection2262, oldProjection1975, reductionProjection7812] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7813 (0 : Fin 5)) = canonicalInput9354.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5243 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9354 hH))).trans (reductionSound5243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7813 (1 : Fin 5)) = canonicalInput8179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2262 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8179 hH))).trans (oldProjectionSound2262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7813 (2 : Fin 5)) = canonicalInput8161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2262 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8161 hH))).trans (oldProjectionSound2262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7813 (3 : Fin 5)) = canonicalInput8159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1975 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8159 hH))).trans (oldProjectionSound1975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7813 (4 : Fin 5)) = (normalNode4167).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7812 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7813 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4148).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7813 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4148).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7813 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 720, 144] ![1, 1, 1, 2, 10] reductionProjection7813 ![reductionProjection5243, oldProjection2262, oldProjection2262, oldProjection1975, reductionProjection7812]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7814 : Integer.Sparse (Fin 1613) := [(94, -3), (243, -32), (700, -16), (1186, -144), (1197, -144), (1198, -144), (1226, -16), (1251, 1)]

def reductionPivot7814 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![0, 1, -3, 2], ![1, -2, 0, 1]]

theorem reductionSound7814 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5540).moment H =
      Integer.Sparse.eval reductionProjection7814 (momentVector H) := by
  have heq : reductionPivot7814 = (fun u v => (normalNode5540).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5540).moment H = injectiveMoment H reductionPivot7814 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5540).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot7814 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7814 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7814 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1355, oldProjection692, reductionProjection156, reductionProjection138] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7814 (0 : Fin 4)) = canonicalInput22921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7814 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1355 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7814 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22921 hH))).trans (oldProjectionSound1355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7814 (1 : Fin 4)) = canonicalInput10847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7814 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection692 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7814 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10847 hH))).trans (oldProjectionSound692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7814 (2 : Fin 4)) = canonicalInput10750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7814 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection156 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7814 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10750 hH))).trans (reductionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7814 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1197).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7814 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection138 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7814 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5540).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7814 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5540).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7814 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection7814 ![oldProjection1355, oldProjection692, reductionProjection156, reductionProjection138]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7815 : Integer.Sparse (Fin 1613) := [(932, 1)]

theorem reductionSound7815 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code932).moment H =
      Integer.Sparse.eval reductionProjection7815 (momentVector H) := by
  have hc : coordinates (932 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code932) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7815, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7816 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (72, -240), (94, -30), (243, 240), (682, -240), (698, 160), (700, 320), (704, 80), (758, 720), (761, 720), (803, 720), (806, 720), (932, -1440), (1047, -240), (1174, 720), (1183, 720), (1186, 720), (1187, 720), (1197, 720), (1198, 720), (1219, -240), (1226, 160), (1251, 10)]

def reductionPivot7816 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, -1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound7816 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4149).moment H =
      Integer.Sparse.eval reductionProjection7816 (momentVector H) := by
  have heq : reductionPivot7816 = (fun u v => (normalNode4149).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4149).moment H = injectiveMoment H reductionPivot7816 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4149).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7816 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7816 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7816 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7316, reductionProjection7812, reductionProjection7814, oldProjection2262, reductionProjection7815] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7816 (0 : Fin 5)) = canonicalInput9355.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7316 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9355 hH))).trans (reductionSound7316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7816 (1 : Fin 5)) = canonicalInput8181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7812 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8181 hH))).trans (reductionSound7812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7816 (2 : Fin 5)) = canonicalInput8163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7814 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8163 hH))).trans (reductionSound7814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7816 (3 : Fin 5)) = canonicalInput8161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2262 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8161 hH))).trans (oldProjectionSound2262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7816 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code932).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7815 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7816 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4149).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7816 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4149).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7816 (j : Fin 5)))
      1 1440 1440 1 ![288, 144, 288, 1440, 1] ![5, 10, 5, 1, 1440] reductionProjection7816 ![reductionProjection7316, reductionProjection7812, reductionProjection7814, oldProjection2262, reductionProjection7815]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7817 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -60), (20, 10), (94, -15), (243, 200), (691, -120), (698, 120), (700, 160), (758, 360), (806, 360), (1047, -480), (1052, -360), (1174, 720), (1197, 360), (1219, -480), (1226, 160), (1251, -15)]

def reductionPivot7817 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound7817 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4150).moment H =
      Integer.Sparse.eval reductionProjection7817 (momentVector H) := by
  have heq : reductionPivot7817 = (fun u v => (normalNode4150).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4150).moment H = injectiveMoment H reductionPivot7817 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4150).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7817 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7817 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 720, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7817 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2719, oldProjection1975, reductionProjection2720, oldProjection2262, oldProjection2262] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7817 (0 : Fin 5)) = canonicalInput9356.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9356 hH))).trans (reductionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7817 (1 : Fin 5)) = canonicalInput8182.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1975 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8182 hH))).trans (oldProjectionSound1975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7817 (2 : Fin 5)) = canonicalInput8164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2720 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8164 hH))).trans (reductionSound2720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7817 (3 : Fin 5)) = canonicalInput8162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2262 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8162 hH))).trans (oldProjectionSound2262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7817 (4 : Fin 5)) = canonicalInput8161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2262 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7817 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8161 hH))).trans (oldProjectionSound2262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4150).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7817 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4150).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7817 (j : Fin 5)))
      1 720 1440 2 ![144, 720, 144, 1440, 1440] ![10, 2, 10, 1, 1] reductionProjection7817 ![reductionProjection2719, oldProjection1975, reductionProjection2720, oldProjection2262, oldProjection2262]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7818 : Integer.Sparse (Fin 1613) := [(90, -1), (298, -9), (698, -2), (955, -9), (1004, -9), (1226, 1), (1227, -1)]

def reductionPivot7818 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]

theorem reductionSound7818 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4209).moment H =
      Integer.Sparse.eval reductionProjection7818 (momentVector H) := by
  have heq : reductionPivot7818 = (fun u v => (normalNode4209).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4209).moment H = injectiveMoment H reductionPivot7818 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4209).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7818 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7818 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7818 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection952, oldProjection616, reductionProjection342, oldProjection456] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7818 (0 : Fin 4)) = canonicalInput21738.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7818 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection952 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7818 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection952 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21738 hH))).trans (oldProjectionSound952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7818 (1 : Fin 4)) = canonicalInput8977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7818 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7818 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8977 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7818 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7818 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7818 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7818 (3 : Fin 4)) = canonicalInput8241.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7818 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7818 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8241 hH))).trans (oldProjectionSound456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4209).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7818 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4209).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7818 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection7818 ![oldProjection952, oldProjection616, reductionProjection342, oldProjection456]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7819 : Integer.Sparse (Fin 1613) := [(88, -1), (90, 1), (277, -9), (698, -1), (934, -9), (1024, -9), (1226, -2)]

def reductionPivot7819 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 2, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound7819 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4164).moment H =
      Integer.Sparse.eval reductionProjection7819 (momentVector H) := by
  have heq : reductionPivot7819 = (fun u v => (normalNode4164).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4164).moment H = injectiveMoment H reductionPivot7819 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4164).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7819 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7819 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7819 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4145, reductionProjection289, reductionProjection292, reductionProjection2252] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7819 (0 : Fin 4)) = canonicalInput21734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7819 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4145 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7819 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21734 hH))).trans (reductionSound4145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7819 (1 : Fin 4)) = canonicalInput8957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7819 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7819 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8957 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7819 (2 : Fin 4)) = canonicalInput8169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7819 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7819 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8169 hH))).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7819 (3 : Fin 4)) = canonicalInput8154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7819 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2252 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7819 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8154 hH))).trans (reductionSound2252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4164).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7819 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4164).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7819 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection7819 ![reductionProjection4145, reductionProjection289, reductionProjection292, reductionProjection2252]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7820 : Integer.Sparse (Fin 1613) := [(926, 1)]

theorem reductionSound7820 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code926).moment H =
      Integer.Sparse.eval reductionProjection7820 (momentVector H) := by
  have hc : coordinates (926 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code926) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7820, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7821 : Integer.Sparse (Fin 1613) := [(94, 1), (243, -8), (698, -8), (732, -72), (1004, -72), (1203, -72), (1226, 8), (1251, 1)]

def reductionPivot7821 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, -3, 2]]

theorem reductionSound7821 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4566).moment H =
      Integer.Sparse.eval reductionProjection7821 (momentVector H) := by
  have heq : reductionPivot7821 = (fun u v => (normalNode4566).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4566).moment H = injectiveMoment H reductionPivot7821 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4566).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7821 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7821 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7821 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection223, oldProjection581, oldProjection1214, oldProjection616] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7821 (0 : Fin 4)) = canonicalInput11141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7821 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7821 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11141 hH))).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7821 (1 : Fin 4)) = canonicalInput8933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7821 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection581 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7821 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8933 hH))).trans (oldProjectionSound581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7821 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3842 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7821 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7821 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3842 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7821 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3841 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7821 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7821 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3841 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4566).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7821 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4566).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7821 (j : Fin 4)))
      2 144 144 2 ![1, 1, 72, 1] ![144, 144, 2, 144] reductionProjection7821 ![reductionProjection223, oldProjection581, oldProjection1214, oldProjection616]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7822 : Integer.Sparse (Fin 1613) := [(0, -1), (88, 80), (94, -5), (243, 80), (277, 720), (288, 720), (298, 720), (426, 720), (698, 240), (732, 720), (926, -1440), (934, 720), (955, 720), (1004, 1440), (1015, 720), (1024, 720), (1203, 720), (1226, 80), (1227, 160), (1251, -40)]

def reductionPivot7822 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]

theorem reductionSound7822 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4152).moment H =
      Integer.Sparse.eval reductionProjection7822 (momentVector H) := by
  have heq : reductionPivot7822 = (fun u v => (normalNode4152).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4152).moment H = injectiveMoment H reductionPivot7822 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4152).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7822 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7822 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 1440, 18, 1, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7822 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7818, reductionProjection7382, reductionProjection7819, reductionProjection7820, reductionProjection7821] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7822 (0 : Fin 5)) = canonicalInput10369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7818 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10369 hH))).trans (reductionSound7818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7822 (1 : Fin 5)) = canonicalInput8201.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8201 hH))).trans (reductionSound7382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7822 (2 : Fin 5)) = (normalNode4164).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7819 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7822 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code926).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7820 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7822 (4 : Fin 5)) = canonicalInput8140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7821 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7822 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8140 hH))).trans (reductionSound7821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4152).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7822 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4152).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7822 (j : Fin 5)))
      1 1440 1440 1 ![18, 1440, 18, 1, 144] ![80, 1, 80, 1440, 10] reductionProjection7822 ![reductionProjection7818, reductionProjection7382, reductionProjection7819, reductionProjection7820, reductionProjection7821]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7823 : Integer.Sparse (Fin 1613) := [(90, -1), (698, -2), (782, -9), (1004, -9), (1024, -9), (1226, 1), (1227, -1)]

def reductionPivot7823 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 2, 1, -3], ![1, -3, 1, 1]]

theorem reductionSound7823 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4538).moment H =
      Integer.Sparse.eval reductionProjection7823 (momentVector H) := by
  have heq : reductionPivot7823 = (fun u v => (normalNode4538).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4538).moment H = injectiveMoment H reductionPivot7823 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4538).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot7823 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7823 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7823 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection952, reductionProjection289, oldProjection616, oldProjection590] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7823 (0 : Fin 4)) = canonicalInput21018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7823 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection952 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7823 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection952 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21018 hH))).trans (oldProjectionSound952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7823 (1 : Fin 4)) = canonicalInput8995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7823 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7823 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8995 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7823 (2 : Fin 4)) = canonicalInput8787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7823 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7823 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8787 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7823 (3 : Fin 4)) = canonicalInput8776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7823 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7823 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8776 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4538).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7823 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4538).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7823 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection7823 ![oldProjection952, reductionProjection289, oldProjection616, oldProjection590]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7824 : Integer.Sparse (Fin 1613) := [(90, -1), (243, -1), (698, 1), (700, -1), (781, -9), (782, -9), (934, -9), (1226, -1)]

def reductionPivot7824 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 2, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound7824 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4165).moment H =
      Integer.Sparse.eval reductionProjection7824 (momentVector H) := by
  have heq : reductionPivot7824 = (fun u v => (normalNode4165).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4165).moment H = injectiveMoment H reductionPivot7824 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4165).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7824 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7824 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7824 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection951, oldProjection590, reductionProjection292, oldProjection589] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7824 (0 : Fin 4)) = canonicalInput20782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7824 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection951 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7824 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20782 hH))).trans (oldProjectionSound951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7824 (1 : Fin 4)) = canonicalInput8952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7824 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7824 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8952 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7824 (2 : Fin 4)) = canonicalInput8169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7824 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7824 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8169 hH))).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7824 (3 : Fin 4)) = canonicalInput8155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7824 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection589 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7824 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8155 hH))).trans (oldProjectionSound589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4165).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7824 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4165).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7824 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection7824 ![oldProjection951, oldProjection590, reductionProjection292, oldProjection589]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7825 : Integer.Sparse (Fin 1613) := [(88, 1), (90, 2), (243, 3), (426, 9), (698, 3), (700, 1), (732, 9), (781, 9), (782, 18), (926, -18), (933, 9), (934, 9), (955, 9), (1003, 9), (1004, 9), (1015, 9), (1024, 9), (1225, 1), (1226, 1)]

def reductionPivot7825 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound7825 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4153).moment H =
      Integer.Sparse.eval reductionProjection7825 (momentVector H) := by
  have heq : reductionPivot7825 = (fun u v => (normalNode4153).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4153).moment H = injectiveMoment H reductionPivot7825 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4153).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot7825 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7825 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 18, 18, 1, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7825 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7823, reductionProjection346, reductionProjection7824, reductionProjection7820, reductionProjection7802] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7825 (0 : Fin 5)) = canonicalInput10981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7823 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10981 hH))).trans (reductionSound7823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7825 (1 : Fin 5)) = (normalNode4211).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection346 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7825 (2 : Fin 5)) = (normalNode4165).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7824 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7825 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code926).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7820 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7825 (4 : Fin 5)) = (normalNode4154).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7802 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7825 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4153).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7825 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4153).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7825 (j : Fin 5)))
      1 18 18 1 ![18, 18, 18, 1, 18] ![1, 1, 1, 18, 1] reductionProjection7825 ![reductionProjection7823, reductionProjection346, reductionProjection7824, reductionProjection7820, reductionProjection7802]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7826 : Integer.Sparse (Fin 1613) := [(0, -1), (20, 5), (90, 320), (94, -40), (241, 160), (243, 320), (426, 1440), (698, 640), (700, 160), (781, 720), (782, 720), (934, 1440), (1004, 1440), (1047, -240), (1203, 1440), (1226, 560), (1227, 240), (1251, -60)]

def reductionPivot7826 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound7826 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4155).moment H =
      Integer.Sparse.eval reductionProjection7826 (momentVector H) := by
  have heq : reductionPivot7826 = (fun u v => (normalNode4155).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4155).moment H = injectiveMoment H reductionPivot7826 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4155).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7826 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7826 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 18, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7826 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2075, oldProjection1993, reductionProjection7824, reductionProjection293, reductionProjection281] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7826 (0 : Fin 5)) = canonicalInput10370.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2075 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10370 hH))).trans (oldProjectionSound2075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7826 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3660 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1993 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3660 hH))).trans (oldProjectionSound1993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7826 (2 : Fin 5)) = (normalNode4165).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7824 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7826 (3 : Fin 5)) = (normalNode4158).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection293 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7826 (4 : Fin 5)) = canonicalInput8144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection281 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7826 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8144 hH))).trans (reductionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4155).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7826 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4155).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7826 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 18, 2, 288] ![1, 20, 80, 720, 5] reductionProjection7826 ![oldProjection2075, oldProjection1993, reductionProjection7824, reductionProjection293, reductionProjection281]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7827 : Integer.Sparse (Fin 1613) := [(782, -1), (1003, -1), (1004, -1), (1015, -1)]

def reductionPivot7827 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 1, 1, -3]]

theorem reductionSound7827 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4495).moment H =
      Integer.Sparse.eval reductionProjection7827 (momentVector H) := by
  have heq : reductionPivot7827 = (fun u v => (normalNode4495).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4495).moment H = injectiveMoment H reductionPivot7827 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4495).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7827 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7827 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7827 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection590, oldProjection619, oldProjection616, oldProjection615] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7827 (0 : Fin 4)) = canonicalInput9438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7827 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7827 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9438 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7827 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node619⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7827 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection619 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7827 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7827 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7827 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7827 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7827 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7827 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection615 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7827 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4495).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7827 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4495).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7827 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7827 ![oldProjection590, oldProjection619, oldProjection616, oldProjection615]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7828 : Integer.Sparse (Fin 1613) := [(933, -1), (934, -1), (955, -1), (1024, -1)]

def reductionPivot7828 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![1, 1, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound7828 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4161).moment H =
      Integer.Sparse.eval reductionProjection7828 (momentVector H) := by
  have heq : reductionPivot7828 = (fun u v => (normalNode4161).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4161).moment H = injectiveMoment H reductionPivot7828 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4161).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7828 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7828 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7828 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection289, reductionProjection342, reductionProjection292, reductionProjection7801] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7828 (0 : Fin 4)) = canonicalInput10987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7828 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection289 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7828 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10987 hH))).trans (reductionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7828 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7828 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection342 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7828 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7828 (2 : Fin 4)) = canonicalInput8169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7828 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7828 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8169 hH))).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7828 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code933).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7828 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7801 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7828 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4161).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7828 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4161).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7828 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7828 ![reductionProjection289, reductionProjection342, reductionProjection292, reductionProjection7801]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7829 : Integer.Sparse (Fin 1613) := [(426, -1), (1186, -1), (1203, -1), (1205, -1)]

def reductionPivot7829 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 0, 2, -3]]

theorem reductionSound7829 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5527).moment H =
      Integer.Sparse.eval reductionProjection7829 (momentVector H) := by
  have heq : reductionPivot7829 = (fun u v => (normalNode5527).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5527).moment H = injectiveMoment H reductionPivot7829 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5527).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot7829 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7829 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7829 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection282, oldProjection473, reductionProjection223, oldProjection692] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7829 (0 : Fin 4)) = canonicalInput11119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7829 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection282 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7829 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11119 hH))).trans (reductionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7829 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4835 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7829 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7829 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4835 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7829 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1203).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7829 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7829 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7829 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4831 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7829 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection692 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7829 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4831 hH))).trans (oldProjectionSound692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5527).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7829 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5527).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7829 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7829 ![reductionProjection282, oldProjection473, reductionProjection223, oldProjection692]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7830 : Integer.Sparse (Fin 1613) := [(287, 9), (426, 27), (698, 2), (782, 9), (929, -18), (933, 9), (934, 9), (955, 9), (1003, 9), (1004, 9), (1015, 9), (1024, 9), (1186, 9), (1203, 9), (1205, 9), (1226, 2), (1227, -1)]

def reductionPivot7830 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound7830 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4156).moment H =
      Integer.Sparse.eval reductionProjection7830 (momentVector H) := by
  have heq : reductionPivot7830 = (fun u v => (normalNode4156).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4156).moment H = injectiveMoment H reductionPivot7830 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4156).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7830 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7830 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 18, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7830 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7827, reductionProjection2154, reductionProjection4994, reductionProjection7828, reductionProjection7829] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7830 (0 : Fin 5)) = canonicalInput10371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7827 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10371 hH))).trans (reductionSound7827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7830 (1 : Fin 5)) = canonicalInput8210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2154 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8210 hH))).trans (reductionSound2154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7830 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code929).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4994 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7830 (3 : Fin 5)) = (normalNode4161).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7828 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7830 (4 : Fin 5)) = canonicalInput8147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7829 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7830 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8147 hH))).trans (reductionSound7829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4156).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7830 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4156).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7830 (j : Fin 5)))
      1 18 18 1 ![2, 18, 1, 2, 2] ![9, 1, 18, 9, 9] reductionProjection7830 ![reductionProjection7827, reductionProjection2154, reductionProjection4994, reductionProjection7828, reductionProjection7829]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7831 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 20), (243, 80), (400, 720), (426, 2160), (704, 80), (763, 720), (913, 720), (928, -1440), (956, 720), (1005, 720), (1016, 720), (1139, 720), (1203, 720), (1205, 720), (1251, -35)]

def reductionPivot7831 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound7831 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4159).moment H =
      Integer.Sparse.eval reductionProjection7831 (momentVector H) := by
  have heq : reductionPivot7831 = (fun u v => (normalNode4159).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4159).moment H = injectiveMoment H reductionPivot7831 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4159).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7831 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7831 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 144, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7831 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5093, reductionProjection2703, reductionProjection283, reductionProjection3202, reductionProjection7807] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7831 (0 : Fin 5)) = canonicalInput10984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5093 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5093 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10984 hH))).trans (reductionSound5093 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7831 (1 : Fin 5)) = canonicalInput8260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2703 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8260 hH))).trans (reductionSound2703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7831 (2 : Fin 5)) = (normalNode4166).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection283 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7831 (3 : Fin 5)) = canonicalInput8152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8152 hH))).trans (reductionSound3202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7831 (4 : Fin 5)) = (normalNode4162).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7807 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7831 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4159).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7831 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4159).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7831 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 144, 1, 1440] ![1, 1, 10, 1440, 1] reductionProjection7831 ![reductionProjection5093, reductionProjection2703, reductionProjection283, reductionProjection3202, reductionProjection7807]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7832 : Integer.Sparse (Fin 1613) := [(90, -1), (243, -1), (698, 1), (700, -1), (913, -9), (934, -9), (1004, -9), (1226, -1)]

def reductionPivot7832 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 1, 1, -2], ![1, 2, -3, 0]]

theorem reductionSound7832 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4163).moment H =
      Integer.Sparse.eval reductionProjection7832 (momentVector H) := by
  have heq : reductionPivot7832 = (fun u v => (normalNode4163).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4163).moment H = injectiveMoment H reductionPivot7832 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4163).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot7832 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7832 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7832 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection951, oldProjection616, reductionProjection292, reductionProjection202] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7832 (0 : Fin 4)) = canonicalInput21733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7832 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection951 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7832 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21733 hH))).trans (oldProjectionSound951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7832 (1 : Fin 4)) = canonicalInput8956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7832 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7832 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8956 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7832 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code934).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7832 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection292 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7832 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7832 (3 : Fin 4)) = canonicalInput8153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7832 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7832 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8153 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4163).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7832 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4163).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7832 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection7832 ![oldProjection951, oldProjection616, reductionProjection292, reductionProjection202]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7833 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (241, -16), (243, -16), (658, -144), (757, -144), (1186, -144), (1223, 48), (1251, 1)]

def reductionPivot7833 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, 1, 1], ![0, -2, -1, 3], ![1, 1, -2, 0], ![1, 2, 1, -4]]

theorem reductionSound7833 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4168).moment H =
      Integer.Sparse.eval reductionProjection7833 (momentVector H) := by
  have heq : reductionPivot7833 = (fun u v => (normalNode4168).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4168).moment H = injectiveMoment H reductionPivot7833 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4168).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7833 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7833 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7833 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5989, oldProjection692, oldProjection1348, oldProjection586] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7833 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code658).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7833 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5989 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7833 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7833 (1 : Fin 4)) = canonicalInput8139.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7833 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection692 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7833 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8139 hH))).trans (oldProjectionSound692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7833 (2 : Fin 4)) = canonicalInput8187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7833 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1348 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7833 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8187 hH))).trans (oldProjectionSound1348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7833 (3 : Fin 4)) = canonicalInput8188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7833 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection586 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7833 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8188 hH))).trans (oldProjectionSound586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4168).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7833 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4168).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7833 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 1] ![288, 288, 2, 288] reductionProjection7833 ![reductionProjection5989, oldProjection692, oldProjection1348, oldProjection586]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7834 : Integer.Sparse (Fin 1613) := [(0, -4), (94, 65), (462, 720), (586, 720), (608, 720), (610, 720), (666, 1440), (668, 1440), (697, -480), (698, 320), (700, 80), (704, 80), (913, 720), (1005, 1440), (1055, -240), (1059, 80), (1125, 720), (1128, 720), (1139, 720), (1227, 80), (1251, -95)]

def reductionPivot7834 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound7834 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4169).moment H =
      Integer.Sparse.eval reductionProjection7834 (momentVector H) := by
  have heq : reductionPivot7834 = (fun u v => (normalNode4169).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4169).moment H = injectiveMoment H reductionPivot7834 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4169).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7834 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7834 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7834 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5249, reductionProjection7807, reductionProjection5442, oldProjection2241, oldProjection1994] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7834 (0 : Fin 5)) = canonicalInput5518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5249 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5518 hH))).trans (reductionSound5249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7834 (1 : Fin 5)) = (normalNode4162).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7807 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7834 (2 : Fin 5)) = canonicalInput8197.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5442 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8197 hH))).trans (reductionSound5442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7834 (3 : Fin 5)) = canonicalInput8213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2241 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8213 hH))).trans (oldProjectionSound2241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7834 (4 : Fin 5)) = canonicalInput8214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1994 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7834 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8214 hH))).trans (oldProjectionSound1994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4169).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7834 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4169).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7834 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 360] ![1, 1, 1, 1, 4] reductionProjection7834 ![reductionProjection5249, reductionProjection7807, reductionProjection5442, oldProjection2241, oldProjection1994]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7835 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -12), (241, 16), (243, 16), (397, 144), (400, 144), (423, 288), (426, 288), (437, 144), (631, 144), (698, 80), (700, 16), (775, 144), (1005, 144), (1058, -144), (1059, 16), (1203, 144), (1205, 288), (1226, 48), (1251, -11)]

def reductionPivot7835 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound7835 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4170).moment H =
      Integer.Sparse.eval reductionProjection7835 (momentVector H) := by
  have heq : reductionPivot7835 = (fun u v => (normalNode4170).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4170).moment H = injectiveMoment H reductionPivot7835 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4170).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7835 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7835 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7835 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5266, reductionProjection283, reductionProjection7369, reductionProjection2686, oldProjection1646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7835 (0 : Fin 5)) = canonicalInput5519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5266 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5519 hH))).trans (reductionSound5266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7835 (1 : Fin 5)) = (normalNode4166).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection283 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7835 (2 : Fin 5)) = canonicalInput8217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7369 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8217 hH))).trans (reductionSound7369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7835 (3 : Fin 5)) = canonicalInput8222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2686 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8222 hH))).trans (reductionSound2686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7835 (4 : Fin 5)) = canonicalInput8223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1646 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7835 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8223 hH))).trans (oldProjectionSound1646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4170).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7835 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4170).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7835 (j : Fin 5)))
      1 288 1440 5 ![1440, 144, 1440, 1440, 720] ![1, 10, 1, 1, 2] reductionProjection7835 ![reductionProjection5266, reductionProjection283, reductionProjection7369, reductionProjection2686, oldProjection1646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7836 : Integer.Sparse (Fin 1613) := [(1029, 1)]

theorem reductionSound7836 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1029).moment H =
      Integer.Sparse.eval reductionProjection7836 (momentVector H) := by
  have hc : coordinates (1029 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1029) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection7836, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection7837 : Integer.Sparse (Fin 1613) := [(90, -1), (559, -9), (659, -9), (698, 1), (700, -2), (1029, -9), (1059, -1)]

def reductionPivot7837 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 3, -2, -1], ![1, -1, 2, -2]]

theorem reductionSound7837 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4185).moment H =
      Integer.Sparse.eval reductionProjection7837 (momentVector H) := by
  have heq : reductionPivot7837 = (fun u v => (normalNode4185).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4185).moment H = injectiveMoment H reductionPivot7837 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4185).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot7837 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7837 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7837 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection843, reductionProjection7836, reductionProjection4777, oldProjection504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7837 (0 : Fin 4)) = canonicalInput20789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7837 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection843 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7837 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20789 hH))).trans (oldProjectionSound843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7837 (1 : Fin 4)) = canonicalInput8972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7837 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7836 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7837 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8972 hH))).trans (reductionSound7836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7837 (2 : Fin 4)) = canonicalInput8237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7837 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4777 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7837 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8237 hH))).trans (reductionSound4777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7837 (3 : Fin 4)) = canonicalInput8228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7837 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection504 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7837 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8228 hH))).trans (oldProjectionSound504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4185).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7837 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4185).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7837 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection7837 ![oldProjection843, reductionProjection7836, reductionProjection4777, oldProjection504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7838 : Integer.Sparse (Fin 1613) := [(0, -1), (90, 20), (94, 5), (559, 360), (602, 180), (644, 180), (659, 180), (666, 360), (697, -120), (698, 140), (700, 120), (704, 20), (789, 180), (795, 180), (803, 360), (806, 180), (1029, 180), (1050, -60), (1059, 120), (1187, 180), (1251, -10)]

def reductionPivot7838 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound7838 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode4171).moment H =
      Integer.Sparse.eval reductionProjection7838 (momentVector H) := by
  have heq : reductionPivot7838 = (fun u v => (normalNode4171).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4171).moment H = injectiveMoment H reductionPivot7838 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4171).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot7838 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot7838 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 720, 1440, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7838 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5253, reductionProjection7812, reductionProjection2024, oldProjection1962, reductionProjection7837] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7838 (0 : Fin 5)) = canonicalInput5520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5253 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5520 hH))).trans (reductionSound5253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7838 (1 : Fin 5)) = (normalNode4167).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7812 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7838 (2 : Fin 5)) = canonicalInput8220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2024 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8220 hH))).trans (reductionSound2024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7838 (3 : Fin 5)) = canonicalInput8226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1962 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1962 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8226 hH))).trans (oldProjectionSound1962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7838 (4 : Fin 5)) = canonicalInput8227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7837 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7838 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8227 hH))).trans (reductionSound7837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4171).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7838 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4171).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot7838 (j : Fin 5)))
      1 360 1440 4 ![1440, 144, 720, 1440, 18] ![1, 10, 2, 1, 80] reductionProjection7838 ![reductionProjection5253, reductionProjection7812, reductionProjection2024, oldProjection1962, reductionProjection7837]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection7839 : Integer.Sparse (Fin 1613) := [(274, -1), (287, -1), (298, -1), (933, -1)]

def reductionPivot7839 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 2, 1, -4]]

theorem reductionSound7839 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4172).moment H =
      Integer.Sparse.eval reductionProjection7839 (momentVector H) := by
  have heq : reductionPivot7839 = (fun u v => (normalNode4172).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4172).moment H = injectiveMoment H reductionPivot7839 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4172).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot7839 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot7839 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7839 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2201, reductionProjection7801, oldProjection449, oldProjection456] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot7839 (0 : Fin 4)) = canonicalInput5523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7839 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2201 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7839 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5523 hH))).trans (reductionSound2201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7839 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code933).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7839 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7801 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7839 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7839 (2 : Fin 4)) = canonicalInput8231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7839 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection449 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7839 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8231 hH))).trans (oldProjectionSound449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot7839 (3 : Fin 4)) = canonicalInput8234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot7839 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot7839 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8234 hH))).trans (oldProjectionSound456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4172).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7839 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4172).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot7839 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection7839 ![reductionProjection2201, reductionProjection7801, oldProjection449, oldProjection456]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical153
import NoFourMUBs.Step2.SOS.Canonical154
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical159
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical185
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical358
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions190
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions266
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions271
import NoFourMUBs.Step2.SOS.Reductions279
import NoFourMUBs.Step2.SOS.Reductions280
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions295
import NoFourMUBs.Step2.SOS.Reductions298
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical141
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical163
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical164
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical165
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical205
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical245
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical247
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical274
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical316
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9568 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -120), (20, 25), (72, -1200), (94, -10), (229, -480), (238, -240), (243, 480), (244, 80), (698, 400), (700, 720), (704, 160), (896, 720), (1058, -1680), (1059, 80), (1226, 160), (1250, 180), (1321, -960)]

def reductionPivot9568 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, -1, 0, 1], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9568 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5773).moment H =
      Integer.Sparse.eval reductionProjection9568 (momentVector H) := by
  have heq : reductionPivot9568 = (fun u v => (normalNode5773).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5773).moment H = injectiveMoment H reductionPivot9568 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5773).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9568 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9568 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9568 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8539, reductionProjection7724, reductionProjection1311, reductionProjection9567, reductionProjection1590] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9568 (0 : Fin 5)) = canonicalInput9790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8539 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9790 hH))).trans (reductionSound8539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9568 (1 : Fin 5)) = canonicalInput11845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7724 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11845 hH))).trans (reductionSound7724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9568 (2 : Fin 5)) = canonicalInput11859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1311 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11859 hH))).trans (reductionSound1311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9568 (3 : Fin 5)) = (normalNode5792).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9567 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9568 (4 : Fin 5)) = canonicalInput11862.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1590 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9568 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11862 hH))).trans (reductionSound1590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5773).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9568 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5773).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9568 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1440, 1440] ![1, 5, 1, 1, 1] reductionProjection9568 ![reductionProjection8539, reductionProjection7724, reductionProjection1311, reductionProjection9567, reductionProjection1590]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9569 : Integer.Sparse (Fin 1613) := [(19, 16), (20, 1), (94, 7), (243, -16), (700, -16), (701, -32), (704, -32), (1251, -6)]

def reductionPivot9569 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, -2, 3]]

theorem reductionSound9569 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10735).moment H =
      Integer.Sparse.eval reductionProjection9569 (momentVector H) := by
  have heq : reductionPivot9569 = (fun u v => (normalNode10735).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10735).moment H = injectiveMoment H reductionPivot9569 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10735).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot9569 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9569 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9569 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection908, reductionProjection4715, reductionProjection4715, oldProjection157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9569 (0 : Fin 4)) = canonicalInput22472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9569 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection908 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9569 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22472 hH))).trans (oldProjectionSound908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9569 (1 : Fin 4)) = canonicalInput31829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9569 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4715 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9569 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31829 hH))).trans (reductionSound4715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9569 (2 : Fin 4)) = canonicalInput31833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9569 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4715 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9569 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31833 hH))).trans (reductionSound4715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9569 (3 : Fin 4)) = canonicalInput31834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9569 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9569 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31834 hH))).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10735).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9569 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10735).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9569 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 24] ![2, 2, 2, 12] reductionProjection9569 ![oldProjection908, reductionProjection4715, reductionProjection4715, oldProjection157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9570 : Integer.Sparse (Fin 1613) := [(10, 24), (19, 10), (94, -3), (229, 48), (244, -16), (701, -16), (704, -16), (1251, -1), (1259, -72), (1321, 24)]

def reductionPivot9570 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound9570 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5794).moment H =
      Integer.Sparse.eval reductionProjection9570 (momentVector H) := by
  have heq : reductionPivot9570 = (fun u v => (normalNode5794).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5794).moment H = injectiveMoment H reductionPivot9570 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5794).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9570 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9570 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9570 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4715, reductionProjection1504, reductionProjection7691, reductionProjection9003] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9570 (0 : Fin 4)) = canonicalInput9942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9570 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4715 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9570 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9942 hH))).trans (reductionSound4715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9570 (1 : Fin 4)) = canonicalInput11879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9570 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9570 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11879 hH))).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9570 (2 : Fin 4)) = canonicalInput11943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9570 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7691 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9570 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7691 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11943 hH))).trans (reductionSound7691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9570 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1259).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9570 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9003 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9570 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5794).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9570 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5794).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9570 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 1] ![1, 1, 1, 144] reductionProjection9570 ![reductionProjection4715, reductionProjection1504, reductionProjection7691, reductionProjection9003]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9571 : Integer.Sparse (Fin 1613) := [(10, -36), (19, -18), (20, 1), (94, 3), (229, -96), (238, -24), (243, 16), (244, 24), (700, 16), (701, 32), (704, 32), (718, 36), (1250, 3), (1251, 5), (1259, 72), (1321, -48)]

def reductionPivot9571 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, -1, 0, 1], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound9571 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode5774).moment H =
      Integer.Sparse.eval reductionProjection9571 (momentVector H) := by
  have heq : reductionPivot9571 = (fun u v => (normalNode5774).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5774).moment H = injectiveMoment H reductionPivot9571 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5774).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9571 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9571 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9571 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9569, reductionProjection7692, reductionProjection1505, reductionProjection9570, reductionProjection9570] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9571 (0 : Fin 5)) = canonicalInput9792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9569 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9569 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9792 hH))).trans (reductionSound9569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9571 (1 : Fin 5)) = canonicalInput11846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7692 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11846 hH))).trans (reductionSound7692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9571 (2 : Fin 5)) = canonicalInput11860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1505 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11860 hH))).trans (reductionSound1505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9571 (3 : Fin 5)) = (normalNode5794).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9570 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9570 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9571 (4 : Fin 5)) = canonicalInput11863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9570 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9571 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9570 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11863 hH))).trans (reductionSound9570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5774).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9571 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5774).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9571 (j : Fin 5)))
      1 72 288 4 ![288, 144, 288, 144, 144] ![1, 2, 1, 2, 2] reductionProjection9571 ![reductionProjection9569, reductionProjection7692, reductionProjection1505, reductionProjection9570, reductionProjection9570]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9572 : Integer.Sparse (Fin 1613) := [(0, -8), (3, -20), (19, -160), (20, 25), (93, 120), (94, 105), (108, 80), (238, -480), (240, -240), (241, 80), (243, 160), (247, 160), (698, 640), (700, 160), (704, 80), (1047, -480), (1055, -480), (1057, -240), (1058, -1680), (1059, 160), (1226, 160), (1227, 80), (1249, 720), (1250, 420), (1251, -100), (1319, -240), (1321, -480), (1388, -240)]

def reductionPivot9572 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound9572 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5776).moment H =
      Integer.Sparse.eval reductionProjection9572 (momentVector H) := by
  have heq : reductionPivot9572 = (fun u v => (normalNode5776).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5776).moment H = injectiveMoment H reductionPivot9572 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5776).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9572 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9572 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9572 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8571, reductionProjection7705, reductionProjection9556, oldProjection2336, oldProjection2338] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9572 (0 : Fin 5)) = canonicalInput9808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8571 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8571 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9808 hH))).trans (reductionSound8571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9572 (1 : Fin 5)) = canonicalInput11849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7705 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7705 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11849 hH))).trans (reductionSound7705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9572 (2 : Fin 5)) = canonicalInput11867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9556 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9556 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11867 hH))).trans (reductionSound9556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9572 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2336⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2336 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9572 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5254 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2338 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9572 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5254 hH))).trans (oldProjectionSound2338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5776).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9572 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5776).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9572 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection9572 ![reductionProjection8571, reductionProjection7705, reductionProjection9556, oldProjection2336, oldProjection2338]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9573 : Integer.Sparse (Fin 1613) := [(0, 12), (19, -120), (20, 5), (94, 170), (241, 240), (243, 80), (247, 240), (546, 720), (698, 800), (1050, -480), (1055, -1440), (1058, -960), (1059, 80), (1226, 80), (1227, 400), (1250, 420), (1251, -235), (1321, -240), (1388, -480), (1389, -240)]

def reductionPivot9573 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound9573 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5777).moment H =
      Integer.Sparse.eval reductionProjection9573 (momentVector H) := by
  have heq : reductionPivot9573 = (fun u v => (normalNode5777).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5777).moment H = injectiveMoment H reductionPivot9573 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5777).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9573 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9573 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9573 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2156, reductionProjection940, oldProjection1521, reductionProjection1326, reductionProjection1294] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9573 (0 : Fin 5)) = canonicalInput9812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2156 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9812 hH))).trans (reductionSound2156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9573 (1 : Fin 5)) = canonicalInput11850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection940 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11850 hH))).trans (reductionSound940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9573 (2 : Fin 5)) = canonicalInput11868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1521 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11868 hH))).trans (oldProjectionSound1521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9573 (3 : Fin 5)) = (normalNode5801).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9573 (4 : Fin 5)) = canonicalInput11869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1294 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9573 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11869 hH))).trans (reductionSound1294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5777).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9573 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5777).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9573 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 1440, 720] ![5, 1, 1, 1, 2] reductionProjection9573 ![reductionProjection2156, reductionProjection940, oldProjection1521, reductionProjection1326, reductionProjection1294]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9574 : Integer.Sparse (Fin 1613) := [(0, 2), (3, -20), (19, -200), (20, 20), (93, 180), (94, 175), (108, 80), (240, -240), (247, 160), (694, -240), (697, -240), (698, 160), (704, 80), (1055, -240), (1227, 80), (1250, 480), (1251, -75), (1252, 720), (1319, -480), (1321, -480), (1388, -480), (1389, -480)]

def reductionPivot9574 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound9574 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5780).moment H =
      Integer.Sparse.eval reductionProjection9574 (momentVector H) := by
  have heq : reductionPivot9574 = (fun u v => (normalNode5780).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5780).moment H = injectiveMoment H reductionPivot9574 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5780).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9574 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9574 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9574 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8617, reductionProjection1425, oldProjection2338, oldProjection2222, oldProjection2342] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9574 (0 : Fin 5)) = canonicalInput9859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8617 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9859 hH))).trans (reductionSound8617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9574 (1 : Fin 5)) = (normalNode5767).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1425 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9574 (2 : Fin 5)) = canonicalInput11892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2338 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11892 hH))).trans (oldProjectionSound2338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9574 (3 : Fin 5)) = canonicalInput11905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2222 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11905 hH))).trans (oldProjectionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9574 (4 : Fin 5)) = canonicalInput11906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2342 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9574 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11906 hH))).trans (oldProjectionSound2342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5780).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9574 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5780).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9574 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 1440] ![1, 1, 1, 5, 1] reductionProjection9574 ![reductionProjection8617, reductionProjection1425, oldProjection2338, oldProjection2222, oldProjection2342]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9575 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (72, 240), (93, -30), (1044, 120), (1050, 120), (1250, -30), (1251, -20), (1321, 240)]

def reductionPivot9575 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound9575 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5819).moment H =
      Integer.Sparse.eval reductionProjection9575 (momentVector H) := by
  have heq : reductionPivot9575 = (fun u v => (normalNode5819).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5819).moment H = injectiveMoment H reductionPivot9575 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5819).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9575 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9575 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 360, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9575 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1021, oldProjection1027, oldProjection1012, oldProjection1012] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9575 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5232 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9575 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1021 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9575 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5232 hH))).trans (oldProjectionSound1021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9575 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5299 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9575 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1027 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9575 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1027 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5299 hH))).trans (oldProjectionSound1027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9575 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5301 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9575 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9575 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5301 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9575 (3 : Fin 4)) = canonicalInput11942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9575 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9575 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11942 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5819).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9575 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5819).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9575 (j : Fin 4)))
      2 720 720 2 ![72, 360, 144, 144] ![10, 2, 5, 5] reductionProjection9575 ![oldProjection1021, oldProjection1027, oldProjection1012, oldProjection1012]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9576 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -4), (19, -32), (20, 7), (72, -240), (93, 24), (94, 2), (105, 16), (229, -96), (240, -48), (241, 16), (243, 80), (698, 64), (700, 128), (704, 32), (914, 144), (1044, -96), (1047, -48), (1050, -96), (1055, -48), (1058, -192), (1059, 16), (1060, -48), (1250, 36), (1251, 12), (1321, -192)]

def reductionPivot9576 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound9576 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5781).moment H =
      Integer.Sparse.eval reductionProjection9576 (momentVector H) := by
  have heq : reductionPivot9576 = (fun u v => (normalNode5781).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5781).moment H = injectiveMoment H reductionPivot9576 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5781).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9576 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9576 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9576 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8594, reductionProjection1431, oldProjection2336, reductionProjection9279, reductionProjection9575] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9576 (0 : Fin 5)) = canonicalInput9861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8594 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9861 hH))).trans (reductionSound8594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9576 (1 : Fin 5)) = (normalNode5770).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1431 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9576 (2 : Fin 5)) = canonicalInput11894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2336 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11894 hH))).trans (oldProjectionSound2336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9576 (3 : Fin 5)) = canonicalInput11909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9279 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11909 hH))).trans (reductionSound9279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9576 (4 : Fin 5)) = (normalNode5819).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9575 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9576 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5781).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9576 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5781).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9576 (j : Fin 5)))
      1 288 1440 5 ![1440, 288, 1440, 1440, 720] ![1, 5, 1, 1, 2] reductionProjection9576 ![reductionProjection8594, reductionProjection1431, oldProjection2336, reductionProjection9279, reductionProjection9575]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9577 : Integer.Sparse (Fin 1613) := [(10, 48), (19, -4), (20, 4), (72, 48), (94, 5), (227, 48), (1039, 48), (1251, 1), (1259, -144), (1292, 48), (1321, 48)]

def reductionPivot9577 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, 4, -4], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound9577 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5820).moment H =
      Integer.Sparse.eval reductionProjection9577 (momentVector H) := by
  have heq : reductionPivot9577 = (fun u v => (normalNode5820).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5820).moment H = injectiveMoment H reductionPivot9577 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5820).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9577 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9577 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9577 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8629, oldProjection1012, reductionProjection8951, reductionProjection9003] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9577 (0 : Fin 4)) = canonicalInput11843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9577 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8629 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9577 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11843 hH))).trans (reductionSound8629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9577 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5301 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9577 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9577 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5301 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9577 (2 : Fin 4)) = canonicalInput11944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9577 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8951 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9577 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11944 hH))).trans (reductionSound8951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9577 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1259).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9577 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9003 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9577 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5820).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9577 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5820).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9577 (j : Fin 4)))
      2 288 288 2 ![72, 144, 72, 1] ![4, 2, 4, 288] reductionProjection9577 ![reductionProjection8629, oldProjection1012, reductionProjection8951, reductionProjection9003]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9578 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (4, 5), (10, -720), (19, -160), (72, -480), (93, 60), (94, 45), (106, 160), (227, -480), (229, -960), (240, -480), (243, 160), (244, 480), (246, 160), (700, 160), (701, 320), (704, 320), (719, 1440), (1039, -480), (1058, -480), (1060, -480), (1250, 60), (1251, 35), (1259, 720), (1292, -240), (1321, -480)]

def reductionPivot9578 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound9578 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5782).moment H =
      Integer.Sparse.eval reductionProjection9578 (momentVector H) := by
  have heq : reductionPivot9578 = (fun u v => (normalNode5782).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5782).moment H = injectiveMoment H reductionPivot9578 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5782).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9578 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9578 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9578 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8626, reductionProjection9564, reductionProjection1502, reductionProjection9263, reductionProjection9577] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9578 (0 : Fin 5)) = canonicalInput9863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8626 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9863 hH))).trans (reductionSound8626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9578 (1 : Fin 5)) = (normalNode5771).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9564 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9564 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9578 (2 : Fin 5)) = canonicalInput11895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1502 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11895 hH))).trans (reductionSound1502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9578 (3 : Fin 5)) = canonicalInput11911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9263 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11911 hH))).trans (reductionSound9263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9578 (4 : Fin 5)) = canonicalInput11912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9577 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9578 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11912 hH))).trans (reductionSound9577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5782).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9578 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5782).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9578 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 288, 288] ![5, 5, 1, 5, 5] reductionProjection9578 ![reductionProjection8626, reductionProjection9564, reductionProjection1502, reductionProjection9263, reductionProjection9577]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9579 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (20, -5), (94, -25), (108, -80), (247, -80), (1047, 240), (1055, 240), (1058, 240), (1249, -720), (1250, -60), (1251, -15), (1319, 240), (1388, 240)]

def reductionPivot9579 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 0, 2, -3]]

theorem reductionSound9579 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5784).moment H =
      Integer.Sparse.eval reductionProjection9579 (momentVector H) := by
  have heq : reductionPivot9579 = (fun u v => (normalNode5784).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5784).moment H = injectiveMoment H reductionPivot9579 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5784).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9579 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9579 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9579 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1367, oldProjection714, oldProjection1319, oldProjection1368] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9579 (0 : Fin 4)) = canonicalInput9870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9579 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1367 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9579 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9870 hH))).trans (oldProjectionSound1367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9579 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5244 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9579 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection714 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9579 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5244 hH))).trans (oldProjectionSound714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9579 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5272 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9579 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1319 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9579 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5272 hH))).trans (oldProjectionSound1319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9579 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5276 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9579 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1368 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9579 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5276 hH))).trans (oldProjectionSound1368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5784).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9579 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5784).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9579 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 3, 720] ![2, 1440, 480, 2] reductionProjection9579 ![oldProjection1367, oldProjection714, oldProjection1319, oldProjection1368]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9580 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 8), (94, -8), (108, -16), (247, -32), (694, 48), (1055, 48), (1250, -24), (1251, -1), (1252, -144), (1319, 48), (1388, 48)]

def reductionPivot9580 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 0, 1, -2]]

theorem reductionSound9580 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5785).moment H =
      Integer.Sparse.eval reductionProjection9580 (momentVector H) := by
  have heq : reductionPivot9580 = (fun u v => (normalNode5785).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5785).moment H = injectiveMoment H reductionPivot9580 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5785).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9580 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9580 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9580 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1371, oldProjection718, oldProjection1370, oldProjection1368] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9580 (0 : Fin 4)) = canonicalInput9871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9580 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1371 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9580 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1371 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9871 hH))).trans (oldProjectionSound1371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9580 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node718⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9580 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection718 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9580 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9580 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5273 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9580 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1370 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9580 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5273 hH))).trans (oldProjectionSound1370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9580 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5277 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9580 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1368 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9580 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5277 hH))).trans (oldProjectionSound1368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5785).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9580 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5785).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9580 (j : Fin 4)))
      2 288 1440 10 ![720, 1, 720, 720] ![2, 1440, 2, 2] reductionProjection9580 ![oldProjection1371, oldProjection718, oldProjection1370, oldProjection1368]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9581 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 20), (19, 100), (20, -20), (93, -120), (94, -40), (240, 240), (698, -80), (704, -80), (1250, -180), (1251, -35), (1321, 480)]

def reductionPivot9581 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound9581 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5786).moment H =
      Integer.Sparse.eval reductionProjection9581 (momentVector H) := by
  have heq : reductionPivot9581 = (fun u v => (normalNode5786).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5786).moment H = injectiveMoment H reductionPivot9581 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5786).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9581 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9581 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9581 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1218, oldProjection1274, oldProjection1219, oldProjection1205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9581 (0 : Fin 4)) = canonicalInput9872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9581 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1218 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9581 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9872 hH))).trans (oldProjectionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9581 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5246 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9581 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9581 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5246 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9581 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5274 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9581 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1219 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9581 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5274 hH))).trans (oldProjectionSound1219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9581 (3 : Fin 4)) = canonicalInput11915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9581 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1205 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9581 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11915 hH))).trans (oldProjectionSound1205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5786).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9581 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5786).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9581 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 720, 720] ![2, 20, 2, 2] reductionProjection9581 ![oldProjection1218, oldProjection1274, oldProjection1219, oldProjection1205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9582 : Integer.Sparse (Fin 1613) := [(0, 12), (19, -100), (20, 10), (81, -480), (94, 145), (197, 720), (229, -240), (241, 80), (247, 160), (541, 720), (546, 1440), (697, -240), (698, 720), (704, 80), (1055, -720), (1058, -960), (1059, 80), (1227, 560), (1250, 240), (1251, -205), (1321, -720), (1388, -240), (1389, -960)]

def reductionPivot9582 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]

theorem reductionSound9582 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5787).moment H =
      Integer.Sparse.eval reductionProjection9582 (momentVector H) := by
  have heq : reductionPivot9582 = (fun u v => (normalNode5787).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5787).moment H = injectiveMoment H reductionPivot9582 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5787).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9582 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9582 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9582 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8613, reductionProjection1326, reductionProjection1326, oldProjection2233, oldProjection2346] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9582 (0 : Fin 5)) = canonicalInput9907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8613 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9907 hH))).trans (reductionSound8613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9582 (1 : Fin 5)) = (normalNode5801).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9582 (2 : Fin 5)) = canonicalInput11920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11920 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9582 (3 : Fin 5)) = canonicalInput11927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2233 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11927 hH))).trans (oldProjectionSound2233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9582 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2346⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2346 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9582 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5787).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9582 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5787).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9582 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 360] ![1, 1, 1, 1, 4] reductionProjection9582 ![reductionProjection8613, reductionProjection1326, reductionProjection1326, oldProjection2233, oldProjection2346]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9583 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 100), (94, -15), (243, -160), (244, -80), (698, -80), (700, -320), (701, -80), (704, -160), (1251, -40)]

def reductionPivot9583 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -2, -2, 3]]

theorem reductionSound9583 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11127).moment H =
      Integer.Sparse.eval reductionProjection9583 (momentVector H) := by
  have heq : reductionPivot9583 = (fun u v => (normalNode11127).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11127).moment H = injectiveMoment H reductionPivot9583 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11127).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9583 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9583 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9583 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1062, reductionProjection4715, oldProjection1072, oldProjection937] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9583 (0 : Fin 4)) = canonicalInput22922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9583 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9583 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22922 hH))).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9583 (1 : Fin 4)) = canonicalInput22785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9583 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4715 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9583 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22785 hH))).trans (reductionSound4715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9583 (2 : Fin 4)) = canonicalInput22783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9583 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1072 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9583 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22783 hH))).trans (oldProjectionSound1072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9583 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7871 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9583 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection937 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9583 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection937 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7871 hH))).trans (oldProjectionSound937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11127).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9583 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11127).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9583 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 144, 720] ![10, 10, 10, 2] reductionProjection9583 ![oldProjection1062, reductionProjection4715, oldProjection1072, oldProjection937]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9584 : Integer.Sparse (Fin 1613) := [(72, 48), (94, 5), (1251, 1), (1259, -72), (1270, -72), (1321, 48)]

def reductionPivot9584 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, -1, -1, 1]]

theorem reductionSound9584 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5826).moment H =
      Integer.Sparse.eval reductionProjection9584 (momentVector H) := by
  have heq : reductionPivot9584 = (fun u v => (normalNode5826).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5826).moment H = injectiveMoment H reductionPivot9584 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5826).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9584 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9584 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9584 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection720, reductionProjection9003, oldProjection1012, oldProjection1012] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9584 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node720⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9584 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection720 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9584 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9584 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1259).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9584 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9003 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9584 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9584 (2 : Fin 4)) = canonicalInput11942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9584 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9584 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11942 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9584 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5301 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9584 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9584 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5301 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5826).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9584 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5826).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9584 (j : Fin 4)))
      2 144 144 2 ![1, 1, 144, 144] ![144, 144, 1, 1] reductionProjection9584 ![oldProjection720, reductionProjection9003, oldProjection1012, oldProjection1012]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9585 : Integer.Sparse (Fin 1613) := [(0, -1), (10, -48), (19, -36), (20, 5), (72, -336), (81, -96), (94, -1), (229, -192), (243, 64), (244, 32), (698, 64), (700, 192), (701, 32), (704, 64), (1058, -192), (1250, 12), (1251, 23), (1259, 144), (1270, 144), (1321, -288), (1389, -48)]

def reductionPivot9585 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound9585 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5788).moment H =
      Integer.Sparse.eval reductionProjection9585 (momentVector H) := by
  have heq : reductionPivot9585 = (fun u v => (normalNode5788).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5788).moment H = injectiveMoment H reductionPivot9585 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5788).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9585 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9585 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9585 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9583, reductionProjection9567, reductionProjection9565, reductionProjection9010, reductionProjection9584] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9585 (0 : Fin 5)) = canonicalInput9909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9583 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9909 hH))).trans (reductionSound9583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9585 (1 : Fin 5)) = canonicalInput11870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9567 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11870 hH))).trans (reductionSound9567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9585 (2 : Fin 5)) = canonicalInput11922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9565 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9565 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11922 hH))).trans (reductionSound9565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9585 (3 : Fin 5)) = canonicalInput11928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9010 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11928 hH))).trans (reductionSound9010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9585 (4 : Fin 5)) = (normalNode5826).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9584 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9585 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5788).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9585 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5788).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9585 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 288, 144] ![1, 1, 1, 5, 10] reductionProjection9585 ![reductionProjection9583, reductionProjection9567, reductionProjection9565, reductionProjection9010, reductionProjection9584]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9586 : Integer.Sparse (Fin 1613) := [(4, 1), (17, 12), (20, -1), (93, 12), (94, -1), (1251, 1), (1292, -48)]

def reductionPivot9586 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-3, 2, -2, 3], ![4, -1, 1, -4]]

theorem reductionSound9586 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9707).moment H =
      Integer.Sparse.eval reductionProjection9586 (momentVector H) := by
  have heq : reductionPivot9586 = (fun u v => (normalNode9707).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9707).moment H = injectiveMoment H reductionPivot9586 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9707).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9707).entries)).symm
  have hshape : reductionPivot9586 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9586 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9586 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection6841, reductionProjection6576, oldProjection277] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9586 (0 : Fin 3)) = canonicalInput17990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9586 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9586 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17990 hH))).trans (reductionSound6841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9586 (1 : Fin 3)) = canonicalInput26656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9586 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6576 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9586 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26656 hH))).trans (reductionSound6576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9586 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8799 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9586 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection277 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9586 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8799 hH))).trans (oldProjectionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9707).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9586 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9707).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9586 (j : Fin 3)))
      3 144 144 3 ![1, 48, 48] ![144, 3, 3] reductionProjection9586 ![reductionProjection6841, reductionProjection6576, oldProjection277]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9587 : Integer.Sparse (Fin 1613) := [(227, -1), (1292, -1), (1321, -1)]

def reductionPivot9587 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![-2, 2, -2, 2], ![4, -1, 1, -4]]

theorem reductionSound9587 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7414).moment H =
      Integer.Sparse.eval reductionProjection9587 (momentVector H) := by
  have heq : reductionPivot9587 = (fun u v => (normalNode7414).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7414).moment H = injectiveMoment H reductionPivot9587 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7414).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7414).entries)).symm
  have hshape : reductionPivot9587 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9587 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9587 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1693, reductionProjection6841, oldProjection260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9587 (0 : Fin 3)) = canonicalInput4646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9587 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1693 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9587 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4646 hH))).trans (reductionSound1693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9587 (1 : Fin 3)) = canonicalInput17990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9587 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9587 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17990 hH))).trans (reductionSound6841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9587 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9587 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection260 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9587 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6574 hH))).trans (oldProjectionSound260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7414).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9587 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7414).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9587 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9587 ![reductionProjection1693, reductionProjection6841, oldProjection260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9588 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (4, -5), (17, -60), (19, -40), (93, -120), (94, 5), (227, 480), (233, 240), (1250, -60), (1251, -5), (1292, 480), (1321, 480)]

def reductionPivot9588 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 4, -4]]

theorem reductionSound9588 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5812).moment H =
      Integer.Sparse.eval reductionProjection9588 (momentVector H) := by
  have heq : reductionPivot9588 = (fun u v => (normalNode5812).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5812).moment H = injectiveMoment H reductionPivot9588 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5812).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9588 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9588 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9588 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9586, reductionProjection8930, reductionProjection9587, oldProjection1205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9588 (0 : Fin 4)) = canonicalInput11822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9588 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9586 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9588 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11822 hH))).trans (reductionSound9586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9588 (1 : Fin 4)) = canonicalInput11885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9588 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8930 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9588 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11885 hH))).trans (reductionSound8930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9588 (2 : Fin 4)) = canonicalInput11914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9588 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9587 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9588 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11914 hH))).trans (reductionSound9587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9588 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5275 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9588 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1205 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9588 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5275 hH))).trans (oldProjectionSound1205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5812).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9588 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5812).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9588 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 3, 720] ![10, 10, 480, 2] reductionProjection9588 ![reductionProjection9586, reductionProjection8930, reductionProjection9587, oldProjection1205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9589 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -80), (4, 5), (17, 60), (19, -260), (20, 30), (93, 240), (94, 70), (104, 80), (227, -480), (229, -1200), (233, -240), (240, -480), (241, 80), (243, 160), (698, 160), (704, 480), (728, 720), (1042, -240), (1047, -480), (1055, -240), (1058, -960), (1060, -960), (1250, 180), (1251, 40), (1292, -480), (1321, -960)]

def reductionPivot9589 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound9589 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5795).moment H =
      Integer.Sparse.eval reductionProjection9589 (momentVector H) := by
  have heq : reductionPivot9589 = (fun u v => (normalNode5795).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5795).moment H = injectiveMoment H reductionPivot9589 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5795).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9589 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9589 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 6, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9589 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2853, reductionProjection1502, reductionProjection1502, reductionProjection9281, reductionProjection9588] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9589 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4514 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2853 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4514 hH))).trans (oldProjectionSound2853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9589 (1 : Fin 5)) = (normalNode5783).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1502 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9589 (2 : Fin 5)) = canonicalInput11888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1502 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11888 hH))).trans (reductionSound1502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9589 (3 : Fin 5)) = canonicalInput11896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9281 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11896 hH))).trans (reductionSound9281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9589 (4 : Fin 5)) = (normalNode5812).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9589 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5795).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9589 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5795).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9589 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 6, 1440] ![5, 1, 1, 240, 1] reductionProjection9589 ![oldProjection2853, reductionProjection1502, reductionProjection1502, reductionProjection9281, reductionProjection9588]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9590 : Integer.Sparse (Fin 1613) := [(20, 1), (93, 12), (94, -2), (1251, 1), (1290, -48), (1319, -48)]

def reductionPivot9590 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 1, -1], ![3, -1, 1, -3], ![-3, 2, -2, 3]]

theorem reductionSound9590 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11188).moment H =
      Integer.Sparse.eval reductionProjection9590 (momentVector H) := by
  have heq : reductionPivot9590 = (fun u v => (normalNode11188).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11188).moment H = injectiveMoment H reductionPivot9590 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11188).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11188).entries)).symm
  have hshape : reductionPivot9590 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9590 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9590 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection277, oldProjection258, reductionProjection6517] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9590 (0 : Fin 3)) = canonicalInput26917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9590 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection277 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9590 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26917 hH))).trans (oldProjectionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9590 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10135 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9590 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9590 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10135 hH))).trans (oldProjectionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9590 (2 : Fin 3)) = canonicalInput33352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9590 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9590 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33352 hH))).trans (reductionSound6517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11188).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9590 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11188).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9590 (j : Fin 3)))
      3 144 144 3 ![48, 1, 1] ![3, 144, 144] reductionProjection9590 ![oldProjection277, oldProjection258, reductionProjection6517]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9591 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (93, -60), (94, 5), (1085, -360), (1250, -60), (1251, 5), (1290, 120), (1319, 240), (1321, 120), (1388, 120)]

def reductionPivot9591 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, -1, 3, -3]]

theorem reductionSound9591 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5813).moment H =
      Integer.Sparse.eval reductionProjection9591 (momentVector H) := by
  have heq : reductionPivot9591 = (fun u v => (normalNode5813).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5813).moment H = injectiveMoment H reductionPivot9591 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5813).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9591 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9591 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9591 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9590, reductionProjection6854, oldProjection1205, oldProjection1368] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9591 (0 : Fin 4)) = canonicalInput11823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9591 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9590 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9591 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11823 hH))).trans (reductionSound9590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9591 (1 : Fin 4)) = canonicalInput11886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9591 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6854 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9591 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11886 hH))).trans (reductionSound6854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9591 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5275 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9591 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1205 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9591 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5275 hH))).trans (oldProjectionSound1205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9591 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5276 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9591 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1368 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9591 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5276 hH))).trans (oldProjectionSound1368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5813).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9591 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5813).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9591 (j : Fin 4)))
      2 720 720 2 ![144, 1, 720, 720] ![5, 720, 1, 1] reductionProjection9591 ![reductionProjection9590, reductionProjection6854, oldProjection1205, oldProjection1368]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9592 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -32), (20, 5), (33, -48), (93, 24), (94, 24), (108, 48), (241, 16), (247, 64), (694, -144), (698, 32), (1047, -192), (1055, -192), (1058, -144), (1085, 144), (1127, 144), (1249, 288), (1250, 60), (1290, -48), (1319, -192), (1321, -48), (1388, -144)]

def reductionPivot9592 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 0, 2, -3]]

theorem reductionSound9592 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5796).moment H =
      Integer.Sparse.eval reductionProjection9592 (momentVector H) := by
  have heq : reductionPivot9592 = (fun u v => (normalNode5796).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5796).moment H = injectiveMoment H reductionPivot9592 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5796).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9592 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9592 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9592 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2858, reductionProjection9579, reductionProjection9579, reductionProjection8973, reductionProjection9591] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9592 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4515 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2858 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2858 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4515 hH))).trans (oldProjectionSound2858 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9592 (1 : Fin 5)) = (normalNode5784).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9579 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9592 (2 : Fin 5)) = canonicalInput11889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9579 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11889 hH))).trans (reductionSound9579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9592 (3 : Fin 5)) = canonicalInput11897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8973 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11897 hH))).trans (reductionSound8973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9592 (4 : Fin 5)) = (normalNode5813).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9591 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9592 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5796).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9592 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5796).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9592 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 1440, 720] ![1, 1, 1, 1, 2] reductionProjection9592 ![oldProjection2858, reductionProjection9579, reductionProjection9579, reductionProjection8973, reductionProjection9591]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9593 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 12), (94, -17), (108, -16), (247, -48), (694, 48), (1055, 48), (1250, -12), (1251, 4)]

def reductionPivot9593 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, 2, -2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -2, -1, 2]]

theorem reductionSound9593 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11186).moment H =
      Integer.Sparse.eval reductionProjection9593 (momentVector H) := by
  have heq : reductionPivot9593 = (fun u v => (normalNode11186).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11186).moment H = injectiveMoment H reductionPivot9593 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11186).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9593 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9593 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9593 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1362, oldProjection1370, oldProjection1261, oldProjection1371] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9593 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7930 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9593 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1362 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9593 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7930 hH))).trans (oldProjectionSound1362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9593 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9593 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1370 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9593 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9593 (2 : Fin 4)) = canonicalInput23406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9593 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1261 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9593 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23406 hH))).trans (oldProjectionSound1261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9593 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1371⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9593 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1371 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9593 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1371 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11186).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9593 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11186).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9593 (j : Fin 4)))
      2 288 1440 10 ![360, 720, 720, 720] ![4, 2, 2, 2] reductionProjection9593 ![oldProjection1362, oldProjection1370, oldProjection1261, oldProjection1371]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9594 : Integer.Sparse (Fin 1613) := [(225, -1), (1319, -2)]

def reductionPivot9594 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![2, -1, 1, -2], ![2, -1, 1, -2], ![-3, 2, -2, 3]]

theorem reductionSound9594 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode11221).moment H =
      Integer.Sparse.eval reductionProjection9594 (momentVector H) := by
  have heq : reductionPivot9594 = (fun u v => (normalNode11221).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11221).moment H = injectiveMoment H reductionPivot9594 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11221).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11221).entries)).symm
  have hshape : reductionPivot9594 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9594 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9594 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection258, oldProjection258, reductionProjection1688] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9594 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10135 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9594 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9594 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10135 hH))).trans (oldProjectionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9594 (1 : Fin 3)) = canonicalInput34262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9594 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9594 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34262 hH))).trans (oldProjectionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9594 (2 : Fin 3)) = canonicalInput34263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9594 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9594 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34263 hH))).trans (reductionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11221).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9594 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11221).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9594 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9594 ![oldProjection258, oldProjection258, reductionProjection1688]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9595 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (225, 120), (1250, -60), (1251, 10), (1256, -360), (1319, 480), (1388, 240)]

def reductionPivot9595 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, -1, 2, -2]]

theorem reductionSound9595 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5814).moment H =
      Integer.Sparse.eval reductionProjection9595 (momentVector H) := by
  have heq : reductionPivot9595 = (fun u v => (normalNode5814).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5814).moment H = injectiveMoment H reductionPivot9595 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5814).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9595 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9595 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9595 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9594, reductionProjection9460, oldProjection1368, oldProjection1368] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9595 (0 : Fin 4)) = canonicalInput11824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9595 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9594 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9595 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11824 hH))).trans (reductionSound9594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9595 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1256).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9595 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9460 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9595 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9595 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5276 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9595 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1368 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9595 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5276 hH))).trans (oldProjectionSound1368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9595 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5277 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9595 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1368 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9595 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5277 hH))).trans (oldProjectionSound1368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5814).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9595 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5814).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9595 (j : Fin 4)))
      2 720 720 2 ![3, 1, 720, 720] ![240, 720, 1, 1] reductionProjection9595 ![reductionProjection9594, reductionProjection9460, oldProjection1368, oldProjection1368]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9596 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -200), (93, 120), (94, 215), (108, 240), (225, -240), (236, -240), (247, 560), (694, -1200), (1055, -960), (1091, 720), (1250, 600), (1251, -20), (1252, 1440), (1256, 720), (1319, -1440), (1388, -960)]

def reductionPivot9596 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 0, 1, -2]]

theorem reductionSound9596 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5797).moment H =
      Integer.Sparse.eval reductionProjection9596 (momentVector H) := by
  have heq : reductionPivot9596 = (fun u v => (normalNode5797).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5797).moment H = injectiveMoment H reductionPivot9596 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5797).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9596 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9596 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9596 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9593, reductionProjection9580, reductionProjection9580, reductionProjection8693, reductionProjection9595] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9596 (0 : Fin 5)) = canonicalInput10207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9593 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9593 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10207 hH))).trans (reductionSound9593 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9596 (1 : Fin 5)) = (normalNode5785).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9596 (2 : Fin 5)) = canonicalInput11890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11890 hH))).trans (reductionSound9580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9596 (3 : Fin 5)) = canonicalInput11898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8693 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11898 hH))).trans (reductionSound8693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9596 (4 : Fin 5)) = (normalNode5814).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9595 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9596 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5797).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9596 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5797).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9596 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 288, 720, 720] ![5, 5, 5, 2, 2] reductionProjection9596 ![reductionProjection9593, reductionProjection9580, reductionProjection9580, reductionProjection8693, reductionProjection9595]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9597 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 28), (20, -4), (94, -13), (104, -16), (241, -16), (698, -32), (704, -32), (1251, 3)]

def reductionPivot9597 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, 3, -3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, -1, 2]]

theorem reductionSound9597 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11196).moment H =
      Integer.Sparse.eval reductionProjection9597 (momentVector H) := by
  have heq : reductionPivot9597 = (fun u v => (normalNode11196).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11196).moment H = injectiveMoment H reductionPivot9597 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11196).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9597 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9597 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9597 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1261, oldProjection1317, oldProjection968, oldProjection1218] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9597 (0 : Fin 4)) = canonicalInput23406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9597 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1261 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9597 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23406 hH))).trans (oldProjectionSound1261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9597 (1 : Fin 4)) = canonicalInput23449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9597 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9597 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23449 hH))).trans (oldProjectionSound1317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9597 (2 : Fin 4)) = canonicalInput23452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9597 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection968 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9597 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23452 hH))).trans (oldProjectionSound968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9597 (3 : Fin 4)) = canonicalInput23453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9597 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1218 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9597 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23453 hH))).trans (oldProjectionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11196).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9597 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11196).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9597 (j : Fin 4)))
      2 288 1440 10 ![720, 144, 720, 720] ![2, 10, 2, 2] reductionProjection9597 ![oldProjection1261, oldProjection1317, oldProjection968, oldProjection1218]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9598 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -120), (17, 60), (19, -500), (20, 85), (93, 600), (94, 200), (104, 160), (233, -240), (240, -960), (241, 160), (698, 320), (704, 320), (1085, 720), (1250, 660), (1251, 80), (1290, -240), (1319, -480), (1321, -1200), (1388, -240)]

def reductionPivot9598 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound9598 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5798).moment H =
      Integer.Sparse.eval reductionProjection9598 (momentVector H) := by
  have heq : reductionPivot9598 = (fun u v => (normalNode5798).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5798).moment H = injectiveMoment H reductionPivot9598 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5798).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9598 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9598 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9598 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9597, reductionProjection9581, reductionProjection9581, reductionProjection8479, reductionProjection9591] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9598 (0 : Fin 5)) = canonicalInput10208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9597 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10208 hH))).trans (reductionSound9597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9598 (1 : Fin 5)) = (normalNode5786).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9581 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9598 (2 : Fin 5)) = canonicalInput11891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9581 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11891 hH))).trans (reductionSound9581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9598 (3 : Fin 5)) = canonicalInput11899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8479 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11899 hH))).trans (reductionSound8479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9598 (4 : Fin 5)) = canonicalInput11900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9591 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9598 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11900 hH))).trans (reductionSound9591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5798).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9598 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5798).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9598 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 1440, 720] ![5, 1, 1, 1, 2] reductionProjection9598 ![reductionProjection9597, reductionProjection9581, reductionProjection9581, reductionProjection8479, reductionProjection9591]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9599 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 60), (20, -10), (94, -25), (243, -80), (698, -80), (704, -160), (1226, -80), (1227, -80), (1251, 45)]

def reductionPivot9599 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -2, -1, 2]]

theorem reductionSound9599 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11122).moment H =
      Integer.Sparse.eval reductionProjection9599 (momentVector H) := by
  have heq : reductionPivot9599 = (fun u v => (normalNode11122).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11122).moment H = injectiveMoment H reductionPivot9599 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11122).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9599 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9599 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9599 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6098, oldProjection261, oldProjection835, oldProjection1326] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9599 (0 : Fin 4)) = (normalNode11070).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9599 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9599 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9599 (1 : Fin 4)) = canonicalInput22772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9599 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection261 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9599 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22772 hH))).trans (oldProjectionSound261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9599 (2 : Fin 4)) = canonicalInput22775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9599 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection835 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9599 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22775 hH))).trans (oldProjectionSound835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9599 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7865 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9599 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1326 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9599 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7865 hH))).trans (oldProjectionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11122).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9599 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11122).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9599 (j : Fin 4)))
      2 1440 1440 2 ![720, 240, 720, 720] ![2, 6, 2, 2] reductionProjection9599 ![reductionProjection6098, oldProjection261, oldProjection835, oldProjection1326]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

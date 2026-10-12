import NoFourMUBs.Step2.SOS.Canonical037
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical039
import NoFourMUBs.Step2.SOS.Canonical093
import NoFourMUBs.Step2.SOS.Canonical094
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical270
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical418
import NoFourMUBs.Step2.SOS.Canonical511
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions059
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical174
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical187
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical199
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical200
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical207
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical224
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical94
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1920 : Integer.Sparse (Fin 1613) := [(3, 6), (19, 14), (20, -1), (94, -4), (102, 24), (104, -48), (105, -8), (108, -64), (241, -8), (247, -16), (1251, -3)]

def reductionPivot1920 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound1920 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1121).moment H =
      Integer.Sparse.eval reductionProjection1920 (momentVector H) := by
  have heq : reductionPivot1920 = (fun u v => (normalNode1121).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1121).moment H = injectiveMoment H reductionPivot1920 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1121).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1920 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1920 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1920 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1919, oldProjection1258, reductionProjection684, oldProjection1240] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1920 (0 : Fin 4)) = canonicalInput6030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1920 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1920 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6030 hH))).trans (reductionSound1919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1920 (1 : Fin 4)) = canonicalInput2479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1920 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1258 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1920 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2479 hH))).trans (oldProjectionSound1258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1920 (2 : Fin 4)) = canonicalInput2463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1920 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection684 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1920 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2463 hH))).trans (reductionSound684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1920 (3 : Fin 4)) = canonicalInput2461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1920 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1920 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2461 hH))).trans (oldProjectionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1121).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1920 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1121).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1920 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 144] ![1, 1, 1, 1] reductionProjection1920 ![reductionProjection1919, oldProjection1258, reductionProjection684, oldProjection1240]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1921 : Integer.Sparse (Fin 1613) := [(3, 16), (4, 1), (19, -4), (20, -3), (94, -4)]

def reductionPivot1921 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 0, -4, 5], ![0, 0, 3, -3], ![0, 1, 1, -2]]

theorem reductionSound1921 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9599).moment H =
      Integer.Sparse.eval reductionProjection1921 (momentVector H) := by
  have heq : reductionPivot1921 = (fun u v => (normalNode9599).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9599).moment H = injectiveMoment H reductionPivot1921 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9599).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot1921 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1921 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 48, 16] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1921 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection49, oldProjection122, oldProjection49] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1921 (0 : Fin 3)) = canonicalInput24508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1921 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1921 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24508 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1921 (1 : Fin 3)) = canonicalInput19164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1921 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection122 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1921 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19164 hH))).trans (oldProjectionSound122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1921 (2 : Fin 3)) = canonicalInput19159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1921 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1921 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19159 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9599).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1921 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9599).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1921 (j : Fin 3)))
      3 144 144 3 ![16, 48, 16] ![9, 3, 9] reductionProjection1921 ![oldProjection49, oldProjection122, oldProjection49]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1922 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -2), (20, 1), (94, 1), (106, 8), (243, 8), (703, 16), (1222, -24)]

def reductionPivot1922 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 1, 1, -2], ![-1, -3, 4, 0], ![2, 2, -5, 1]]

theorem reductionSound1922 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode10356).moment H =
      Integer.Sparse.eval reductionProjection1922 (momentVector H) := by
  have heq : reductionPivot1922 = (fun u v => (normalNode10356).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10356).moment H = injectiveMoment H reductionPivot1922 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10356).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10356).entries)).symm
  have hshape : reductionPivot1922 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1922 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1922 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection235, reductionProjection1759, oldProjection205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1922 (0 : Fin 3)) = canonicalInput23337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1922 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection235 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1922 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23337 hH))).trans (oldProjectionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1922 (1 : Fin 3)) = canonicalInput32757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1922 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1759 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1922 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32757 hH))).trans (reductionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1922 (2 : Fin 3)) = canonicalInput32760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1922 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection205 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1922 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32760 hH))).trans (oldProjectionSound205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10356).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1922 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10356).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1922 (j : Fin 3)))
      3 72 72 3 ![24, 1, 3] ![3, 72, 24] reductionProjection1922 ![oldProjection235, reductionProjection1759, oldProjection205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1923 : Integer.Sparse (Fin 1613) := [(3, 14), (4, -1), (19, 6), (20, -1), (94, -1), (106, -8), (243, -8), (703, -24), (1222, 24), (1251, -1)]

def reductionPivot1923 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound1923 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1117).moment H =
      Integer.Sparse.eval reductionProjection1923 (momentVector H) := by
  have heq : reductionPivot1923 = (fun u v => (normalNode1117).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1117).moment H = injectiveMoment H reductionPivot1923 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1117).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1923 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1923 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1923 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1921, reductionProjection1922, reductionProjection686, oldProjection1161] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1923 (0 : Fin 4)) = canonicalInput6017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1923 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1921 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1923 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6017 hH))).trans (reductionSound1921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1923 (1 : Fin 4)) = canonicalInput2477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1923 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1922 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1923 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2477 hH))).trans (reductionSound1922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1923 (2 : Fin 4)) = canonicalInput2452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1923 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection686 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1923 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2452 hH))).trans (reductionSound686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1923 (3 : Fin 4)) = canonicalInput2448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1923 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1161 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1923 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2448 hH))).trans (oldProjectionSound1161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1117).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1923 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1117).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1923 (j : Fin 4)))
      2 144 144 2 ![144, 72, 144, 72] ![1, 2, 1, 2] reductionProjection1923 ![reductionProjection1921, reductionProjection1922, reductionProjection686, oldProjection1161]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1924 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -440), (4, 10), (19, -320), (20, 85), (94, 140), (102, -480), (104, 800), (105, 160), (106, 80), (108, 960), (241, 160), (243, 160), (247, 320), (263, 720), (698, 80), (703, 240), (704, 240), (1222, -240), (1223, -240), (1251, 75), (1278, -240)]

def reductionPivot1924 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound1924 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1082).moment H =
      Integer.Sparse.eval reductionProjection1924 (momentVector H) := by
  have heq : reductionPivot1924 = (fun u v => (normalNode1082).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1082).moment H = injectiveMoment H reductionPivot1924 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1082).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1924 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1924 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1924 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1551, oldProjection1439, reductionProjection1920, reductionProjection1851, reductionProjection1923] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1924 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1655 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1551 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1655 hH))).trans (oldProjectionSound1551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1924 (1 : Fin 5)) = canonicalInput2439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1439 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1439 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2439 hH))).trans (oldProjectionSound1439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1924 (2 : Fin 5)) = (normalNode1121).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1920 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1920 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1920 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1924 (3 : Fin 5)) = (normalNode1118).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1851 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1924 (4 : Fin 5)) = (normalNode1117).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1924 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1082).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1924 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1082).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1924 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 144, 288, 144] ![1, 5, 10, 5, 10] reductionProjection1924 ![oldProjection1551, oldProjection1439, reductionProjection1920, reductionProjection1851, reductionProjection1923]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1925 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (94, -20), (104, -160), (108, -640), (113, -720), (119, -720), (247, -320), (1251, -25)]

def reductionPivot1925 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound1925 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1122).moment H =
      Integer.Sparse.eval reductionProjection1925 (momentVector H) := by
  have heq : reductionPivot1925 = (fun u v => (normalNode1122).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1122).moment H = injectiveMoment H reductionPivot1925 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1122).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1925 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1925 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1925 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1240, oldProjection392, oldProjection750, oldProjection393] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1925 (0 : Fin 4)) = canonicalInput6031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1925 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1925 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6031 hH))).trans (oldProjectionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1925 (1 : Fin 4)) = canonicalInput2480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1925 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1925 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2480 hH))).trans (oldProjectionSound392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1925 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1459 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1925 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1925 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1459 hH))).trans (oldProjectionSound750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1925 (3 : Fin 4)) = canonicalInput2462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1925 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection393 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1925 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2462 hH))).trans (oldProjectionSound393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1122).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1925 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1122).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1925 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 720, 1] ![10, 1440, 2, 1440] reductionProjection1925 ![oldProjection1240, oldProjection392, oldProjection750, oldProjection393]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1926 : Integer.Sparse (Fin 1613) := [(0, -7), (3, -80), (19, -400), (20, 20), (23, -240), (94, 170), (104, 400), (108, 1680), (113, 1440), (119, 720), (241, 80), (247, 640), (263, 720), (264, 720), (294, 720), (704, 80), (1251, 165), (1278, -480)]

def reductionPivot1926 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound1926 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1083).moment H =
      Integer.Sparse.eval reductionProjection1926 (momentVector H) := by
  have heq : reductionPivot1926 = (fun u v => (normalNode1083).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1083).moment H = injectiveMoment H reductionPivot1926 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1083).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1926 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1926 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1926 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1553, reductionProjection641, reductionProjection1925, reductionProjection1855, reductionProjection1851] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1926 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1656 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1553 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1656 hH))).trans (oldProjectionSound1553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1926 (1 : Fin 5)) = canonicalInput2440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection641 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2440 hH))).trans (reductionSound641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1926 (2 : Fin 5)) = (normalNode1122).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1925 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1926 (3 : Fin 5)) = (normalNode1119).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1855 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1926 (4 : Fin 5)) = (normalNode1118).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1851 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1926 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1083).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1926 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1083).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1926 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 288, 288] ![1, 2, 1, 5, 5] reductionProjection1926 ![oldProjection1553, reductionProjection641, reductionProjection1925, reductionProjection1855, reductionProjection1851]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1927 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 100), (20, -5), (23, 240), (94, -35), (102, 240), (104, -240), (108, -480), (241, -80), (243, -80), (247, -160), (261, -720), (698, -80), (1251, -35)]

def reductionPivot1927 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound1927 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1123).moment H =
      Integer.Sparse.eval reductionProjection1927 (momentVector H) := by
  have heq : reductionPivot1927 = (fun u v => (normalNode1123).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1123).moment H = injectiveMoment H reductionPivot1927 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1123).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1927 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1927 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1927 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection684, oldProjection753, oldProjection750, reductionProjection1800] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1927 (0 : Fin 4)) = canonicalInput6032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1927 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection684 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1927 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6032 hH))).trans (reductionSound684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1927 (1 : Fin 4)) = canonicalInput2481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1927 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection753 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1927 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2481 hH))).trans (oldProjectionSound753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1927 (2 : Fin 4)) = canonicalInput2464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1927 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1927 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2464 hH))).trans (oldProjectionSound750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1927 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code261).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1927 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1800 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1927 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1123).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1927 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1123).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1927 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 720, 1] ![10, 160, 2, 1440] reductionProjection1927 ![reductionProjection684, oldProjection753, oldProjection750, reductionProjection1800]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1928 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -100), (19, -300), (20, 35), (23, -960), (94, 120), (101, -480), (102, -480), (104, 640), (105, 80), (108, 1200), (228, -480), (241, 480), (243, 320), (247, 560), (261, 720), (264, 720), (698, 320), (703, 80), (704, 80), (1222, -240), (1223, -240), (1225, 80), (1226, 160), (1227, 80), (1251, 80)]

def reductionPivot1928 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound1928 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1084).moment H =
      Integer.Sparse.eval reductionProjection1928 (momentVector H) := by
  have heq : reductionPivot1928 = (fun u v => (normalNode1084).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1084).moment H = injectiveMoment H reductionPivot1928 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1084).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1928 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1928 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1928 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1552, oldProjection1440, reductionProjection1927, reductionProjection1853, reductionProjection1855] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1928 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1657 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1552 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1657 hH))).trans (oldProjectionSound1552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1928 (1 : Fin 5)) = canonicalInput2441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1440 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1440 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2441 hH))).trans (oldProjectionSound1440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1928 (2 : Fin 5)) = (normalNode1123).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1927 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1927 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1927 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1928 (3 : Fin 5)) = (normalNode1120).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1853 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1928 (4 : Fin 5)) = (normalNode1119).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1855 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1928 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1084).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1928 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1084).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1928 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 288] ![1, 1, 1, 5, 5] reductionProjection1928 ![oldProjection1552, oldProjection1440, reductionProjection1927, reductionProjection1853, reductionProjection1855]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1929 : Integer.Sparse (Fin 1613) := [(3, 4), (4, 1), (20, -3), (94, -4), (105, 16), (106, 16)]

def reductionPivot1929 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, 0, 2], ![0, 0, -3, 3], ![1, 0, 4, -5]]

theorem reductionSound1929 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9049).moment H =
      Integer.Sparse.eval reductionProjection1929 (momentVector H) := by
  have heq : reductionPivot1929 = (fun u v => (normalNode9049).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9049).moment H = injectiveMoment H reductionPivot1929 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9049).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot1929 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1929 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1929 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection49, oldProjection130, oldProjection129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1929 (0 : Fin 3)) = canonicalInput20226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1929 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1929 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20226 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1929 (1 : Fin 3)) = canonicalInput17296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1929 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection130 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1929 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17296 hH))).trans (oldProjectionSound130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1929 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6420 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1929 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1929 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6420 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9049).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1929 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9049).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1929 (j : Fin 3)))
      3 144 144 3 ![16, 48, 24] ![9, 3, 6] reductionProjection1929 ![oldProjection49, oldProjection130, oldProjection129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1930 : Integer.Sparse (Fin 1613) := [(3, 16), (4, -1), (19, 8), (20, -1), (94, -1), (105, -8), (106, -24), (243, -16), (703, -32), (1054, 24), (1251, -1)]

def reductionPivot1930 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound1930 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1126).moment H =
      Integer.Sparse.eval reductionProjection1930 (momentVector H) := by
  have heq : reductionPivot1930 = (fun u v => (normalNode1126).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1126).moment H = injectiveMoment H reductionPivot1930 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1126).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1930 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1930 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1930 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1929, oldProjection1030, reductionProjection1824, reductionProjection1908] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1930 (0 : Fin 4)) = canonicalInput6042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1930 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1929 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1930 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1929 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6042 hH))).trans (reductionSound1929 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1930 (1 : Fin 4)) = canonicalInput2486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1930 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1030 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1930 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2486 hH))).trans (oldProjectionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1930 (2 : Fin 4)) = canonicalInput2475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1930 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1930 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2475 hH))).trans (reductionSound1824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1930 (3 : Fin 4)) = canonicalInput2474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1930 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1908 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1930 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2474 hH))).trans (reductionSound1908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1126).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1930 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1126).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1930 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 36] ![1, 1, 1, 4] reductionProjection1930 ![reductionProjection1929, oldProjection1030, reductionProjection1824, reductionProjection1908]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1931 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -8), (20, 3), (94, 1), (104, 16), (105, 16), (108, 32), (1251, 2)]

def reductionPivot1931 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -3, 5], ![0, 1, 2, -3], ![1, 1, 0, -2]]

theorem reductionSound1931 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7187).moment H =
      Integer.Sparse.eval reductionProjection1931 (momentVector H) := by
  have heq : reductionPivot1931 = (fun u v => (normalNode7187).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7187).moment H = injectiveMoment H reductionPivot1931 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7187).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot1931 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1931 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1931 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection127, oldProjection129, oldProjection123] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1931 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1931 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1931 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5574 hH))).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1931 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6000 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1931 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1931 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6000 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1931 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6002 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1931 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1931 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6002 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7187).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1931 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7187).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1931 (j : Fin 3)))
      3 144 144 3 ![48, 24, 48] ![3, 6, 3] reductionProjection1931 ![oldProjection127, oldProjection129, oldProjection123]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1932 : Integer.Sparse (Fin 1613) := [(3, 16), (19, 24), (20, -5), (23, 48), (94, -5), (104, -32), (105, -32), (108, -32), (241, -16), (262, -144), (704, -16), (1251, -4), (1278, 48)]

def reductionPivot1932 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound1932 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1125).moment H =
      Integer.Sparse.eval reductionProjection1932 (momentVector H) := by
  have heq : reductionPivot1932 = (fun u v => (normalNode1125).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1125).moment H = injectiveMoment H reductionPivot1932 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1125).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1932 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1932 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1932 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1931, oldProjection886, oldProjection888, reductionProjection1812] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1932 (0 : Fin 4)) = canonicalInput6040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1932 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1931 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1932 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6040 hH))).trans (reductionSound1931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1932 (1 : Fin 4)) = canonicalInput2484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1932 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection886 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1932 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2484 hH))).trans (oldProjectionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1932 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1460 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1932 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection888 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1932 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1460 hH))).trans (oldProjectionSound888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1932 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1932 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1932 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1125).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1932 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1125).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1932 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection1932 ![reductionProjection1931, oldProjection886, oldProjection888, reductionProjection1812]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1933 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 1), (94, 2), (104, 16), (105, 16), (108, -16), (1251, 1)]

def reductionPivot1933 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, -1, -2, 3], ![0, 2, 3, -5]]

theorem reductionSound1933 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode8922).moment H =
      Integer.Sparse.eval reductionProjection1933 (momentVector H) := by
  have heq : reductionPivot1933 = (fun u v => (normalNode8922).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8922).moment H = injectiveMoment H reductionPivot1933 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8922).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot1933 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1933 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1933 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection30, oldProjection128, oldProjection127] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1933 (0 : Fin 3)) = canonicalInput24724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1933 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection30 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1933 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection30 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24724 hH))).trans (oldProjectionSound30 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1933 (1 : Fin 3)) = canonicalInput17397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1933 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection128 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1933 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17397 hH))).trans (oldProjectionSound128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1933 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6386 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1933 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1933 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6386 hH))).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode8922).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1933 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8922).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1933 (j : Fin 3)))
      3 144 144 3 ![1, 48, 48] ![144, 3, 3] reductionProjection1933 ![oldProjection30, oldProjection128, oldProjection127]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1934 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 20), (20, -2), (23, 48), (94, -7), (104, -96), (105, -48), (108, -112), (241, -32), (247, -32), (1251, -5)]

def reductionPivot1934 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound1934 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1124).moment H =
      Integer.Sparse.eval reductionProjection1934 (momentVector H) := by
  have heq : reductionPivot1934 = (fun u v => (normalNode1124).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1124).moment H = injectiveMoment H reductionPivot1934 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1124).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1934 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1934 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1934 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1933, oldProjection999, reductionProjection1807, oldProjection1038] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1934 (0 : Fin 4)) = canonicalInput6039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1934 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1933 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1934 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1933 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6039 hH))).trans (reductionSound1933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1934 (1 : Fin 4)) = canonicalInput2483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1934 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection999 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1934 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2483 hH))).trans (oldProjectionSound999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1934 (2 : Fin 4)) = canonicalInput2471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1934 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1807 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1934 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2471 hH))).trans (reductionSound1807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1934 (3 : Fin 4)) = canonicalInput2470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1934 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1038 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1934 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2470 hH))).trans (oldProjectionSound1038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1124).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1934 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1124).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1934 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 72] ![2, 2, 2, 4] reductionProjection1934 ![reductionProjection1933, oldProjection999, reductionProjection1807, oldProjection1038]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1935 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -400), (4, 10), (19, -480), (20, 90), (23, -480), (94, 125), (104, 960), (105, 640), (106, 240), (108, 880), (241, 560), (243, 560), (247, 160), (262, 720), (698, 240), (703, 320), (704, 480), (1054, -480), (1251, 75), (1278, -240)]

def reductionPivot1935 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound1935 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1087).moment H =
      Integer.Sparse.eval reductionProjection1935 (momentVector H) := by
  have heq : reductionPivot1935 = (fun u v => (normalNode1087).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1087).moment H = injectiveMoment H reductionPivot1935 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1087).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1935 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1935 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1935 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1563, oldProjection1441, reductionProjection1930, reductionProjection1932, reductionProjection1934] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1935 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1660 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1563 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1660 hH))).trans (oldProjectionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1935 (1 : Fin 5)) = canonicalInput2444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1441 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1441 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2444 hH))).trans (oldProjectionSound1441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1935 (2 : Fin 5)) = (normalNode1126).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1930 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1935 (3 : Fin 5)) = (normalNode1125).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1932 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1932 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1935 (4 : Fin 5)) = (normalNode1124).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1934 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1935 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1087).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1935 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1087).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1935 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 144, 288, 288] ![1, 10, 10, 5, 5] reductionProjection1935 ![oldProjection1563, oldProjection1441, reductionProjection1930, reductionProjection1932, reductionProjection1934]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1936 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 20), (20, -2), (94, -7), (104, -64), (105, -16), (108, -96), (241, -16), (247, -32), (260, -144), (1251, -5)]

def reductionPivot1936 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound1936 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1131).moment H =
      Integer.Sparse.eval reductionProjection1936 (momentVector H) := by
  have heq : reductionPivot1936 = (fun u v => (normalNode1131).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1131).moment H = injectiveMoment H reductionPivot1936 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1131).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1936 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1936 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1936 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection675, reductionProjection1807, reductionProjection684, reductionProjection1900] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1936 (0 : Fin 4)) = (normalNode6335).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1936 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1936 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1936 (1 : Fin 4)) = canonicalInput2497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1936 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1807 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1936 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2497 hH))).trans (reductionSound1807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1936 (2 : Fin 4)) = canonicalInput2465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1936 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection684 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1936 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2465 hH))).trans (reductionSound684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1936 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code260).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1936 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1900 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1936 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1131).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1936 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1131).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1936 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection1936 ![reductionProjection675, reductionProjection1807, reductionProjection684, reductionProjection1900]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1937 : Integer.Sparse (Fin 1613) := [(3, -8), (4, 1), (19, -8), (20, 2), (94, 1), (1062, -48)]

def reductionPivot1937 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 5, -3, -2], ![2, -5, 2, 1]]

theorem reductionSound1937 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9121).moment H =
      Integer.Sparse.eval reductionProjection1937 (momentVector H) := by
  have heq : reductionPivot1937 = (fun u v => (normalNode9121).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9121).moment H = injectiveMoment H reductionPivot1937 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9121).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9121).entries)).symm
  have hshape : reductionPivot1937 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1937 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 12] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1937 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1883, reductionProjection648, reductionProjection681] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1937 (0 : Fin 3)) = canonicalInput8948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1937 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1883 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1937 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1883 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8948 hH))).trans (reductionSound1883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1937 (1 : Fin 3)) = canonicalInput21730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1937 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection648 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1937 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21730 hH))).trans (reductionSound648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1937 (2 : Fin 3)) = canonicalInput21807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1937 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection681 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1937 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection681 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21807 hH))).trans (reductionSound681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9121).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1937 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9121).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1937 (j : Fin 3)))
      3 144 144 3 ![1, 48, 12] ![144, 3, 12] reductionProjection1937 ![reductionProjection1883, reductionProjection648, reductionProjection681]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1938 : Integer.Sparse (Fin 1613) := [(3, 14), (4, -1), (19, 10), (20, -1), (94, -1), (106, -16), (243, -24), (244, -8), (703, -32), (1062, 24), (1251, -1)]

def reductionPivot1938 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound1938 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1129).moment H =
      Integer.Sparse.eval reductionProjection1938 (momentVector H) := by
  have heq : reductionPivot1938 = (fun u v => (normalNode1129).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1129).moment H = injectiveMoment H reductionPivot1938 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1129).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1938 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1938 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1938 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1069, reductionProjection1937, reductionProjection1824, reductionProjection1908] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1938 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3031 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1938 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1938 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3031 hH))).trans (oldProjectionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1938 (1 : Fin 4)) = canonicalInput2488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1938 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1937 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1938 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1937 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2488 hH))).trans (reductionSound1937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1938 (2 : Fin 4)) = canonicalInput2476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1938 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1938 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2476 hH))).trans (reductionSound1824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1938 (3 : Fin 4)) = canonicalInput2474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1938 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1908 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1938 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2474 hH))).trans (reductionSound1908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1129).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1938 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1129).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1938 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 36] ![1, 1, 1, 4] reductionProjection1938 ![oldProjection1069, reductionProjection1937, reductionProjection1824, reductionProjection1908]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1939 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -340), (4, 10), (19, -500), (20, 85), (94, 135), (104, 720), (105, 320), (106, 160), (108, 880), (241, 480), (243, 560), (244, 80), (246, 80), (247, 320), (260, 720), (262, 720), (698, 240), (700, 80), (703, 320), (704, 320), (1054, -480), (1061, -240), (1062, -240), (1251, 90), (1278, -240)]

def reductionPivot1939 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound1939 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1091).moment H =
      Integer.Sparse.eval reductionProjection1939 (momentVector H) := by
  have heq : reductionPivot1939 = (fun u v => (normalNode1091).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1091).moment H = injectiveMoment H reductionPivot1939 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1091).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1939 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1939 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1939 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1605, reductionProjection1936, reductionProjection1938, reductionProjection1864, oldProjection1441] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1939 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1684 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1605 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1684 hH))).trans (oldProjectionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1939 (1 : Fin 5)) = (normalNode1131).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1936 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1939 (2 : Fin 5)) = (normalNode1129).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1938 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1939 (3 : Fin 5)) = (normalNode1128).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1864 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1939 (4 : Fin 5)) = canonicalInput2444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1441 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1939 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1441 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2444 hH))).trans (oldProjectionSound1441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1091).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1939 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1091).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1939 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 144, 144, 144] ![1, 5, 10, 10, 10] reductionProjection1939 ![oldProjection1605, reductionProjection1936, reductionProjection1938, reductionProjection1864, oldProjection1441]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1940 : Integer.Sparse (Fin 1613) := [(3, 28), (4, -1), (19, 16), (20, -7), (94, -10), (246, -16), (1054, 96), (1061, 48), (1062, 48), (1251, -4), (1278, 48)]

def reductionPivot1940 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound1940 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1100).moment H =
      Integer.Sparse.eval reductionProjection1940 (momentVector H) := by
  have heq : reductionPivot1940 = (fun u v => (normalNode1100).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1100).moment H = injectiveMoment H reductionPivot1940 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1100).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1940 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1940 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1940 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1070, reductionProjection1937, reductionProjection1826, oldProjection1030] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1940 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1730 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1940 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1070 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1940 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1730 hH))).trans (oldProjectionSound1070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1940 (1 : Fin 4)) = canonicalInput2488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1940 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1937 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1940 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1937 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2488 hH))).trans (reductionSound1937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1940 (2 : Fin 4)) = canonicalInput2487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1940 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1826 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1940 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2487 hH))).trans (reductionSound1826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1940 (3 : Fin 4)) = canonicalInput2486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1940 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1030 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1940 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2486 hH))).trans (oldProjectionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1100).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1940 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1100).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1940 (j : Fin 4)))
      2 288 288 2 ![48, 144, 144, 144] ![6, 2, 2, 2] reductionProjection1940 ![oldProjection1070, reductionProjection1937, reductionProjection1826, oldProjection1030]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1941 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -2), (94, -1), (104, -16), (105, -16), (108, -16), (241, -16), (1251, 1)]

def reductionPivot1941 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -2, 2], ![0, 2, 3, -5], ![1, -1, -1, 1]]

theorem reductionSound1941 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10593).moment H =
      Integer.Sparse.eval reductionProjection1941 (momentVector H) := by
  have heq : reductionPivot1941 = (fun u v => (normalNode10593).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10593).moment H = injectiveMoment H reductionPivot1941 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10593).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot1941 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1941 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1941 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1038, reductionProjection1931, oldProjection764, oldProjection127] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1941 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1038⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1941 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1038 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1941 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1941 (1 : Fin 4)) = canonicalInput25442.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1941 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1931 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1941 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25442 hH))).trans (reductionSound1931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1941 (2 : Fin 4)) = canonicalInput25819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1941 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection764 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1941 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25819 hH))).trans (oldProjectionSound764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1941 (3 : Fin 4)) = canonicalInput25824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1941 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1941 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25824 hH))).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10593).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1941 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10593).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1941 (j : Fin 4)))
      2 144 144 2 ![72, 144, 144, 48] ![2, 1, 1, 3] reductionProjection1941 ![oldProjection1038, reductionProjection1931, oldProjection764, oldProjection127]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1942 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -80), (19, -360), (20, 30), (23, -480), (94, 105), (104, 720), (105, 400), (108, 640), (119, 720), (241, 800), (243, 160), (247, 480), (248, 1440), (256, 720), (262, 720), (263, 720), (698, 240), (704, 80), (1223, -240), (1226, 80), (1251, 50), (1278, -240)]

def reductionPivot1942 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound1942 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1101).moment H =
      Integer.Sparse.eval reductionProjection1942 (momentVector H) := by
  have heq : reductionPivot1942 = (fun u v => (normalNode1101).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1101).moment H = injectiveMoment H reductionPivot1942 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1101).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1942 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1942 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1942 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1941, reductionProjection663, reductionProjection1911, oldProjection2386, reductionProjection1843] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1942 (0 : Fin 5)) = canonicalInput5995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1941 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5995 hH))).trans (reductionSound1941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1942 (1 : Fin 5)) = canonicalInput2456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection663 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection663 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2456 hH))).trans (reductionSound663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1942 (2 : Fin 5)) = (normalNode1109).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1911 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1911 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1942 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1454 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2386 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1454 hH))).trans (oldProjectionSound2386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1942 (4 : Fin 5)) = (normalNode1107).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1843 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1942 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1101).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1942 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1101).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1942 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 288, 288, 288] ![10, 1, 5, 5, 5] reductionProjection1942 ![reductionProjection1941, reductionProjection663, reductionProjection1911, oldProjection2386, reductionProjection1843]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1943 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -25), (238, 240), (241, -160), (243, -80), (247, -80), (698, -80), (1251, -5)]

def reductionPivot1943 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 0, -2, 2], ![0, 2, 2, -4], ![1, -1, 0, 0]]

theorem reductionSound1943 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10284).moment H =
      Integer.Sparse.eval reductionProjection1943 (momentVector H) := by
  have heq : reductionPivot1943 = (fun u v => (normalNode10284).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10284).moment H = injectiveMoment H reductionPivot1943 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10284).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1943 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1943 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1943 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1037, oldProjection998, oldProjection1178, oldProjection1257] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1943 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1037⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1943 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1037 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1943 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1037 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1943 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7170 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1943 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection998 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1943 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7170 hH))).trans (oldProjectionSound998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1943 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7189 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1943 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1178 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1943 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7189 hH))).trans (oldProjectionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1943 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1257⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1943 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1257 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1943 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10284).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1943 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10284).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1943 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 144] ![10, 2, 10, 10] reductionProjection1943 ![oldProjection1037, oldProjection998, oldProjection1178, oldProjection1257]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1944 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -50), (19, -170), (20, 10), (23, -720), (94, 60), (102, -240), (104, 480), (105, 160), (108, 640), (238, -120), (241, 440), (243, 120), (247, 320), (257, 360), (260, 360), (261, 360), (698, 120), (703, 40), (704, 40), (1251, 35)]

def reductionPivot1944 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound1944 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1105).moment H =
      Integer.Sparse.eval reductionProjection1944 (momentVector H) := by
  have heq : reductionPivot1944 = (fun u v => (normalNode1105).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1105).moment H = injectiveMoment H reductionPivot1944 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1105).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1944 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1944 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1944 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1943, reductionProjection1936, reductionProjection1917, reductionProjection1846, reductionProjection1907] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1944 (0 : Fin 5)) = canonicalInput6278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1943 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6278 hH))).trans (reductionSound1943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1944 (1 : Fin 5)) = canonicalInput2468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1936 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2468 hH))).trans (reductionSound1936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1944 (2 : Fin 5)) = (normalNode1111).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1917 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1944 (3 : Fin 5)) = canonicalInput2402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1846 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2402 hH))).trans (reductionSound1846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1944 (4 : Fin 5)) = (normalNode1108).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1907 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1944 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1105).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1944 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1105).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1944 (j : Fin 5)))
      1 720 1440 2 ![1440, 288, 144, 1440, 72] ![1, 5, 10, 1, 20] reductionProjection1944 ![reductionProjection1943, reductionProjection1936, reductionProjection1917, reductionProjection1846, reductionProjection1907]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1945 : Integer.Sparse (Fin 1613) := [(3, -8), (20, 3), (94, -1), (105, -16), (108, 16)]

def reductionPivot1945 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -1, 0, 2], ![0, 0, -3, 3], ![0, 2, 3, -5]]

theorem reductionSound1945 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9055).moment H =
      Integer.Sparse.eval reductionProjection1945 (momentVector H) := by
  have heq : reductionPivot1945 = (fun u v => (normalNode9055).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9055).moment H = injectiveMoment H reductionPivot1945 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9055).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot1945 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1945 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1945 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection28, oldProjection128, oldProjection129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1945 (0 : Fin 3)) = canonicalInput24114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1945 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection28 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1945 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection28 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24114 hH))).trans (oldProjectionSound28 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1945 (1 : Fin 3)) = canonicalInput17397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1945 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection128 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1945 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17397 hH))).trans (oldProjectionSound128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1945 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6420 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1945 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1945 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6420 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9055).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1945 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9055).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1945 (j : Fin 3)))
      3 144 144 3 ![1, 48, 24] ![144, 3, 6] reductionProjection1945 ![oldProjection28, oldProjection128, oldProjection129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1946 : Integer.Sparse (Fin 1613) := [(3, -4), (4, -1), (19, 4), (20, 6), (94, -6), (105, 32), (106, -16), (108, -16), (243, -16), (1251, -1)]

def reductionPivot1946 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -3, 3], ![0, 2, 3, -5], ![1, -1, 0, 0]]

theorem reductionSound1946 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10590).moment H =
      Integer.Sparse.eval reductionProjection1946 (momentVector H) := by
  have heq : reductionPivot1946 = (fun u v => (normalNode10590).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10590).moment H = injectiveMoment H reductionPivot1946 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10590).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot1946 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1946 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1946 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1945, reductionProjection1929, oldProjection1023, oldProjection129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1946 (0 : Fin 4)) = (normalNode9055).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1946 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1945 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1946 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1946 (1 : Fin 4)) = canonicalInput25435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1946 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1929 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1946 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1929 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25435 hH))).trans (reductionSound1929 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1946 (2 : Fin 4)) = canonicalInput25807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1946 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1023 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1946 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25807 hH))).trans (oldProjectionSound1023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1946 (3 : Fin 4)) = canonicalInput25816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1946 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1946 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25816 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10590).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1946 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10590).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1946 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 24] ![2, 2, 2, 12] reductionProjection1946 ![reductionProjection1945, reductionProjection1929, oldProjection1023, oldProjection129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1947 : Integer.Sparse (Fin 1613) := [(258, 1)]

theorem reductionSound1947 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code258).moment H =
      Integer.Sparse.eval reductionProjection1947 (momentVector H) := by
  have hc : coordinates (258 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code258) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1947, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1948 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 4), (20, -3), (26, -32), (94, 4), (101, 48), (105, -32), (106, -16), (243, -32), (258, -144), (703, -32), (1222, 48), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot1948 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 2, -1, -1], ![1, 0, 0, -1]]

theorem reductionSound1948 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1115).moment H =
      Integer.Sparse.eval reductionProjection1948 (momentVector H) := by
  have heq : reductionPivot1948 = (fun u v => (normalNode1115).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1115).moment H = injectiveMoment H reductionPivot1948 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1115).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1948 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1948 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1948 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection693, reductionProjection1819, reductionProjection670, reductionProjection1947] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1948 (0 : Fin 4)) = (normalNode6331).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1948 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection693 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1948 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1948 (1 : Fin 4)) = canonicalInput2495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1948 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1819 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1948 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2495 hH))).trans (reductionSound1819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1948 (2 : Fin 4)) = canonicalInput2420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1948 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1948 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2420 hH))).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1948 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code258).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1948 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1947 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1948 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1115).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1948 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1115).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1948 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 1] ![32, 32, 2, 288] reductionProjection1948 ![reductionProjection693, reductionProjection1819, reductionProjection670, reductionProjection1947]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1949 : Integer.Sparse (Fin 1613) := [(3, -56), (4, 2), (19, -48), (20, 12), (26, 112), (94, 1), (101, -96), (104, 80), (105, 128), (106, 64), (108, 64), (241, 48), (243, 144), (258, 144), (703, 128), (1054, -48), (1222, -48), (1225, 16), (1226, 16), (1251, 3)]

def reductionPivot1949 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound1949 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1112).moment H =
      Integer.Sparse.eval reductionProjection1949 (momentVector H) := by
  have heq : reductionPivot1949 = (fun u v => (normalNode1112).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1112).moment H = injectiveMoment H reductionPivot1949 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1112).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1949 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1949 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1949 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1946, oldProjection1441, reductionProjection1948, reductionProjection694, reductionProjection1913] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1949 (0 : Fin 5)) = canonicalInput6006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1946 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6006 hH))).trans (reductionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1949 (1 : Fin 5)) = canonicalInput2467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1441 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1441 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2467 hH))).trans (oldProjectionSound1441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1949 (2 : Fin 5)) = (normalNode1115).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1948 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1949 (3 : Fin 5)) = canonicalInput2414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection694 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2414 hH))).trans (reductionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1949 (4 : Fin 5)) = (normalNode1114).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1913 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1949 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1112).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1949 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1112).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1949 (j : Fin 5)))
      1 288 288 1 ![288, 144, 288, 288, 288] ![1, 2, 1, 1, 1] reductionProjection1949 ![reductionProjection1946, oldProjection1441, reductionProjection1948, reductionProjection694, reductionProjection1913]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1950 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 4), (94, -5), (243, 32), (244, -16), (700, -16), (1251, -1)]

def reductionPivot1950 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 0, -3, 3], ![0, 2, 2, -4], ![1, -1, 0, 0]]

theorem reductionSound1950 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10630).moment H =
      Integer.Sparse.eval reductionProjection1950 (momentVector H) := by
  have heq : reductionPivot1950 = (fun u v => (normalNode10630).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10630).moment H = injectiveMoment H reductionPivot1950 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10630).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot1950 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1950 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1950 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1075, oldProjection1069, oldProjection1062, oldProjection155] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1950 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6629 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1950 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1950 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6629 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1950 (1 : Fin 4)) = canonicalInput26677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1950 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1950 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26677 hH))).trans (oldProjectionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1950 (2 : Fin 4)) = canonicalInput26766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1950 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1950 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26766 hH))).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1950 (3 : Fin 4)) = canonicalInput26777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1950 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1950 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26777 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10630).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1950 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10630).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1950 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 48] ![4, 2, 2, 6] reductionProjection1950 ![oldProjection1075, oldProjection1069, oldProjection1062, oldProjection155]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1951 : Integer.Sparse (Fin 1613) := [(3, -64), (4, 3), (19, -44), (20, 11), (26, 112), (94, 3), (101, -96), (102, -48), (104, 48), (105, 128), (106, 80), (108, 32), (241, 16), (243, 144), (244, 32), (259, 144), (700, 16), (703, 160), (1062, -48), (1251, 7)]

def reductionPivot1951 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound1951 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1113).moment H =
      Integer.Sparse.eval reductionProjection1951 (momentVector H) := by
  have heq : reductionPivot1951 = (fun u v => (normalNode1113).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1113).moment H = injectiveMoment H reductionPivot1951 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1113).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1951 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1951 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1951 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1950, reductionProjection1938, reductionProjection1916, reductionProjection694, reductionProjection1913] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1951 (0 : Fin 5)) = canonicalInput6292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1950 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6292 hH))).trans (reductionSound1950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1951 (1 : Fin 5)) = canonicalInput2473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1938 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2473 hH))).trans (reductionSound1938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1951 (2 : Fin 5)) = (normalNode1116).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1916 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1951 (3 : Fin 5)) = canonicalInput2415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection694 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2415 hH))).trans (reductionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1951 (4 : Fin 5)) = (normalNode1114).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1913 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1951 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1113).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1951 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1113).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1951 (j : Fin 5)))
      1 288 288 1 ![288, 144, 288, 288, 288] ![1, 2, 1, 1, 1] reductionProjection1951 ![reductionProjection1950, reductionProjection1938, reductionProjection1916, reductionProjection694, reductionProjection1913]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

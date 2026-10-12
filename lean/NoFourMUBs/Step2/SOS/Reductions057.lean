import NoFourMUBs.Step2.SOS.Canonical017
import NoFourMUBs.Step2.SOS.Canonical035
import NoFourMUBs.Step2.SOS.Canonical036
import NoFourMUBs.Step2.SOS.Canonical037
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical039
import NoFourMUBs.Step2.SOS.Canonical093
import NoFourMUBs.Step2.SOS.Canonical094
import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical181
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.Canonical222
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical241
import NoFourMUBs.Step2.SOS.Canonical270
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions056
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical173
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical174
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical187
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical203
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical91
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical93
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1824 : Integer.Sparse (Fin 1613) := [(3, -12), (4, 1), (19, -8), (106, 16), (243, 16), (703, 16), (1251, 1)]

def reductionPivot1824 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, 0, 2], ![0, 1, -3, 2], ![1, 0, 4, -5]]

theorem reductionSound1824 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9083).moment H =
      Integer.Sparse.eval reductionProjection1824 (momentVector H) := by
  have heq : reductionPivot1824 = (fun u v => (normalNode9083).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9083).moment H = injectiveMoment H reductionPivot1824 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9083).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot1824 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1824 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1824 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection77, oldProjection130, oldProjection155] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1824 (0 : Fin 3)) = canonicalInput15424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1824 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection77 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1824 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection77 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15424 hH))).trans (oldProjectionSound77 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1824 (1 : Fin 3)) = canonicalInput17296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1824 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection130 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1824 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17296 hH))).trans (oldProjectionSound130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1824 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6525 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1824 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1824 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6525 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9083).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1824 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9083).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1824 (j : Fin 3)))
      3 144 144 3 ![48, 48, 48] ![3, 3, 3] reductionProjection1824 ![oldProjection77, oldProjection130, oldProjection155]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1825 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 120), (4, -5), (19, 160), (20, -25), (94, -30), (104, -160), (105, -160), (106, -80), (108, -240), (241, -160), (243, -160), (247, -80), (698, -80), (703, -80), (704, -80), (1251, -15)]

def reductionPivot1825 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound1825 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6312).moment H =
      Integer.Sparse.eval reductionProjection1825 (momentVector H) := by
  have heq : reductionPivot1825 = (fun u v => (normalNode6312).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6312).moment H = injectiveMoment H reductionPivot1825 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6312).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1825 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1825 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1825 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1042, oldProjection888, reductionProjection1807, reductionProjection1824] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1825 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5621 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1825 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1825 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5621 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1825 (1 : Fin 4)) = canonicalInput12873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1825 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection888 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1825 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12873 hH))).trans (oldProjectionSound888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1825 (2 : Fin 4)) = (normalNode6333).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1825 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1807 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1825 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1825 (3 : Fin 4)) = canonicalInput12871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1825 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1825 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12871 hH))).trans (reductionSound1824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6312).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1825 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6312).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1825 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 144] ![2, 10, 10, 10] reductionProjection1825 ![oldProjection1042, oldProjection888, reductionProjection1807, reductionProjection1824]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1826 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 1), (94, 1), (246, 16), (1054, -48), (1278, -48)]

def reductionPivot1826 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 1, -1], ![0, -2, 4, -2], ![2, 1, -5, 2]]

theorem reductionSound1826 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9130).moment H =
      Integer.Sparse.eval reductionProjection1826 (momentVector H) := by
  have heq : reductionPivot1826 = (fun u v => (normalNode9130).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9130).moment H = injectiveMoment H reductionPivot1826 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9130).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9130).entries)).symm
  have hshape : reductionPivot1826 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1826 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1826 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection200, oldProjection234, oldProjection233] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1826 (0 : Fin 3)) = canonicalInput11004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1826 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection200 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1826 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11004 hH))).trans (oldProjectionSound200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1826 (1 : Fin 3)) = canonicalInput23338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1826 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1826 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23338 hH))).trans (oldProjectionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1826 (2 : Fin 3)) = canonicalInput23345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1826 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection233 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1826 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23345 hH))).trans (oldProjectionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9130).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1826 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9130).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1826 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection1826 ![oldProjection200, oldProjection234, oldProjection233]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1827 : Integer.Sparse (Fin 1613) := [(23, -6), (104, 1), (703, 1), (704, 1)]

def reductionPivot1827 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 2, -2], ![0, -2, 3, -1], ![2, 1, -5, 2]]

theorem reductionSound1827 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9131).moment H =
      Integer.Sparse.eval reductionProjection1827 (momentVector H) := by
  have heq : reductionPivot1827 = (fun u v => (normalNode9131).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9131).moment H = injectiveMoment H reductionPivot1827 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9131).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9131).entries)).symm
  have hshape : reductionPivot1827 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1827 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1827 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection74, oldProjection74, oldProjection72] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1827 (0 : Fin 3)) = canonicalInput11605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1827 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection74 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1827 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection74 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11605 hH))).trans (oldProjectionSound74 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1827 (1 : Fin 3)) = canonicalInput23380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1827 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection74 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1827 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection74 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23380 hH))).trans (oldProjectionSound74 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1827 (2 : Fin 3)) = canonicalInput23396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1827 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection72 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1827 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection72 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23396 hH))).trans (oldProjectionSound72 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9131).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1827 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9131).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1827 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1827 ![oldProjection74, oldProjection74, oldProjection72]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1828 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 20), (20, -1), (23, 144), (94, -10), (104, -16), (243, -16), (246, -16), (698, -16), (703, -16), (704, -80), (1054, 48), (1251, -9), (1278, 96)]

def reductionPivot1828 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -2, 5], ![0, 2, 1, -3], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound1828 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1099).moment H =
      Integer.Sparse.eval reductionProjection1828 (momentVector H) := by
  have heq : reductionPivot1828 = (fun u v => (normalNode1099).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1099).moment H = injectiveMoment H reductionPivot1828 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1099).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1828 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1828 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1828 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1080, reductionProjection1826, reductionProjection1827, oldProjection886] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1828 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1727 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1828 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1080 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1828 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1727 hH))).trans (oldProjectionSound1080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1828 (1 : Fin 4)) = canonicalInput2487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1828 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1826 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1828 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2487 hH))).trans (reductionSound1826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1828 (2 : Fin 4)) = canonicalInput2485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1828 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1827 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1828 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2485 hH))).trans (reductionSound1827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1828 (3 : Fin 4)) = canonicalInput2484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1828 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection886 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1828 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2484 hH))).trans (oldProjectionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1099).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1828 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1099).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1828 (j : Fin 4)))
      2 288 288 2 ![72, 144, 9, 144] ![4, 2, 32, 2] reductionProjection1828 ![oldProjection1080, reductionProjection1826, reductionProjection1827, oldProjection886]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1829 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -340), (4, 5), (19, -440), (20, 65), (23, -1680), (94, 150), (104, 720), (105, 320), (106, 80), (108, 640), (241, 400), (243, 480), (246, 160), (247, 160), (250, 720), (698, 320), (703, 320), (704, 720), (1054, -960), (1251, 100), (1278, -960)]

def reductionPivot1829 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1829 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1024).moment H =
      Integer.Sparse.eval reductionProjection1829 (momentVector H) := by
  have heq : reductionPivot1829 = (fun u v => (normalNode1024).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1024).moment H = injectiveMoment H reductionPivot1829 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1024).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1829 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1829 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1829 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1441, reductionProjection1823, reductionProjection1825, oldProjection1450, reductionProjection1828] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1829 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw981 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1441 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1441 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical981 hH))).trans (oldProjectionSound1441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1829 (1 : Fin 5)) = (normalNode1057).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1823 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1829 (2 : Fin 5)) = canonicalInput2374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1825 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2374 hH))).trans (reductionSound1825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1829 (3 : Fin 5)) = canonicalInput2379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2379 hH))).trans (oldProjectionSound1450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1829 (4 : Fin 5)) = canonicalInput2380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1828 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1829 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2380 hH))).trans (reductionSound1828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1024).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1829 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1024).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1829 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 1440, 1440, 288] ![10, 5, 1, 1, 5] reductionProjection1829 ![oldProjection1441, reductionProjection1823, reductionProjection1825, oldProjection1450, reductionProjection1828]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1830 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 60), (19, 160), (20, -20), (94, -70), (104, -80), (108, -400), (247, -240), (252, -720), (703, -80), (704, -80), (1251, -55), (1278, 240)]

def reductionPivot1830 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound1830 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1025).moment H =
      Integer.Sparse.eval reductionProjection1830 (momentVector H) := by
  have heq : reductionPivot1830 = (fun u v => (normalNode1025).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1025).moment H = injectiveMoment H reductionPivot1830 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1025).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1830 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1830 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1830 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection640, reductionProjection1776, oldProjection889, reductionProjection1778] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1830 (0 : Fin 4)) = canonicalInput1096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1830 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection640 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1830 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1096 hH))).trans (reductionSound640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1830 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code252).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1830 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1776 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1830 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1830 (2 : Fin 4)) = canonicalInput2386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1830 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection889 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1830 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection889 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2386 hH))).trans (oldProjectionSound889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1830 (3 : Fin 4)) = canonicalInput2389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1830 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1830 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2389 hH))).trans (reductionSound1778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1025).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1830 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1025).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1830 (j : Fin 4)))
      2 1440 1440 2 ![72, 1, 720, 72] ![20, 1440, 2, 20] reductionProjection1830 ![reductionProjection640, reductionProjection1776, oldProjection889, reductionProjection1778]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1831 : Integer.Sparse (Fin 1613) := [(26, -2), (75, 3), (88, -1), (104, -3), (105, -2), (241, -1), (243, -3), (253, -9)]

def reductionPivot1831 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, 0, 0, -2]]

theorem reductionSound1831 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1059).moment H =
      Integer.Sparse.eval reductionProjection1831 (momentVector H) := by
  have heq : reductionPivot1831 = (fun u v => (normalNode1059).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1059).moment H = injectiveMoment H reductionPivot1831 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1059).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1831 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1831 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1831 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection665, oldProjection754, reductionProjection1755, reductionProjection1749] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1831 (0 : Fin 4)) = canonicalInput5970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1831 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection665 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1831 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5970 hH))).trans (reductionSound665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1831 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1455 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1831 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection754 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1831 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1455 hH))).trans (oldProjectionSound754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1831 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code253).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1831 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1755 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1831 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1831 (3 : Fin 4)) = canonicalInput2333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1831 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1749 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1831 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2333 hH))).trans (reductionSound1749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1059).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1831 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1059).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1831 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection1831 ![reductionProjection665, oldProjection754, reductionProjection1755, reductionProjection1749]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1832 : Integer.Sparse (Fin 1613) := [(19, 8), (26, -16), (94, -3), (104, -32), (105, -32), (108, -16), (243, -32), (698, -16), (1251, 1)]

def reductionPivot1832 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, 0, -1, 0]]

theorem reductionSound1832 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6310).moment H =
      Integer.Sparse.eval reductionProjection1832 (momentVector H) := by
  have heq : reductionPivot1832 = (fun u v => (normalNode6310).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6310).moment H = injectiveMoment H reductionPivot1832 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6310).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1832 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1832 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1832 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection775, reductionProjection665, reductionProjection667, oldProjection754] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1832 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node775⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1832 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection775 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1832 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1832 (1 : Fin 4)) = (normalNode6332).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1832 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection665 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1832 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1832 (2 : Fin 4)) = (normalNode6325).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1832 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection667 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1832 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection667 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1832 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node754⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1832 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection754 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1832 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6310).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1832 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6310).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1832 (j : Fin 4)))
      2 288 288 2 ![72, 9, 144, 9] ![4, 32, 2, 32] reductionProjection1832 ![oldProjection775, reductionProjection665, reductionProjection667, oldProjection754]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1833 : Integer.Sparse (Fin 1613) := [(19, 12), (23, 48), (94, -3), (104, -32), (105, -48), (108, -32), (241, -16), (247, -16), (256, -144), (1251, -3)]

def reductionPivot1833 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound1833 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1102).moment H =
      Integer.Sparse.eval reductionProjection1833 (momentVector H) := by
  have heq : reductionPivot1833 = (fun u v => (normalNode1102).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1102).moment H = injectiveMoment H reductionPivot1833 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1102).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1833 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1833 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1833 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection667, oldProjection752, reductionProjection1758, oldProjection754] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1833 (0 : Fin 4)) = canonicalInput5996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1833 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection667 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1833 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection667 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5996 hH))).trans (reductionSound667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1833 (1 : Fin 4)) = canonicalInput2457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1833 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1833 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2457 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1833 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code256).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1833 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1758 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1833 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1833 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1455 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1833 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection754 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1833 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1455 hH))).trans (oldProjectionSound754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1102).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1833 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1102).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1833 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 9] ![2, 4, 288, 32] reductionProjection1833 ![reductionProjection667, oldProjection752, reductionProjection1758, oldProjection754]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1834 : Integer.Sparse (Fin 1613) := [(19, -28), (23, -96), (26, 48), (75, -48), (88, 16), (94, 9), (102, -48), (104, 112), (105, 96), (108, 64), (111, 144), (241, 96), (243, 96), (247, 16), (253, 144), (256, 144), (698, 32), (1251, 1)]

def reductionPivot1834 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]

theorem reductionSound1834 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1026).moment H =
      Integer.Sparse.eval reductionProjection1834 (momentVector H) := by
  have heq : reductionPivot1834 = (fun u v => (normalNode1026).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1026).moment H = injectiveMoment H reductionPivot1834 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1026).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1834 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1834 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 9, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1834 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1446, reductionProjection1831, oldProjection754, reductionProjection1832, reductionProjection1833] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1834 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1446⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1446 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1834 (1 : Fin 5)) = (normalNode1059).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1831 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1834 (2 : Fin 5)) = canonicalInput2390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection754 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2390 hH))).trans (oldProjectionSound754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1834 (3 : Fin 5)) = canonicalInput2396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1832 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1832 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2396 hH))).trans (reductionSound1832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1834 (4 : Fin 5)) = (normalNode1102).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1833 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1834 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1026).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1834 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1026).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1834 (j : Fin 5)))
      1 288 288 1 ![288, 18, 9, 288, 288] ![1, 16, 32, 1, 1] reductionProjection1834 ![oldProjection1446, reductionProjection1831, oldProjection754, reductionProjection1832, reductionProjection1833]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1835 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 6), (20, -1), (26, -8), (75, 24), (88, -8), (94, -1), (101, 24), (104, -24), (105, -24), (108, -16), (241, -16), (243, -16), (255, -72), (1226, -8)]

def reductionPivot1835 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound1835 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1060).moment H =
      Integer.Sparse.eval reductionProjection1835 (momentVector H) := by
  have heq : reductionPivot1835 = (fun u v => (normalNode1060).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1060).moment H = injectiveMoment H reductionPivot1835 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1060).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1835 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1835 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1835 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1805, oldProjection751, reductionProjection1775, reductionProjection1769] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1835 (0 : Fin 4)) = canonicalInput5973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1835 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1805 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1835 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5973 hH))).trans (reductionSound1805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1835 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1456 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1835 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection751 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1835 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1456 hH))).trans (oldProjectionSound751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1835 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code255).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1835 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1775 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1835 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1835 (3 : Fin 4)) = canonicalInput2335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1835 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1769 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1835 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2335 hH))).trans (reductionSound1769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1060).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1835 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1060).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1835 (j : Fin 4)))
      2 144 144 2 ![144, 144, 1, 9] ![1, 1, 144, 16] reductionProjection1835 ![reductionProjection1805, oldProjection751, reductionProjection1775, reductionProjection1769]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1836 : Integer.Sparse (Fin 1613) := [(19, 16), (94, -5), (104, -80), (105, -32), (108, -48), (119, -144), (241, -48), (248, -144), (1251, -1)]

def reductionPivot1836 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound1836 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1104).moment H =
      Integer.Sparse.eval reductionProjection1836 (momentVector H) := by
  have heq : reductionPivot1836 = (fun u v => (normalNode1104).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1104).moment H = injectiveMoment H reductionPivot1836 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1104).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1836 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1836 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1836 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1038, oldProjection393, oldProjection751, reductionProjection1750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1836 (0 : Fin 4)) = canonicalInput6003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1836 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1038 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1836 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6003 hH))).trans (oldProjectionSound1038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1836 (1 : Fin 4)) = canonicalInput2462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1836 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection393 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1836 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2462 hH))).trans (oldProjectionSound393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1836 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1456 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1836 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection751 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1836 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1456 hH))).trans (oldProjectionSound751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1836 (3 : Fin 4)) = canonicalInput2408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1836 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1836 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2408 hH))).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1104).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1836 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1104).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1836 (j : Fin 4)))
      2 288 288 2 ![72, 1, 144, 1] ![4, 288, 2, 288] reductionProjection1836 ![oldProjection1038, oldProjection393, oldProjection751, reductionProjection1750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1837 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -10), (19, -100), (20, 5), (23, -240), (26, 40), (75, -120), (88, 40), (94, 30), (101, -120), (102, -120), (104, 320), (105, 200), (108, 360), (113, 360), (119, 360), (241, 280), (243, 120), (247, 200), (248, 360), (255, 360), (698, 40), (1226, 40), (1251, 20)]

def reductionPivot1837 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound1837 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1027).moment H =
      Integer.Sparse.eval reductionProjection1837 (momentVector H) := by
  have heq : reductionPivot1837 = (fun u v => (normalNode1027).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1027).moment H = injectiveMoment H reductionPivot1837 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1027).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1837 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1837 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 144, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1837 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1447, reductionProjection1835, oldProjection751, reductionProjection1836, reductionProjection690] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1837 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1447⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1447 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1837 (1 : Fin 5)) = (normalNode1060).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1835 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1837 (2 : Fin 5)) = canonicalInput2391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection751 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2391 hH))).trans (oldProjectionSound751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1837 (3 : Fin 5)) = (normalNode1104).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1836 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1837 (4 : Fin 5)) = canonicalInput2397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection690 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1837 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2397 hH))).trans (reductionSound690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1027).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1837 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1027).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1837 (j : Fin 5)))
      1 720 1440 2 ![1440, 144, 144, 288, 1440] ![1, 10, 10, 5, 1] reductionProjection1837 ![oldProjection1447, reductionProjection1835, oldProjection751, reductionProjection1836, reductionProjection690]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1838 : Integer.Sparse (Fin 1613) := [(23, -3), (26, 1), (75, -3), (243, 1), (703, 1)]

def reductionPivot1838 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 3, 0], ![0, 1, 2, -3], ![2, 1, -5, 2]]

theorem reductionSound1838 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode8900).moment H =
      Integer.Sparse.eval reductionProjection1838 (momentVector H) := by
  have heq : reductionPivot1838 = (fun u v => (normalNode8900).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8900).moment H = injectiveMoment H reductionPivot1838 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8900).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode8900).entries)).symm
  have hshape : reductionPivot1838 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1838 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1838 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection399, oldProjection74, oldProjection76] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1838 (0 : Fin 3)) = canonicalInput2253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1838 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection399 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1838 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2253 hH))).trans (reductionSound399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1838 (1 : Fin 3)) = canonicalInput14158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1838 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection74 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1838 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection74 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14158 hH))).trans (oldProjectionSound74 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1838 (2 : Fin 3)) = canonicalInput14170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1838 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection76 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1838 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection76 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14170 hH))).trans (oldProjectionSound76 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode8900).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1838 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8900).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1838 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1838 ![reductionProjection399, oldProjection74, oldProjection76]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1839 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 12), (20, -3), (23, 48), (26, -32), (75, 48), (88, -16), (94, 2), (104, -16), (105, -32), (108, -16), (241, -32), (243, -64), (247, -16), (255, -144), (703, -16), (1251, -3)]

def reductionPivot1839 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound1839 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1062).moment H =
      Integer.Sparse.eval reductionProjection1839 (momentVector H) := by
  have heq : reductionPivot1839 = (fun u v => (normalNode1062).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1062).moment H = injectiveMoment H reductionPivot1839 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1062).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1839 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1839 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1839 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1004, reductionProjection1805, reductionProjection1775, reductionProjection1838] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1839 (0 : Fin 4)) = canonicalInput6197.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1839 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1004 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1839 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1004 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6197 hH))).trans (oldProjectionSound1004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1839 (1 : Fin 4)) = canonicalInput2418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1839 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1805 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1839 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2418 hH))).trans (reductionSound1805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1839 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code255).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1839 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1775 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1839 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1839 (3 : Fin 4)) = canonicalInput2334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1839 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1838 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1839 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2334 hH))).trans (reductionSound1838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1062).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1839 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1062).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1839 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 9] ![2, 2, 288, 32] reductionProjection1839 ![oldProjection1004, reductionProjection1805, reductionProjection1775, reductionProjection1838]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1840 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 8), (20, -1), (23, 48), (94, -2), (104, -64), (105, -32), (108, -96), (1251, -1)]

def reductionPivot1840 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, 0, 0, -1]]

theorem reductionSound1840 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6320).moment H =
      Integer.Sparse.eval reductionProjection1840 (momentVector H) := by
  have heq : reductionPivot1840 = (fun u v => (normalNode6320).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6320).moment H = injectiveMoment H reductionPivot1840 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6320).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1840 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1840 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1840 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection890, oldProjection755, oldProjection754, oldProjection752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1840 (0 : Fin 4)) = canonicalInput14264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1840 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1840 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14264 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1840 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node755⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1840 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection755 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1840 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1840 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node754⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1840 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection754 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1840 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1840 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1840 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1840 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6320).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1840 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6320).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1840 (j : Fin 4)))
      2 288 288 2 ![144, 9, 9, 72] ![2, 32, 32, 4] reductionProjection1840 ![oldProjection890, oldProjection755, oldProjection754, oldProjection752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1841 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -100), (19, -440), (20, 30), (23, -960), (26, 240), (75, -240), (88, 80), (94, 105), (102, -240), (104, 1600), (105, 1040), (108, 1440), (113, 720), (241, 1120), (243, 560), (247, 480), (255, 720), (698, 160), (703, 80), (1251, 45)]

def reductionPivot1841 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound1841 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1028).moment H =
      Integer.Sparse.eval reductionProjection1841 (momentVector H) := by
  have heq : reductionPivot1841 = (fun u v => (normalNode1028).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1028).moment H = injectiveMoment H reductionPivot1841 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1028).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1841 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1841 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 36, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1841 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1447, reductionProjection1839, reductionProjection1806, oldProjection1442, reductionProjection1840] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1841 (0 : Fin 5)) = canonicalInput1104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1447 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1104 hH))).trans (oldProjectionSound1447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1841 (1 : Fin 5)) = (normalNode1062).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1839 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1841 (2 : Fin 5)) = canonicalInput2394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1806 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2394 hH))).trans (reductionSound1806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1841 (3 : Fin 5)) = canonicalInput2399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1442 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2399 hH))).trans (oldProjectionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1841 (4 : Fin 5)) = canonicalInput2400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1840 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1841 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2400 hH))).trans (reductionSound1840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1028).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1841 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1028).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1841 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 36, 288] ![1, 5, 1, 40, 5] reductionProjection1841 ![oldProjection1447, reductionProjection1839, reductionProjection1806, oldProjection1442, reductionProjection1840]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1842 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 3), (20, -1), (26, -4), (75, 12), (88, -8), (94, 1), (101, 12), (105, -4), (241, -4), (243, -20), (255, -36), (703, -4), (1226, -8)]

def reductionPivot1842 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound1842 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1063).moment H =
      Integer.Sparse.eval reductionProjection1842 (momentVector H) := by
  have heq : reductionPivot1842 = (fun u v => (normalNode1063).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1063).moment H = injectiveMoment H reductionPivot1842 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1063).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1842 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1842 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1842 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection898, reductionProjection670, reductionProjection1775, reductionProjection1769] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1842 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2938 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1842 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1842 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2938 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1842 (1 : Fin 4)) = canonicalInput2419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1842 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1842 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2419 hH))).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1842 (2 : Fin 4)) = canonicalInput2336.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1842 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1775 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1842 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2336 hH))).trans (reductionSound1775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1842 (3 : Fin 4)) = canonicalInput2335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1842 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1769 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1842 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2335 hH))).trans (reductionSound1769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1063).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1842 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1063).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1842 (j : Fin 4)))
      2 72 144 4 ![144, 144, 1, 9] ![1, 1, 144, 16] reductionProjection1842 ![oldProjection898, reductionProjection670, reductionProjection1775, reductionProjection1769]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1843 : Integer.Sparse (Fin 1613) := [(19, 16), (23, 48), (94, -5), (104, -16), (108, -16), (241, -64), (243, -16), (247, -32), (248, -144), (262, -144), (698, -16), (1251, -1)]

def reductionPivot1843 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound1843 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1107).moment H =
      Integer.Sparse.eval reductionProjection1843 (momentVector H) := by
  have heq : reductionPivot1843 = (fun u v => (normalNode1107).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1107).moment H = injectiveMoment H reductionPivot1843 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1107).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1843 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1843 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1843 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1113, reductionProjection1812, oldProjection752, reductionProjection1750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1843 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2986 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1843 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1843 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2986 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1843 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1843 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1843 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1843 (2 : Fin 4)) = canonicalInput2410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1843 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1843 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2410 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1843 (3 : Fin 4)) = canonicalInput2408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1843 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1843 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2408 hH))).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1107).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1843 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1107).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1843 (j : Fin 4)))
      2 288 288 2 ![144, 1, 72, 1] ![2, 288, 4, 288] reductionProjection1843 ![oldProjection1113, reductionProjection1812, oldProjection752, reductionProjection1750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1844 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -80), (19, -380), (20, 45), (23, -960), (26, 160), (75, -240), (88, 160), (94, 70), (101, -240), (102, -240), (104, 720), (105, 480), (108, 400), (113, 720), (241, 1040), (243, 880), (247, 240), (248, 720), (255, 720), (262, 720), (698, 480), (703, 160), (704, 240), (1226, 160), (1251, 15), (1278, -240)]

def reductionPivot1844 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound1844 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1029).moment H =
      Integer.Sparse.eval reductionProjection1844 (momentVector H) := by
  have heq : reductionPivot1844 = (fun u v => (normalNode1029).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1029).moment H = injectiveMoment H reductionPivot1844 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1029).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1844 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1844 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1844 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1449, reductionProjection1842, reductionProjection1811, reductionProjection1843, oldProjection2386] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1844 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1449⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1844 (1 : Fin 5)) = (normalNode1063).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1842 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1844 (2 : Fin 5)) = canonicalInput2395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1811 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2395 hH))).trans (reductionSound1811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1844 (3 : Fin 5)) = (normalNode1107).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1843 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1844 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1454 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2386 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1844 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1454 hH))).trans (oldProjectionSound2386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1029).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1844 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1029).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1844 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 1440, 288, 288] ![1, 20, 1, 5, 5] reductionProjection1844 ![oldProjection1449, reductionProjection1842, reductionProjection1811, reductionProjection1843, oldProjection2386]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1845 : Integer.Sparse (Fin 1613) := [(23, 3), (26, -1), (75, 3), (88, -1), (101, 3), (102, 3), (105, -1), (106, -1), (241, -1), (243, -1), (254, -9), (698, -1), (703, -1), (1226, -1)]

def reductionPivot1845 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -2, 5], ![0, -1, 3, -2], ![0, 2, 0, -2], ![1, 0, 0, -1]]

theorem reductionSound1845 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1065).moment H =
      Integer.Sparse.eval reductionProjection1845 (momentVector H) := by
  have heq : reductionPivot1845 = (fun u v => (normalNode1065).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1065).moment H = injectiveMoment H reductionPivot1845 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1065).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1845 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1845 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1845 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection693, oldProjection753, reductionProjection1769, reductionProjection1763] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1845 (0 : Fin 4)) = canonicalInput14239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1845 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection693 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1845 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14239 hH))).trans (reductionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1845 (1 : Fin 4)) = canonicalInput2493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1845 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection753 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1845 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2493 hH))).trans (oldProjectionSound753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1845 (2 : Fin 4)) = canonicalInput2337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1845 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1769 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1845 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2337 hH))).trans (reductionSound1769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1845 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code254).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1845 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1763 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1845 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1065).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1845 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1065).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1845 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection1845 ![reductionProjection693, oldProjection753, reductionProjection1769, reductionProjection1763]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1846 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (19, 80), (20, -5), (23, 240), (94, -30), (102, 240), (104, -320), (105, -80), (108, -400), (241, -240), (243, -80), (247, -160), (698, -80), (1251, -10)]

def reductionPivot1846 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound1846 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6319).moment H =
      Integer.Sparse.eval reductionProjection1846 (momentVector H) := by
  have heq : reductionPivot1846 = (fun u v => (normalNode6319).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6319).moment H = injectiveMoment H reductionPivot1846 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6319).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1846 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1846 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1846 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection890, oldProjection750, oldProjection753, oldProjection751] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1846 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1846 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1846 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1846 (1 : Fin 4)) = canonicalInput12875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1846 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1846 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12875 hH))).trans (oldProjectionSound750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1846 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node753⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1846 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection753 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1846 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1846 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5567 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1846 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection751 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1846 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5567 hH))).trans (oldProjectionSound751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6319).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1846 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6319).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1846 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 9, 144] ![10, 2, 160, 10] reductionProjection1846 ![oldProjection890, oldProjection750, oldProjection753, oldProjection751]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1847 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -1), (104, -16), (105, -16), (111, -144), (113, -144), (241, -32), (243, -16), (248, -144), (1054, 48), (1251, -1)]

def reductionPivot1847 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, -1, 1, -1]]

theorem reductionSound1847 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1110).moment H =
      Integer.Sparse.eval reductionProjection1847 (momentVector H) := by
  have heq : reductionPivot1847 = (fun u v => (normalNode1110).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1110).moment H = injectiveMoment H reductionPivot1847 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1110).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1847 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1847 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1847 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection631, oldProjection392, reductionProjection1750, oldProjection391] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1847 (0 : Fin 4)) = (normalNode7220).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1847 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection631 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1847 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1847 (1 : Fin 4)) = canonicalInput2498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1847 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1847 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2498 hH))).trans (oldProjectionSound392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1847 (2 : Fin 4)) = canonicalInput2412.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1847 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1847 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2412 hH))).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1847 (3 : Fin 4)) = canonicalInput2406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1847 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection391 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1847 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2406 hH))).trans (oldProjectionSound391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1110).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1847 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1110).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1847 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection1847 ![reductionProjection631, oldProjection392, reductionProjection1750, oldProjection391]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1848 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (19, -180), (20, 5), (23, -960), (26, 80), (75, -240), (88, 80), (94, 65), (101, -240), (102, -960), (104, 1040), (105, 720), (106, 80), (108, 560), (111, 2160), (113, 720), (241, 800), (243, 400), (247, 160), (248, 720), (254, 720), (698, 320), (703, 80), (1054, -240), (1226, 80), (1251, 5)]

def reductionPivot1848 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1848 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1030).moment H =
      Integer.Sparse.eval reductionProjection1848 (momentVector H) := by
  have heq : reductionPivot1848 = (fun u v => (normalNode1030).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1030).moment H = injectiveMoment H reductionPivot1848 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1030).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1848 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1848 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1848 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1446, reductionProjection1845, reductionProjection1846, oldProjection1446, reductionProjection1847] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1848 (0 : Fin 5)) = canonicalInput1106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1446 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1106 hH))).trans (oldProjectionSound1446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1848 (1 : Fin 5)) = (normalNode1065).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1845 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1848 (2 : Fin 5)) = canonicalInput2401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1846 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2401 hH))).trans (reductionSound1846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1848 (3 : Fin 5)) = canonicalInput2404.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1446 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2404 hH))).trans (oldProjectionSound1446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1848 (4 : Fin 5)) = canonicalInput2405.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1848 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2405 hH))).trans (reductionSound1847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1030).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1848 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1030).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1848 (j : Fin 5)))
      1 1440 1440 1 ![288, 18, 1440, 288, 288] ![5, 80, 1, 5, 5] reductionProjection1848 ![oldProjection1446, reductionProjection1845, reductionProjection1846, oldProjection1446, reductionProjection1847]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1849 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 40), (19, 60), (20, -10), (94, -30), (104, -160), (108, -80), (247, -80), (703, -80), (704, -80), (1251, -25)]

def reductionPivot1849 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -2, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound1849 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6315).moment H =
      Integer.Sparse.eval reductionProjection1849 (momentVector H) := by
  have heq : reductionPivot1849 = (fun u v => (normalNode6315).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6315).moment H = injectiveMoment H reductionPivot1849 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6315).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1849 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1849 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1849 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1170, reductionProjection675, reductionProjection677, oldProjection890] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1849 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5627 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1849 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1849 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5627 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1849 (1 : Fin 4)) = (normalNode6335).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1849 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1849 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1849 (2 : Fin 4)) = canonicalInput12874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1849 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection677 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1849 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12874 hH))).trans (reductionSound677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1849 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5571 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1849 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1849 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5571 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6315).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1849 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6315).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1849 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 144] ![2, 10, 10, 10] reductionProjection1849 ![oldProjection1170, reductionProjection675, reductionProjection677, oldProjection890]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1850 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 1), (94, 2), (108, -8), (1251, 1)]

def reductionPivot1850 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -1, -3, 5], ![0, 1, 1, -2], ![0, 1, 2, -3]]

theorem reductionSound1850 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7228).moment H =
      Integer.Sparse.eval reductionProjection1850 (momentVector H) := by
  have heq : reductionPivot1850 = (fun u v => (normalNode7228).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7228).moment H = injectiveMoment H reductionPivot1850 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7228).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot1850 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1850 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1850 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection30, oldProjection123, oldProjection123] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1850 (0 : Fin 3)) = canonicalInput23933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1850 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection30 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1850 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection30 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23933 hH))).trans (oldProjectionSound30 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1850 (1 : Fin 3)) = canonicalInput14295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1850 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1850 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14295 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1850 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6001 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1850 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1850 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6001 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7228).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1850 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7228).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1850 (j : Fin 3)))
      3 72 144 6 ![1, 48, 48] ![144, 3, 3] reductionProjection1850 ![oldProjection30, oldProjection123, oldProjection123]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1851 : Integer.Sparse (Fin 1613) := [(3, 16), (19, 16), (20, -3), (94, -6), (104, -16), (108, -32), (247, -32), (263, -144), (1251, -3), (1278, 48)]

def reductionPivot1851 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 2, -3]]

theorem reductionSound1851 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1118).moment H =
      Integer.Sparse.eval reductionProjection1851 (momentVector H) := by
  have heq : reductionPivot1851 = (fun u v => (normalNode1118).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1118).moment H = injectiveMoment H reductionPivot1851 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1118).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1851 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1851 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1851 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1850, reductionProjection1817, oldProjection890, reductionProjection640] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1851 (0 : Fin 4)) = canonicalInput6018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1851 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1850 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1851 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6018 hH))).trans (reductionSound1850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1851 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code263).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1851 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1817 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1851 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1851 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1457 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1851 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1851 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1457 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1851 (3 : Fin 4)) = canonicalInput2449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1851 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection640 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1851 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2449 hH))).trans (reductionSound640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1118).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1851 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1118).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1851 (j : Fin 4)))
      2 288 288 2 ![72, 1, 144, 72] ![4, 288, 2, 4] reductionProjection1851 ![reductionProjection1850, reductionProjection1817, oldProjection890, reductionProjection640]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1852 : Integer.Sparse (Fin 1613) := [(3, 4), (19, -4), (94, -3), (105, 16), (108, 16), (1251, 1)]

def reductionPivot1852 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -3, 5], ![0, 0, 3, -3], ![1, 0, 1, -2]]

theorem reductionSound1852 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7222).moment H =
      Integer.Sparse.eval reductionProjection1852 (momentVector H) := by
  have heq : reductionPivot1852 = (fun u v => (normalNode7222).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7222).moment H = injectiveMoment H reductionPivot1852 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7222).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot1852 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1852 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1852 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection49, oldProjection123, oldProjection129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1852 (0 : Fin 3)) = canonicalInput19159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1852 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1852 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19159 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1852 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6002 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1852 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1852 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6002 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1852 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6000 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1852 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1852 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6000 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7222).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1852 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7222).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1852 (j : Fin 3)))
      3 144 144 3 ![16, 48, 24] ![9, 3, 6] reductionProjection1852 ![oldProjection49, oldProjection123, oldProjection129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1853 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 16), (20, -4), (94, -1), (101, 96), (104, -16), (105, -16), (108, -32), (243, -32), (703, -16), (1222, 48), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot1853 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound1853 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1120).moment H =
      Integer.Sparse.eval reductionProjection1853 (momentVector H) := by
  have heq : reductionPivot1853 = (fun u v => (normalNode1120).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1120).moment H = injectiveMoment H reductionPivot1853 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1120).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1853 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1853 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1853 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1852, reductionProjection1819, oldProjection890, reductionProjection1801] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1853 (0 : Fin 4)) = canonicalInput6020.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1853 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1852 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1853 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6020 hH))).trans (reductionSound1852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1853 (1 : Fin 4)) = canonicalInput2478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1853 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1819 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1853 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2478 hH))).trans (reductionSound1819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1853 (2 : Fin 4)) = canonicalInput2453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1853 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1853 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2453 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1853 (3 : Fin 4)) = canonicalInput2451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1853 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1801 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1853 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2451 hH))).trans (reductionSound1801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1120).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1853 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1120).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1853 (j : Fin 4)))
      2 288 288 2 ![144, 9, 144, 144] ![2, 32, 2, 2] reductionProjection1853 ![reductionProjection1852, reductionProjection1819, oldProjection890, reductionProjection1801]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1854 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -80), (19, -150), (20, 25), (23, -240), (94, 55), (101, -240), (104, 120), (105, 40), (108, 240), (243, 120), (247, 160), (263, 360), (698, 40), (703, 80), (704, 120), (1054, -120), (1222, -120), (1225, 40), (1226, 40), (1251, 45), (1278, -240)]

def reductionPivot1854 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -2, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound1854 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1031).moment H =
      Integer.Sparse.eval reductionProjection1854 (momentVector H) := by
  have heq : reductionPivot1854 = (fun u v => (normalNode1031).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1031).moment H = injectiveMoment H reductionPivot1854 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1031).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1854 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1854 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1854 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1450, oldProjection890, reductionProjection1849, reductionProjection1851, reductionProjection1853] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1854 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1450⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1854 (1 : Fin 5)) = canonicalInput2338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2338 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1854 (2 : Fin 5)) = canonicalInput2422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1849 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1849 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2422 hH))).trans (reductionSound1849 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1854 (3 : Fin 5)) = (normalNode1118).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1851 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1854 (4 : Fin 5)) = canonicalInput2426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1853 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1854 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2426 hH))).trans (reductionSound1853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1031).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1854 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1031).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1854 (j : Fin 5)))
      1 720 1440 2 ![1440, 144, 1440, 288, 288] ![1, 10, 1, 5, 5] reductionProjection1854 ![oldProjection1450, oldProjection890, reductionProjection1849, reductionProjection1851, reductionProjection1853]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1855 : Integer.Sparse (Fin 1613) := [(19, 12), (23, 48), (94, -3), (104, -32), (108, -80), (241, -16), (247, -16), (264, -144), (1251, -3)]

def reductionPivot1855 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -2, 5], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 1, -2]]

theorem reductionSound1855 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1119).moment H =
      Integer.Sparse.eval reductionProjection1855 (momentVector H) := by
  have heq : reductionPivot1855 = (fun u v => (normalNode1119).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1119).moment H = injectiveMoment H reductionPivot1855 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1119).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1855 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1855 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1855 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection675, reductionProjection1815, oldProjection755, oldProjection752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1855 (0 : Fin 4)) = canonicalInput6019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1855 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1855 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6019 hH))).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1855 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code264).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1855 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1815 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1855 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1855 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1458 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1855 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection755 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1855 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1458 hH))).trans (oldProjectionSound755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1855 (3 : Fin 4)) = canonicalInput2450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1855 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1855 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2450 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1119).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1855 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1119).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1855 (j : Fin 4)))
      2 288 288 2 ![144, 1, 9, 72] ![2, 288, 32, 4] reductionProjection1855 ![reductionProjection675, reductionProjection1815, oldProjection755, oldProjection752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical017
import NoFourMUBs.Step2.SOS.Canonical018
import NoFourMUBs.Step2.SOS.Canonical019
import NoFourMUBs.Step2.SOS.Canonical023
import NoFourMUBs.Step2.SOS.Canonical037
import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical090
import NoFourMUBs.Step2.SOS.Canonical112
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical221
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical228
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions014
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions020
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical174
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical184
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical187
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical250
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical283
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical311
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical317
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection672 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -3), (22, 48), (23, 48), (26, -16), (42, -16), (94, 1), (105, -16), (117, -144), (243, -48), (700, -16), (703, -16), (704, -16), (1033, 48), (1251, -4), (1278, 48)]

def reductionPivot672 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, -1, 5], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound672 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode384).moment H =
      Integer.Sparse.eval reductionProjection672 (momentVector H) := by
  have heq : reductionPivot672 = (fun u v => (normalNode384).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode384).moment H = injectiveMoment H reductionPivot672 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode384).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot672 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot672 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot672 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection670, oldProjection886, reductionProjection671, reductionProjection622] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot672 (0 : Fin 4)) = canonicalInput2419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot672 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot672 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2419 hH))).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot672 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1023 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot672 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection886 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot672 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1023 hH))).trans (oldProjectionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot672 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code117).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot672 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection671 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot672 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection671 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot672 (3 : Fin 4)) = canonicalInput1116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot672 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection622 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot672 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection622 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1116 hH))).trans (reductionSound622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode384).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot672 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode384).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot672 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 9] ![2, 2, 288, 32] reductionProjection672 ![reductionProjection670, oldProjection886, reductionProjection671, reductionProjection622]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection673 : Integer.Sparse (Fin 1613) := [(19, 4), (23, 24), (94, -1), (104, -8), (108, -8), (109, -72), (113, -72), (119, -72), (241, -8), (247, -8), (1251, -1)]

def reductionPivot673 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, -1, 5], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound673 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode378).moment H =
      Integer.Sparse.eval reductionProjection673 (momentVector H) := by
  have heq : reductionPivot673 = (fun u v => (normalNode378).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode378).moment H = injectiveMoment H reductionPivot673 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode378).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot673 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot673 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot673 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection752, oldProjection393, oldProjection392, reductionProjection623] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot673 (0 : Fin 4)) = canonicalInput2410.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot673 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot673 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2410 hH))).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot673 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node393⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot673 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection393 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot673 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot673 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw994 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot673 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot673 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical994 hH))).trans (oldProjectionSound392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot673 (3 : Fin 4)) = canonicalInput1109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot673 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection623 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot673 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection623 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1109 hH))).trans (reductionSound623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode378).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot673 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode378).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot673 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection673 ![oldProjection752, oldProjection393, oldProjection392, reductionProjection623]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection674 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -4), (19, -56), (20, 3), (22, -48), (23, -240), (26, 16), (38, -48), (42, 16), (94, 24), (102, -96), (104, 64), (105, 32), (108, 80), (109, 144), (113, 432), (117, 144), (119, 144), (130, 144), (238, -48), (241, 128), (243, 112), (247, 80), (698, 112), (700, 32), (703, 16), (704, 64), (1033, -48), (1059, 16), (1251, 10), (1278, -96)]

def reductionPivot674 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound674 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode361).moment H =
      Integer.Sparse.eval reductionProjection674 (momentVector H) := by
  have heq : reductionPivot674 = (fun u v => (normalNode361).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode361).moment H = injectiveMoment H reductionPivot674 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode361).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot674 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot674 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot674 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1478, reductionProjection672, oldProjection1449, reductionProjection673, oldProjection1447] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot674 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1478⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1478 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1478 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot674 (1 : Fin 5)) = (normalNode384).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection672 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot674 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1449⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot674 (3 : Fin 5)) = (normalNode378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection673 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot674 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1447⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1447 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot674 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode361).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot674 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode361).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot674 (j : Fin 5)))
      1 288 1440 5 ![1440, 288, 1440, 144, 1440] ![1, 5, 1, 10, 1] reductionProjection674 ![oldProjection1478, reductionProjection672, oldProjection1449, reductionProjection673, oldProjection1447]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection675 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 16), (247, 16), (1251, 1)]

def reductionPivot675 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, -2, 5], ![0, 1, 1, -2], ![0, 1, 2, -3]]

theorem reductionSound675 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6335).moment H =
      Integer.Sparse.eval reductionProjection675 (momentVector H) := by
  have heq : reductionPivot675 = (fun u v => (normalNode6335).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6335).moment H = injectiveMoment H reductionPivot675 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6335).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot675 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot675 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot675 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection30, oldProjection127, oldProjection124] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot675 (0 : Fin 3)) = canonicalInput23933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot675 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection30 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot675 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection30 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23933 hH))).trans (oldProjectionSound30 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot675 (1 : Fin 3)) = canonicalInput12882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot675 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot675 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12882 hH))).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot675 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5573 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot675 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection124 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot675 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5573 hH))).trans (oldProjectionSound124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6335).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot675 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6335).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot675 (j : Fin 3)))
      3 144 144 3 ![1, 48, 3] ![144, 3, 48] reductionProjection675 ![oldProjection30, oldProjection127, oldProjection124]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection676 : Integer.Sparse (Fin 1613) := [(19, 12), (23, 48), (94, -3), (104, -48), (108, -128), (118, -144), (247, -64), (1251, -3)]

def reductionPivot676 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, -1, 5], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 2, -3]]

theorem reductionSound676 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode387).moment H =
      Integer.Sparse.eval reductionProjection676 (momentVector H) := by
  have heq : reductionPivot676 = (fun u v => (normalNode387).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode387).moment H = injectiveMoment H reductionPivot676 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode387).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot676 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot676 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot676 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection675, reductionProjection652, oldProjection999, oldProjection1240] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot676 (0 : Fin 4)) = canonicalInput2436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot676 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot676 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2436 hH))).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot676 (1 : Fin 4)) = canonicalInput1141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot676 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection652 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot676 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1141 hH))).trans (reductionSound652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot676 (2 : Fin 4)) = canonicalInput1121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot676 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection999 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot676 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1121 hH))).trans (oldProjectionSound999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot676 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1004 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot676 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot676 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1004 hH))).trans (oldProjectionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode387).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot676 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode387).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot676 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 144] ![2, 288, 2, 2] reductionProjection676 ![reductionProjection675, reductionProjection652, oldProjection999, oldProjection1240]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection677 : Integer.Sparse (Fin 1613) := [(19, -12), (94, 1), (703, 16), (1251, 1)]

def reductionPivot677 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -4, 5], ![0, -1, 3, -2], ![1, 0, 1, -2]]

theorem reductionSound677 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9591).moment H =
      Integer.Sparse.eval reductionProjection677 (momentVector H) := by
  have heq : reductionPivot677 = (fun u v => (normalNode9591).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9591).moment H = injectiveMoment H reductionPivot677 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9591).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot677 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot677 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 16, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot677 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection143, oldProjection49, oldProjection77] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot677 (0 : Fin 3)) = canonicalInput22495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot677 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection143 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot677 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22495 hH))).trans (oldProjectionSound143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot677 (1 : Fin 3)) = canonicalInput19159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot677 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot677 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19159 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot677 (2 : Fin 3)) = canonicalInput19157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot677 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection77 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot677 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection77 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19157 hH))).trans (oldProjectionSound77 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9591).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot677 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9591).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot677 (j : Fin 3)))
      3 144 144 3 ![48, 16, 48] ![3, 9, 3] reductionProjection677 ![oldProjection143, oldProjection49, oldProjection77]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection678 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -2), (20, 1), (94, 1), (703, 8), (1033, -24), (1278, -24)]

def reductionPivot678 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![0, -1, 4, -3], ![2, 2, -5, 1]]

theorem reductionSound678 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode8935).moment H =
      Integer.Sparse.eval reductionProjection678 (momentVector H) := by
  have heq : reductionPivot678 = (fun u v => (normalNode8935).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8935).moment H = injectiveMoment H reductionPivot678 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8935).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode8935).entries)).symm
  have hshape : reductionPivot678 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot678 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot678 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection621, oldProjection234, oldProjection235] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot678 (0 : Fin 3)) = canonicalInput4914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot678 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection621 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot678 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4914 hH))).trans (reductionSound621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot678 (1 : Fin 3)) = canonicalInput18003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot678 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot678 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18003 hH))).trans (oldProjectionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot678 (2 : Fin 3)) = canonicalInput18223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot678 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection235 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot678 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18223 hH))).trans (oldProjectionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode8935).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot678 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8935).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot678 (j : Fin 3)))
      3 72 72 3 ![1, 1, 24] ![72, 72, 3] reductionProjection678 ![reductionProjection621, oldProjection234, oldProjection235]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection679 : Integer.Sparse (Fin 1613) := [(3, 20), (19, 32), (20, -4), (94, -7), (244, -16), (693, 48), (700, -16), (701, -16), (703, -32), (1033, 96), (1251, -3), (1278, 96)]

def reductionPivot679 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, -1, 5], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 3, -4]]

theorem reductionSound679 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode386).moment H =
      Integer.Sparse.eval reductionProjection679 (momentVector H) := by
  have heq : reductionPivot679 = (fun u v => (normalNode386).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode386).moment H = injectiveMoment H reductionPivot679 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode386).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot679 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot679 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot679 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection677, reductionProjection655, reductionProjection678, oldProjection1160] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot679 (0 : Fin 4)) = canonicalInput2435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot679 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection677 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot679 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2435 hH))).trans (reductionSound677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot679 (1 : Fin 4)) = canonicalInput1140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot679 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection655 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot679 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1140 hH))).trans (reductionSound655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot679 (2 : Fin 4)) = canonicalInput1120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot679 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection678 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot679 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1120 hH))).trans (reductionSound678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot679 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1003 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot679 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot679 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1003 hH))).trans (oldProjectionSound1160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode386).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot679 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode386).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot679 (j : Fin 4)))
      2 288 288 2 ![144, 9, 72, 72] ![2, 32, 4, 4] reductionProjection679 ![reductionProjection677, reductionProjection655, reductionProjection678, oldProjection1160]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection680 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -65), (19, -105), (20, 15), (23, -300), (38, -120), (94, 50), (104, 100), (108, 280), (118, 180), (243, 40), (244, 20), (247, 160), (693, -60), (698, 40), (700, 60), (701, 20), (703, 40), (704, 120), (1033, -120), (1053, -60), (1054, -120), (1059, 20), (1251, 40), (1278, -240)]

def reductionPivot680 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, -1, 5], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound680 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode366).moment H =
      Integer.Sparse.eval reductionProjection680 (momentVector H) := by
  have heq : reductionPivot680 = (fun u v => (normalNode366).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode366).moment H = injectiveMoment H reductionPivot680 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode366).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot680 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot680 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot680 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1484, oldProjection1450, oldProjection1450, reductionProjection676, reductionProjection679] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot680 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1484⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1484 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot680 (1 : Fin 5)) = canonicalInput1122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1122 hH))).trans (oldProjectionSound1450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot680 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1450⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot680 (3 : Fin 5)) = (normalNode387).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection676 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot680 (4 : Fin 5)) = (normalNode386).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection679 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot680 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode366).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot680 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode366).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot680 (j : Fin 5)))
      1 360 1440 4 ![720, 1440, 1440, 288, 288] ![2, 1, 1, 5, 5] reductionProjection680 ![oldProjection1484, oldProjection1450, oldProjection1450, reductionProjection676, reductionProjection679]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection681 : Integer.Sparse (Fin 1613) := [(3, -1), (19, 1)]

def reductionPivot681 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-1, -2, 3], ![0, -2, 2], ![0, 5, -5]]

theorem reductionSound681 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode7141).moment H =
      Integer.Sparse.eval reductionProjection681 (momentVector H) := by
  have heq : reductionPivot681 = (fun u v => (normalNode7141).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7141).moment H = injectiveMoment H reductionPivot681 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7141).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot681 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot681 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 2, 4] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot681 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection7, oldProjection60, oldProjection48] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot681 (0 : Fin 3)) = canonicalInput23898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot681 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection7 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot681 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection7 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23898 hH))).trans (oldProjectionSound7 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot681 (1 : Fin 3)) = canonicalInput14146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot681 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection60 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot681 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection60 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound14146 hH))).trans (oldProjectionSound60 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot681 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5916 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot681 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection48 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot681 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection48 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5916 hH))).trans (oldProjectionSound48 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7141).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot681 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7141).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot681 (j : Fin 3)))
      3 12 12 3 ![1, 2, 4] ![12, 6, 3] reductionProjection681 ![oldProjection7, oldProjection60, oldProjection48]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection682 : Integer.Sparse (Fin 1613) := [(3, -1), (19, -1), (693, -4)]

def reductionPivot682 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![-1, -2, 5, -2], ![3, 2, -5, 0]]

theorem reductionSound682 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode7931).moment H =
      Integer.Sparse.eval reductionProjection682 (momentVector H) := by
  have heq : reductionPivot682 = (fun u v => (normalNode7931).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7931).moment H = injectiveMoment H reductionPivot682 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7931).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7931).entries)).symm
  have hshape : reductionPivot682 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot682 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 12, 6] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot682 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection633, reductionProjection681, oldProjection282] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot682 (0 : Fin 3)) = canonicalInput7172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot682 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection633 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot682 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7172 hH))).trans (reductionSound633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot682 (1 : Fin 3)) = canonicalInput20703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot682 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection681 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot682 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection681 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20703 hH))).trans (reductionSound681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot682 (2 : Fin 3)) = canonicalInput20707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot682 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection282 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot682 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20707 hH))).trans (oldProjectionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7931).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot682 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7931).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot682 (j : Fin 3)))
      3 12 12 3 ![1, 12, 6] ![12, 1, 2] reductionProjection682 ![reductionProjection633, reductionProjection681, oldProjection282]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection683 : Integer.Sparse (Fin 1613) := [(3, 11), (19, -1), (20, -1), (94, -2), (693, 12), (1053, 12), (1054, 24), (1251, -1)]

def reductionPivot683 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, -1, 5], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 2, -4]]

theorem reductionSound683 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode367).moment H =
      Integer.Sparse.eval reductionProjection683 (momentVector H) := by
  have heq : reductionPivot683 = (fun u v => (normalNode367).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode367).moment H = injectiveMoment H reductionPivot683 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode367).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot683 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot683 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 12] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot683 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1029, oldProjection1030, oldProjection1030, reductionProjection682] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot683 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1118 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot683 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1029 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot683 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1118 hH))).trans (oldProjectionSound1029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot683 (1 : Fin 4)) = canonicalInput1123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot683 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1030 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot683 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1123 hH))).trans (oldProjectionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot683 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw997 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot683 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1030 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot683 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical997 hH))).trans (oldProjectionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot683 (3 : Fin 4)) = canonicalInput1118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot683 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection682 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot683 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1118 hH))).trans (reductionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode367).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot683 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode367).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot683 (j : Fin 4)))
      2 72 144 4 ![72, 144, 144, 12] ![2, 1, 1, 12] reductionProjection683 ![oldProjection1029, oldProjection1030, oldProjection1030, reductionProjection682]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection684 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -12), (20, 1), (94, 4), (104, 32), (108, 48), (1251, 3)]

def reductionPivot684 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -2, 5], ![0, 1, 2, -3], ![1, 0, 1, -2]]

theorem reductionSound684 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6334).moment H =
      Integer.Sparse.eval reductionProjection684 (momentVector H) := by
  have heq : reductionPivot684 = (fun u v => (normalNode6334).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6334).moment H = injectiveMoment H reductionPivot684 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6334).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot684 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot684 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot684 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection123, oldProjection127, oldProjection127] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot684 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6002 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot684 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot684 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6002 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot684 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5576 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot684 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot684 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5576 hH))).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot684 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5574 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot684 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot684 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5574 hH))).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6334).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot684 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6334).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot684 (j : Fin 3)))
      3 144 144 3 ![48, 48, 48] ![3, 3, 3] reductionProjection684 ![oldProjection123, oldProjection127, oldProjection127]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection685 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 16), (20, -1), (23, 48), (94, -5), (104, -80), (105, -32), (108, -128), (120, -144), (241, -32), (247, -32), (1251, -4)]

def reductionPivot685 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, -1, 5], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound685 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode389).moment H =
      Integer.Sparse.eval reductionProjection685 (momentVector H) := by
  have heq : reductionPivot685 = (fun u v => (normalNode389).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode389).moment H = injectiveMoment H reductionPivot685 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode389).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot685 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot685 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot685 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection684, oldProjection1233, reductionProjection658, oldProjection1240] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot685 (0 : Fin 4)) = canonicalInput2463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot685 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection684 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot685 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2463 hH))).trans (reductionSound684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot685 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1027 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot685 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1233 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot685 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1027 hH))).trans (oldProjectionSound1233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot685 (2 : Fin 4)) = canonicalInput1133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot685 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection658 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot685 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection658 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1133 hH))).trans (reductionSound658 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot685 (3 : Fin 4)) = canonicalInput1132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot685 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot685 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1132 hH))).trans (oldProjectionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode389).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot685 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode389).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot685 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 144] ![2, 32, 288, 2] reductionProjection685 ![reductionProjection684, oldProjection1233, reductionProjection658, oldProjection1240]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection686 : Integer.Sparse (Fin 1613) := [(3, -16), (4, 1), (19, 4), (20, 1), (703, 16)]

def reductionPivot686 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, 0, -4, 5], ![0, -1, 3, -2], ![0, 1, 1, -2]]

theorem reductionSound686 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9592).moment H =
      Integer.Sparse.eval reductionProjection686 (momentVector H) := by
  have heq : reductionPivot686 = (fun u v => (normalNode9592).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9592).moment H = injectiveMoment H reductionPivot686 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9592).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot686 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot686 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot686 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection59, oldProjection122, oldProjection77] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot686 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9060 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot686 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection59 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot686 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection59 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9060 hH))).trans (oldProjectionSound59 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot686 (1 : Fin 3)) = canonicalInput19164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot686 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection122 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot686 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19164 hH))).trans (oldProjectionSound122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot686 (2 : Fin 3)) = canonicalInput19157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot686 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection77 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot686 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection77 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19157 hH))).trans (oldProjectionSound77 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9592).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot686 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9592).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot686 (j : Fin 3)))
      3 144 144 3 ![16, 48, 48] ![9, 3, 3] reductionProjection686 ![oldProjection59, oldProjection122, oldProjection77]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection687 : Integer.Sparse (Fin 1613) := [(106, 1), (243, 1), (703, 1), (1033, -3), (1054, -3)]

def reductionPivot687 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![3, -4, 0, 1], ![-1, 5, -2, -2]]

theorem reductionSound687 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9580).moment H =
      Integer.Sparse.eval reductionProjection687 (momentVector H) := by
  have heq : reductionPivot687 = (fun u v => (normalNode9580).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9580).moment H = injectiveMoment H reductionPivot687 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9580).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9580).entries)).symm
  have hshape : reductionPivot687 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot687 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot687 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection621, oldProjection200, oldProjection205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot687 (0 : Fin 3)) = canonicalInput5774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot687 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection621 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot687 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5774 hH))).trans (reductionSound621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot687 (1 : Fin 3)) = canonicalInput18778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot687 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection200 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot687 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18778 hH))).trans (oldProjectionSound200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot687 (2 : Fin 3)) = canonicalInput18782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot687 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection205 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot687 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18782 hH))).trans (oldProjectionSound205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9580).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot687 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9580).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot687 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection687 ![reductionProjection621, oldProjection200, oldProjection205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection688 : Integer.Sparse (Fin 1613) := [(3, 32), (4, -1), (19, 16), (20, -4), (94, -5), (106, -16), (243, -16), (701, -16), (702, 48), (703, -32), (704, -16), (1033, 96), (1054, 48), (1251, -2), (1278, 48)]

def reductionPivot688 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, -1, 5], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]

theorem reductionSound688 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode388).moment H =
      Integer.Sparse.eval reductionProjection688 (momentVector H) := by
  have heq : reductionPivot688 = (fun u v => (normalNode388).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode388).moment H = injectiveMoment H reductionPivot688 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode388).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot688 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot688 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot688 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection686, reductionProjection687, reductionProjection661, oldProjection1160] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot688 (0 : Fin 4)) = canonicalInput2452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot688 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection686 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot688 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2452 hH))).trans (reductionSound686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot688 (1 : Fin 4)) = canonicalInput1142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot688 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection687 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot688 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1142 hH))).trans (reductionSound687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot688 (2 : Fin 4)) = canonicalInput1128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot688 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot688 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1128 hH))).trans (reductionSound661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot688 (3 : Fin 4)) = canonicalInput1126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot688 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot688 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1126 hH))).trans (oldProjectionSound1160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode388).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot688 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode388).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot688 (j : Fin 4)))
      2 288 288 2 ![144, 9, 144, 72] ![2, 32, 2, 4] reductionProjection688 ![reductionProjection686, reductionProjection687, reductionProjection661, oldProjection1160]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection689 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -340), (4, 5), (19, -480), (20, 75), (23, -1200), (38, -480), (94, 170), (104, 640), (105, 320), (106, 80), (108, 880), (120, 720), (241, 400), (243, 320), (247, 320), (698, 240), (700, 80), (701, 80), (702, -240), (703, 160), (704, 560), (1033, -480), (1054, -480), (1061, -240), (1251, 110), (1278, -960)]

def reductionPivot689 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, -1, 5], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound689 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode368).moment H =
      Integer.Sparse.eval reductionProjection689 (momentVector H) := by
  have heq : reductionPivot689 = (fun u v => (normalNode368).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode368).moment H = injectiveMoment H reductionPivot689 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode368).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot689 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot689 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot689 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1486, oldProjection1453, reductionProjection685, oldProjection1450, reductionProjection688] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot689 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot689 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1006 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1453 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1006 hH))).trans (oldProjectionSound1453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot689 (2 : Fin 5)) = (normalNode389).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection685 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot689 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1450⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot689 (4 : Fin 5)) = (normalNode388).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection688 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot689 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode368).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot689 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode368).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot689 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 288, 1440, 288] ![1, 20, 5, 1, 5] reductionProjection689 ![oldProjection1486, oldProjection1453, reductionProjection685, oldProjection1450, reductionProjection688]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection690 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (23, 240), (94, -25), (104, -80), (105, -80), (108, -160), (241, -240), (247, -240), (1251, -10)]

def reductionPivot690 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, -2, 5], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]

theorem reductionSound690 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6322).moment H =
      Integer.Sparse.eval reductionProjection690 (momentVector H) := by
  have heq : reductionPivot690 = (fun u v => (normalNode6322).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6322).moment H = injectiveMoment H reductionPivot690 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6322).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot690 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot690 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot690 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection914, reductionProjection675, reductionProjection667, oldProjection752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot690 (0 : Fin 4)) = canonicalInput14601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot690 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection914 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot690 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14601 hH))).trans (oldProjectionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot690 (1 : Fin 4)) = canonicalInput12877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot690 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot690 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12877 hH))).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot690 (2 : Fin 4)) = (normalNode6325).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot690 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection667 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot690 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection667 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot690 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot690 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection752 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot690 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6322).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot690 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6322).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot690 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 72] ![2, 10, 10, 20] reductionProjection690 ![oldProjection914, reductionProjection675, reductionProjection667, oldProjection752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection691 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -150), (23, -360), (38, -120), (94, 55), (102, -120), (104, 360), (105, 120), (108, 560), (109, 720), (110, 360), (113, 720), (118, 360), (119, 720), (238, -120), (241, 360), (243, 40), (247, 400), (698, 80), (700, 40), (1059, 40), (1251, 35)]

def reductionPivot691 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, -1, 5], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound691 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode375).moment H =
      Integer.Sparse.eval reductionProjection691 (momentVector H) := by
  have heq : reductionPivot691 = (fun u v => (normalNode375).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode375).moment H = injectiveMoment H reductionPivot691 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode375).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot691 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot691 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot691 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection690, oldProjection1452, reductionProjection653, reductionProjection673, oldProjection1447] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot691 (0 : Fin 5)) = canonicalInput2397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection690 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2397 hH))).trans (reductionSound690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot691 (1 : Fin 5)) = canonicalInput1129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1129 hH))).trans (oldProjectionSound1452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot691 (2 : Fin 5)) = canonicalInput1105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection653 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1105 hH))).trans (reductionSound653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot691 (3 : Fin 5)) = canonicalInput1102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection673 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1102 hH))).trans (reductionSound673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot691 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1447⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1447 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot691 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode375).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot691 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode375).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot691 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 18, 144, 1440] ![1, 1, 80, 10, 1] reductionProjection691 ![reductionProjection690, oldProjection1452, reductionProjection653, reductionProjection673, oldProjection1447]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection692 : Integer.Sparse (Fin 1613) := [(3, -8), (4, 1), (20, -2), (94, 5), (105, 16)]

def reductionPivot692 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -3, 5], ![0, 0, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound692 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7223).moment H =
      Integer.Sparse.eval reductionProjection692 (momentVector H) := by
  have heq : reductionPivot692 = (fun u v => (normalNode7223).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7223).moment H = injectiveMoment H reductionPivot692 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7223).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot692 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot692 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot692 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection53, oldProjection239, oldProjection129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot692 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7022 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot692 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection53 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot692 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection53 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7022 hH))).trans (oldProjectionSound53 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot692 (1 : Fin 3)) = canonicalInput14289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot692 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection239 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot692 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14289 hH))).trans (oldProjectionSound239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot692 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6000 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot692 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot692 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6000 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7223).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot692 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7223).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot692 (j : Fin 3)))
      3 144 144 3 ![16, 48, 24] ![9, 3, 6] reductionProjection692 ![oldProjection53, oldProjection239, oldProjection129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection693 : Integer.Sparse (Fin 1613) := [(26, 1), (105, 1), (106, 1), (243, -1), (703, 1)]

def reductionPivot693 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, -2, 5], ![0, 0, 3, -3], ![0, 2, -1, -1]]

theorem reductionSound693 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6331).moment H =
      Integer.Sparse.eval reductionProjection693 (momentVector H) := by
  have heq : reductionPivot693 = (fun u v => (normalNode6331).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6331).moment H = injectiveMoment H reductionPivot693 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6331).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot693 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot693 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot693 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection32, oldProjection205, oldProjection70] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot693 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8023 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot693 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection32 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot693 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection32 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8023 hH))).trans (oldProjectionSound32 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot693 (1 : Fin 3)) = canonicalInput12881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot693 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection205 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot693 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12881 hH))).trans (oldProjectionSound205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot693 (2 : Fin 3)) = canonicalInput12870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot693 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection70 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot693 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection70 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12870 hH))).trans (oldProjectionSound70 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6331).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot693 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6331).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot693 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection693 ![oldProjection32, oldProjection205, oldProjection70]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection694 : Integer.Sparse (Fin 1613) := [(3, 20), (4, -1), (19, 4), (20, -2), (26, -32), (94, -1), (104, -16), (105, -48), (106, -16), (108, -16), (243, -16), (703, -32)]

def reductionPivot694 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, -2, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound694 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6326).moment H =
      Integer.Sparse.eval reductionProjection694 (momentVector H) := by
  have heq : reductionPivot694 = (fun u v => (normalNode6326).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6326).moment H = injectiveMoment H reductionPivot694 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6326).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot694 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot694 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot694 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection692, oldProjection890, reductionProjection693, reductionProjection670] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot694 (0 : Fin 4)) = (normalNode7223).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot694 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection692 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot694 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot694 (1 : Fin 4)) = canonicalInput12876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot694 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot694 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12876 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot694 (2 : Fin 4)) = (normalNode6331).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot694 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection693 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot694 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot694 (3 : Fin 4)) = (normalNode6328).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot694 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot694 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6326).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot694 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6326).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot694 (j : Fin 4)))
      2 288 288 2 ![144, 144, 9, 144] ![2, 2, 32, 2] reductionProjection694 ![reductionProjection692, oldProjection890, reductionProjection693, reductionProjection670]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection695 : Integer.Sparse (Fin 1613) := [(115, 1)]

theorem reductionSound695 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code115).moment H =
      Integer.Sparse.eval reductionProjection695 (momentVector H) := by
  have hc : coordinates (115 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code115) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection695, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection696 : Integer.Sparse (Fin 1613) := [(22, 3), (23, 3), (26, -1), (42, -1), (105, -1), (106, -1), (115, -9), (243, -1), (698, -1), (700, -1), (703, -1), (704, -1), (1033, 3), (1054, 3)]

def reductionPivot696 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, -1, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![2, 0, -1, -1]]

theorem reductionSound696 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode383).moment H =
      Integer.Sparse.eval reductionProjection696 (momentVector H) := by
  have heq : reductionPivot696 = (fun u v => (normalNode383).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode383).moment H = injectiveMoment H reductionPivot696 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode383).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot696 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot696 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot696 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection693, oldProjection887, reductionProjection695, reductionProjection622] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot696 (0 : Fin 4)) = canonicalInput2416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot696 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection693 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot696 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2416 hH))).trans (reductionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot696 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1022 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot696 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection887 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot696 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1022 hH))).trans (oldProjectionSound887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot696 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code115).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot696 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection695 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot696 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot696 (3 : Fin 4)) = canonicalInput1114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot696 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection622 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot696 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection622 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1114 hH))).trans (reductionSound622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode383).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot696 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode383).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot696 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection696 ![reductionProjection693, oldProjection887, reductionProjection695, reductionProjection622]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection697 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -2), (22, 48), (42, -32), (94, -1), (116, -144), (243, -32), (700, -48), (701, -32), (702, 48), (704, -32), (1033, 96), (1251, -3)]

def reductionPivot697 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, -1, 5], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound697 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode385).moment H =
      Integer.Sparse.eval reductionProjection697 (momentVector H) := by
  have heq : reductionPivot697 = (fun u v => (normalNode385).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode385).moment H = injectiveMoment H reductionPivot697 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode385).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot697 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot697 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot697 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection780, reductionProjection661, reductionProjection637, reductionProjection622] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot697 (0 : Fin 4)) = canonicalInput2778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot697 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot697 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2778 hH))).trans (oldProjectionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot697 (1 : Fin 4)) = canonicalInput1139.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot697 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot697 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1139 hH))).trans (reductionSound661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot697 (2 : Fin 4)) = canonicalInput1117.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot697 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection637 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot697 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1117 hH))).trans (reductionSound637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot697 (3 : Fin 4)) = canonicalInput1116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot697 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection622 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot697 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection622 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1116 hH))).trans (reductionSound622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode385).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot697 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode385).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot697 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 9] ![2, 2, 288, 32] reductionProjection697 ![oldProjection780, reductionProjection661, reductionProjection637, reductionProjection622]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection698 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -200), (4, 5), (19, -180), (20, 50), (22, -720), (23, -960), (26, 320), (42, 320), (94, 50), (104, 160), (105, 400), (106, 160), (108, 320), (115, 720), (116, 720), (117, 720), (243, 640), (247, 80), (698, 160), (700, 400), (701, 160), (702, -240), (703, 320), (704, 480), (1033, -960), (1054, -480), (1251, 70), (1278, -480)]

def reductionPivot698 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, -1, 5], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound698 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode382).moment H =
      Integer.Sparse.eval reductionProjection698 (momentVector H) := by
  have heq : reductionPivot698 = (fun u v => (normalNode382).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode382).moment H = injectiveMoment H reductionPivot698 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode382).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot698 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot698 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 18, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot698 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection694, oldProjection1450, reductionProjection696, reductionProjection697, reductionProjection672] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot698 (0 : Fin 5)) = canonicalInput2414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection694 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2414 hH))).trans (reductionSound694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot698 (1 : Fin 5)) = canonicalInput1135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1135 hH))).trans (oldProjectionSound1450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot698 (2 : Fin 5)) = canonicalInput1115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection696 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection696 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1115 hH))).trans (reductionSound696 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot698 (3 : Fin 5)) = canonicalInput1113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection697 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection697 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1113 hH))).trans (reductionSound697 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot698 (4 : Fin 5)) = canonicalInput1112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection672 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot698 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1112 hH))).trans (reductionSound672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode382).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot698 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode382).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot698 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 18, 288, 288] ![5, 1, 80, 5, 5] reductionProjection698 ![reductionProjection694, oldProjection1450, reductionProjection696, reductionProjection697, reductionProjection672]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection699 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (696, -24), (1058, -24), (1250, 6), (1251, 1)]

def reductionPivot699 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 1, -2], ![-2, -2, 2, 2], ![2, 2, -3, -1]]

theorem reductionSound699 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode11052).moment H =
      Integer.Sparse.eval reductionProjection699 (momentVector H) := by
  have heq : reductionPivot699 = (fun u v => (normalNode11052).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11052).moment H = injectiveMoment H reductionPivot699 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11052).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11052).entries)).symm
  have hshape : reductionPivot699 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot699 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot699 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection274, oldProjection183, oldProjection212] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot699 (0 : Fin 3)) = canonicalInput31115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot699 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection274 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot699 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31115 hH))).trans (oldProjectionSound274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot699 (1 : Fin 3)) = canonicalInput33854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot699 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection183 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot699 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33854 hH))).trans (oldProjectionSound183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot699 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10152 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot699 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection212 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot699 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10152 hH))).trans (oldProjectionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11052).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot699 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11052).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot699 (j : Fin 3)))
      3 72 72 3 ![24, 1, 1] ![3, 72, 72] reductionProjection699 ![oldProjection274, oldProjection183, oldProjection212]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection700 : Integer.Sparse (Fin 1613) := [(57, -1), (82, -1), (238, -1)]

def reductionPivot700 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 2, -3], ![-2, -2, 2, 2], ![2, 2, -4, 0]]

theorem reductionSound700 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode11054).moment H =
      Integer.Sparse.eval reductionProjection700 (momentVector H) := by
  have heq : reductionPivot700 = (fun u v => (normalNode11054).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11054).moment H = injectiveMoment H reductionPivot700 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11054).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11054).entries)).symm
  have hshape : reductionPivot700 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot700 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot700 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection151, reductionProjection336, oldProjection112] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot700 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9964 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot700 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection151 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot700 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9964 hH))).trans (oldProjectionSound151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot700 (1 : Fin 3)) = canonicalInput33873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot700 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection336 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot700 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33873 hH))).trans (reductionSound336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot700 (2 : Fin 3)) = canonicalInput33875.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot700 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection112 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot700 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33875 hH))).trans (oldProjectionSound112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11054).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot700 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11054).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot700 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection700 ![oldProjection151, reductionProjection336, oldProjection112]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection701 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (1057, -24), (1223, -24), (1251, 1)]

def reductionPivot701 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 1, -2], ![-2, -2, 3, 1], ![2, 2, -4, 0]]

theorem reductionSound701 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode11053).moment H =
      Integer.Sparse.eval reductionProjection701 (momentVector H) := by
  have heq : reductionPivot701 = (fun u v => (normalNode11053).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11053).moment H = injectiveMoment H reductionPivot701 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11053).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11053).entries)).symm
  have hshape : reductionPivot701 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot701 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot701 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection256, oldProjection211, oldProjection225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot701 (0 : Fin 3)) = canonicalInput31116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot701 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection256 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot701 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31116 hH))).trans (oldProjectionSound256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot701 (1 : Fin 3)) = canonicalInput33855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot701 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot701 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33855 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot701 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10153 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot701 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot701 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10153 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11053).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot701 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11053).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot701 (j : Fin 3)))
      3 72 72 3 ![24, 1, 1] ![3, 72, 72] reductionProjection701 ![oldProjection256, oldProjection211, oldProjection225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection702 : Integer.Sparse (Fin 1613) := [(19, -1), (57, 12), (82, 12), (94, -1), (238, 24), (696, 12), (1057, 24), (1058, 24), (1223, 12), (1250, -3), (1251, -1)]

def reductionPivot702 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, 2, -2, -2]]

theorem reductionSound702 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode397).moment H =
      Integer.Sparse.eval reductionProjection702 (momentVector H) := by
  have heq : reductionPivot702 = (fun u v => (normalNode397).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode397).moment H = injectiveMoment H reductionPivot702 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode397).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot702 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot702 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 3, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot702 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection699, reductionProjection700, oldProjection916, reductionProjection701] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot702 (0 : Fin 4)) = canonicalInput1474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot702 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection699 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot702 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1474 hH))).trans (reductionSound699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot702 (1 : Fin 4)) = canonicalInput1230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot702 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection700 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot702 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1230 hH))).trans (reductionSound700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot702 (2 : Fin 4)) = canonicalInput1217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot702 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection916 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot702 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1217 hH))).trans (oldProjectionSound916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot702 (3 : Fin 4)) = canonicalInput1215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot702 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection701 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot702 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection701 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1215 hH))).trans (reductionSound701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode397).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot702 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode397).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot702 (j : Fin 4)))
      2 72 72 2 ![72, 3, 3, 72] ![1, 24, 24, 1] reductionProjection702 ![reductionProjection699, reductionProjection700, oldProjection916, reductionProjection701]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection703 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -60), (19, -40), (20, 20), (57, -480), (82, -480), (93, 300), (94, 70), (238, -960), (239, -240), (240, -480), (241, 240), (243, 80), (247, 160), (696, -480), (698, 80), (1057, -960), (1058, -960), (1223, -480), (1250, 240), (1251, 5)]

def reductionPivot703 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 2, -2, -2]]

theorem reductionSound703 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode390).moment H =
      Integer.Sparse.eval reductionProjection703 (momentVector H) := by
  have heq : reductionPivot703 = (fun u v => (normalNode390).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode390).moment H = injectiveMoment H reductionPivot703 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode390).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot703 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot703 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 72, 36, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot703 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection464, reductionProjection702, reductionProjection702, oldProjection912, oldProjection1458] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot703 (0 : Fin 5)) = (normalNode253).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection464 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot703 (1 : Fin 5)) = (normalNode397).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection702 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot703 (2 : Fin 5)) = canonicalInput1250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection702 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1250 hH))).trans (reductionSound702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot703 (3 : Fin 5)) = canonicalInput1256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection912 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection912 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1256 hH))).trans (oldProjectionSound912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot703 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1458⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1458 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot703 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode390).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot703 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode390).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot703 (j : Fin 5)))
      1 1440 1440 1 ![288, 72, 72, 36, 1440] ![5, 20, 20, 40, 1] reductionProjection703 ![reductionProjection464, reductionProjection702, reductionProjection702, oldProjection912, oldProjection1458]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

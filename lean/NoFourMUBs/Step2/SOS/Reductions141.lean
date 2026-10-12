import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical061
import NoFourMUBs.Step2.SOS.Canonical063
import NoFourMUBs.Step2.SOS.Canonical065
import NoFourMUBs.Step2.SOS.Canonical066
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical383
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions117
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions130
import NoFourMUBs.Step2.SOS.Reductions134
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical107
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical109
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical110
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical235
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical237
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical238
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical258
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical261
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical265
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical311
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical56
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical57
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical62
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical65
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection4512 : Integer.Sparse (Fin 1613) := [(473, 1)]

theorem reductionSound4512 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code473).moment H =
      Integer.Sparse.eval reductionProjection4512 (momentVector H) := by
  have hc : coordinates (473 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code473) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4512, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4513 : Integer.Sparse (Fin 1613) := [(19, 2), (94, -1), (104, -8), (156, -72), (241, -16), (473, -72), (690, 48), (694, 24), (698, -8), (1047, 24), (1251, 1)]

def reductionPivot4513 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 1, -2], ![2, -1, 2, -3]]

theorem reductionSound4513 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1926).moment H =
      Integer.Sparse.eval reductionProjection4513 (momentVector H) := by
  have heq : reductionPivot4513 = (fun u v => (normalNode1926).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1926).moment H = injectiveMoment H reductionPivot4513 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1926).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4513 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4513 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4513 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1266, reductionProjection4512, oldProjection406, oldProjection794] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4513 (0 : Fin 4)) = canonicalInput6624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4513 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1266 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4513 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6624 hH))).trans (oldProjectionSound1266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4513 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code473).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4513 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4512 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4513 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4513 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1813 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4513 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection406 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4513 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection406 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1813 hH))).trans (oldProjectionSound406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4513 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1810 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4513 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection794 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4513 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1810 hH))).trans (oldProjectionSound794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1926).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4513 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1926).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4513 (j : Fin 4)))
      2 144 144 2 ![144, 1, 1, 144] ![1, 144, 144, 1] reductionProjection4513 ![oldProjection1266, reductionProjection4512, oldProjection406, oldProjection794]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4514 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, -8), (241, 8), (704, 8), (1251, 1)]

def reductionPivot4514 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![0, 2, 1, -3], ![1, -2, -3, 4]]

theorem reductionSound4514 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode10730).moment H =
      Integer.Sparse.eval reductionProjection4514 (momentVector H) := by
  have heq : reductionPivot4514 = (fun u v => (normalNode10730).entries (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10730).moment H = injectiveMoment H reductionPivot4514 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10730).entries OAI.MUB6.Certificate.PairSemantics.permutation9)).symm
  have hshape : reductionPivot4514 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4514 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4514 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection166, oldProjection140, oldProjection27] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4514 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7592 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4514 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4514 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7592 hH))).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4514 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9979 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4514 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection140 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4514 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9979 hH))).trans (oldProjectionSound140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4514 (2 : Fin 3)) = canonicalInput31812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4514 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection27 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4514 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection27 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31812 hH))).trans (oldProjectionSound27 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10730).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4514 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10730).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4514 (j : Fin 3)))
      3 72 144 6 ![48, 48, 1] ![3, 3, 144] reductionProjection4514 ![oldProjection166, oldProjection140, oldProjection27]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4515 : Integer.Sparse (Fin 1613) := [(26, 1), (40, -3), (104, 1), (105, 2), (241, 1), (243, 1)]

def reductionPivot4515 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 3, -2], ![1, 2, 0, -3], ![1, -2, -3, 4]]

theorem reductionSound4515 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9473).moment H =
      Integer.Sparse.eval reductionProjection4515 (momentVector H) := by
  have heq : reductionPivot4515 = (fun u v => (normalNode9473).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9473).moment H = injectiveMoment H reductionPivot4515 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9473).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9473).entries)).symm
  have hshape : reductionPivot4515 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4515 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4515 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection86, oldProjection141, oldProjection75] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4515 (0 : Fin 3)) = canonicalInput9618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4515 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection86 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4515 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection86 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9618 hH))).trans (oldProjectionSound86 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4515 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7617 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4515 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection141 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4515 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7617 hH))).trans (oldProjectionSound141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4515 (2 : Fin 3)) = canonicalInput22468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4515 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection75 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4515 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection75 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22468 hH))).trans (oldProjectionSound75 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9473).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4515 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9473).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4515 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection4515 ![oldProjection86, oldProjection141, oldProjection75]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4516 : Integer.Sparse (Fin 1613) := [(453, 1)]

theorem reductionSound4516 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code453).moment H =
      Integer.Sparse.eval reductionProjection4516 (momentVector H) := by
  have hc : coordinates (453 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code453) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4516, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4517 : Integer.Sparse (Fin 1613) := [(19, 12), (26, -16), (40, 48), (94, -3), (104, -16), (105, -48), (241, -16), (243, -32), (453, -144), (704, -16), (1251, -3)]

def reductionPivot4517 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, -1, 3, -4]]

theorem reductionSound4517 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1925).moment H =
      Integer.Sparse.eval reductionProjection4517 (momentVector H) := by
  have heq : reductionPivot4517 = (fun u v => (normalNode1925).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1925).moment H = injectiveMoment H reductionPivot4517 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1925).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4517 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4517 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4517 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4514, reductionProjection4515, reductionProjection4516, oldProjection795] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4517 (0 : Fin 4)) = canonicalInput6623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4517 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4514 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4517 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6623 hH))).trans (reductionSound4514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4517 (1 : Fin 4)) = canonicalInput4080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4517 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4515 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4517 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4080 hH))).trans (reductionSound4515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4517 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code453).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4517 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4516 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4517 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4517 (3 : Fin 4)) = canonicalInput3899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4517 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection795 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4517 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3899 hH))).trans (oldProjectionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1925).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4517 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1925).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4517 (j : Fin 4)))
      2 288 288 2 ![72, 9, 1, 144] ![4, 32, 288, 2] reductionProjection4517 ![reductionProjection4514, reductionProjection4515, reductionProjection4516, oldProjection795]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4518 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -140), (20, 5), (26, 80), (40, -240), (76, -240), (88, 80), (94, 25), (104, 240), (105, 320), (156, 1440), (241, 480), (243, 640), (453, 720), (473, 720), (577, 720), (690, -480), (694, -240), (698, 640), (704, 80), (1047, -240), (1052, -720), (1223, -240), (1226, 240), (1251, -115)]

def reductionPivot4518 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]

theorem reductionSound4518 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1918).moment H =
      Integer.Sparse.eval reductionProjection4518 (momentVector H) := by
  have heq : reductionPivot4518 = (fun u v => (normalNode1918).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1918).moment H = injectiveMoment H reductionPivot4518 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1918).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4518 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4518 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4518 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1575, oldProjection1495, oldProjection1491, reductionProjection4513, reductionProjection4517] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4518 (0 : Fin 5)) = (normalNode2602).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1575 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4518 (1 : Fin 5)) = canonicalInput3931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1495 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3931 hH))).trans (oldProjectionSound1495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4518 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1805 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1491 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1805 hH))).trans (oldProjectionSound1491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4518 (3 : Fin 5)) = (normalNode1926).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4513 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4518 (4 : Fin 5)) = (normalNode1925).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4517 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4518 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1918).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4518 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1918).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4518 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 144, 288] ![5, 1, 5, 10, 5] reductionProjection4518 ![reductionProjection1575, oldProjection1495, oldProjection1491, reductionProjection4513, reductionProjection4517]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4519 : Integer.Sparse (Fin 1613) := [(474, 1)]

theorem reductionSound4519 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code474).moment H =
      Integer.Sparse.eval reductionProjection4519 (momentVector H) := by
  have hc : coordinates (474 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code474) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4519, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4520 : Integer.Sparse (Fin 1613) := [(19, 3), (94, -1), (104, -12), (105, -4), (241, -12), (243, -4), (309, -36), (474, -36), (694, 12), (698, -4), (704, -8)]

def reductionPivot4520 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, 1, 2, -4]]

theorem reductionSound4520 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1928).moment H =
      Integer.Sparse.eval reductionProjection4520 (momentVector H) := by
  have heq : reductionPivot4520 = (fun u v => (normalNode1928).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1928).moment H = injectiveMoment H reductionPivot4520 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1928).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4520 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4520 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4520 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2302, reductionProjection4519, oldProjection763, oldProjection460] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4520 (0 : Fin 4)) = canonicalInput6631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4520 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2302 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4520 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6631 hH))).trans (reductionSound2302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4520 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code474).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4520 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4520 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4520 (2 : Fin 4)) = canonicalInput3907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4520 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection763 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4520 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3907 hH))).trans (oldProjectionSound763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4520 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1816 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4520 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection460 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4520 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1816 hH))).trans (oldProjectionSound460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1928).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4520 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1928).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4520 (j : Fin 4)))
      2 72 72 2 ![72, 1, 72, 1] ![1, 72, 1, 72] reductionProjection4520 ![reductionProjection2302, reductionProjection4519, oldProjection763, oldProjection460]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4521 : Integer.Sparse (Fin 1613) := [(26, 3), (104, 1), (105, 1), (243, 2), (703, 2)]

def reductionPivot4521 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 3, -2], ![1, -3, 2, 0], ![1, 3, -5, 1]]

theorem reductionSound4521 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9445).moment H =
      Integer.Sparse.eval reductionProjection4521 (momentVector H) := by
  have heq : reductionPivot4521 = (fun u v => (normalNode9445).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9445).moment H = injectiveMoment H reductionPivot4521 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9445).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9445).entries)).symm
  have hshape : reductionPivot4521 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4521 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4521 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection76, oldProjection76, oldProjection75] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4521 (0 : Fin 3)) = canonicalInput9611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4521 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection76 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4521 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection76 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9611 hH))).trans (oldProjectionSound76 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4521 (1 : Fin 3)) = canonicalInput22436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4521 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection76 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4521 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection76 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22436 hH))).trans (oldProjectionSound76 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4521 (2 : Fin 3)) = canonicalInput22464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4521 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection75 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4521 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection75 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22464 hH))).trans (oldProjectionSound75 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9445).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4521 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9445).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4521 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection4521 ![oldProjection76, oldProjection76, oldProjection75]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4522 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (23, 24), (26, -32), (94, -1), (104, -32), (105, -32), (241, -24), (243, -24), (703, -32), (704, -8), (1251, -1)]

def reductionPivot4522 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, 3, -5]]

theorem reductionSound4522 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1927).moment H =
      Integer.Sparse.eval reductionProjection4522 (momentVector H) := by
  have heq : reductionPivot4522 = (fun u v => (normalNode1927).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1927).moment H = injectiveMoment H reductionPivot4522 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1927).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4522 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4522 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4522 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1781, reductionProjection4521, reductionProjection4158, oldProjection1233] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4522 (0 : Fin 4)) = canonicalInput6630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4522 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1781 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4522 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6630 hH))).trans (reductionSound1781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4522 (1 : Fin 4)) = canonicalInput4081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4522 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4521 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4522 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4081 hH))).trans (reductionSound4521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4522 (2 : Fin 4)) = canonicalInput3906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4522 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4158 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4522 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3906 hH))).trans (reductionSound4158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4522 (3 : Fin 4)) = canonicalInput3905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4522 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1233 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4522 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3905 hH))).trans (oldProjectionSound1233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1927).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4522 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1927).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4522 (j : Fin 4)))
      2 144 144 2 ![144, 9, 144, 9] ![1, 16, 1, 16] reductionProjection4522 ![reductionProjection1781, reductionProjection4521, reductionProjection4158, oldProjection1233]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4523 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -40), (19, -340), (20, 25), (23, -480), (26, 320), (88, 320), (94, 120), (104, 800), (105, 640), (228, -240), (241, 1200), (243, 1680), (309, 720), (474, 720), (694, -240), (698, 960), (703, 320), (704, 880), (1226, 240), (1251, 5)]

def reductionPivot4523 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound4523 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1919).moment H =
      Integer.Sparse.eval reductionProjection4523 (momentVector H) := by
  have heq : reductionPivot4523 = (fun u v => (normalNode1919).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1919).moment H = injectiveMoment H reductionPivot4523 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1919).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4523 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4523 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 288, 72, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4523 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1754, oldProjection1563, reductionProjection2291, reductionProjection4520, reductionProjection4522] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4523 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1754⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1754 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4523 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1841 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1563 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1841 hH))).trans (oldProjectionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4523 (2 : Fin 5)) = canonicalInput3895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2291 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3895 hH))).trans (reductionSound2291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4523 (3 : Fin 5)) = (normalNode1928).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4520 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4523 (4 : Fin 5)) = (normalNode1927).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4522 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4523 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4522 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1919).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4523 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1919).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4523 (j : Fin 5)))
      1 1440 1440 1 ![72, 1440, 288, 72, 144] ![20, 1, 5, 20, 10] reductionProjection4523 ![oldProjection1754, oldProjection1563, reductionProjection2291, reductionProjection4520, reductionProjection4522]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4524 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (309, -72), (483, -72), (694, 24), (698, -16), (1047, 24), (1055, 48), (1251, 3)]

def reductionPivot4524 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound4524 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1932).moment H =
      Integer.Sparse.eval reductionProjection4524 (momentVector H) := by
  have heq : reductionPivot4524 = (fun u v => (normalNode1932).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1932).moment H = injectiveMoment H reductionPivot4524 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1932).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4524 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4524 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4524 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection976, oldProjection487, oldProjection790, oldProjection460] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4524 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3448 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4524 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection976 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4524 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3448 hH))).trans (oldProjectionSound976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4524 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4524 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4524 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4524 (2 : Fin 4)) = canonicalInput3908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4524 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4524 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3908 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4524 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1816 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4524 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection460 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4524 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1816 hH))).trans (oldProjectionSound460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1932).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4524 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1932).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4524 (j : Fin 4)))
      2 144 144 2 ![72, 1, 3, 1] ![2, 144, 48, 144] reductionProjection4524 ![oldProjection976, oldProjection487, oldProjection790, oldProjection460]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4525 : Integer.Sparse (Fin 1613) := [(690, -1), (694, -2)]

def reductionPivot4525 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![-1, 2, 1, -2], ![3, -2, -3, 2]]

theorem reductionSound4525 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7976).moment H =
      Integer.Sparse.eval reductionProjection4525 (momentVector H) := by
  have heq : reductionPivot4525 = (fun u v => (normalNode7976).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7976).moment H = injectiveMoment H reductionPivot4525 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7976).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7976).entries)).symm
  have hshape : reductionPivot4525 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4525 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4525 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection162, oldProjection167, oldProjection167] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4525 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4173 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4525 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection162 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4525 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4173 hH))).trans (oldProjectionSound162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4525 (1 : Fin 3)) = canonicalInput22377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4525 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection167 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4525 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22377 hH))).trans (oldProjectionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4525 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7540 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4525 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection167 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4525 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7540 hH))).trans (oldProjectionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7976).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4525 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7976).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4525 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection4525 ![oldProjection162, oldProjection167, oldProjection167]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4526 : Integer.Sparse (Fin 1613) := [(455, -3), (475, -3), (690, 1), (694, 3), (1047, 1), (1055, 1)]

def reductionPivot4526 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, -1, 2, -2], ![1, 1, 1, -3]]

theorem reductionSound4526 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode1929).moment H =
      Integer.Sparse.eval reductionProjection4526 (momentVector H) := by
  have heq : reductionPivot4526 = (fun u v => (normalNode1929).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1929).moment H = injectiveMoment H reductionPivot4526 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1929).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4526 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4526 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4526 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4525, reductionProjection80, oldProjection790, oldProjection479] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4526 (0 : Fin 4)) = canonicalInput6632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4526 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4525 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4526 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6632 hH))).trans (reductionSound4525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4526 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code475).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4526 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection80 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4526 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4526 (2 : Fin 4)) = canonicalInput3908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4526 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4526 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3908 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4526 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node479⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4526 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection479 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4526 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1929).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4526 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1929).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4526 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 1] ![2, 6, 2, 6] reductionProjection4526 ![reductionProjection4525, reductionProjection80, oldProjection790, oldProjection479]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4527 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -140), (20, 5), (94, 65), (104, 240), (105, 80), (241, 640), (243, 160), (247, 80), (309, 1440), (455, 720), (465, 720), (474, 720), (475, 720), (483, 1440), (596, 720), (690, -240), (694, -1200), (698, 720), (704, 240), (1047, -480), (1055, -960), (1226, 80), (1227, 80), (1251, -80)]

def reductionPivot4527 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound4527 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1920).moment H =
      Integer.Sparse.eval reductionProjection4527 (momentVector H) := by
  have heq : reductionPivot4527 = (fun u v => (normalNode1920).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1920).moment H = injectiveMoment H reductionPivot4527 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1920).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4527 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4527 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 144, 6, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4527 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1755, reductionProjection4290, reductionProjection4524, reductionProjection4526, reductionProjection4520] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4527 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1755⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1755 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4527 (1 : Fin 5)) = (normalNode1980).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4290 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4527 (2 : Fin 5)) = (normalNode1932).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4524 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4527 (3 : Fin 5)) = (normalNode1929).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4526 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4526 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4526 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4527 (4 : Fin 5)) = (normalNode1928).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4520 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4527 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1920).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4527 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1920).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4527 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 144, 6, 72] ![1, 1, 10, 240, 20] reductionProjection4527 ![oldProjection1755, reductionProjection4290, reductionProjection4524, reductionProjection4526, reductionProjection4520]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4528 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (488, -144), (690, 48), (694, 96), (698, -16), (1047, 144), (1055, 96), (1251, 3)]

def reductionPivot4528 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 1, 1, -3]]

theorem reductionSound4528 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1934).moment H =
      Integer.Sparse.eval reductionProjection4528 (momentVector H) := by
  have heq : reductionPivot4528 = (fun u v => (normalNode1934).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1934).moment H = injectiveMoment H reductionPivot4528 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1934).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4528 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4528 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4528 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection790, reductionProjection553, oldProjection790, oldProjection794] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4528 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node790⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4528 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4528 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4528 (1 : Fin 4)) = canonicalInput4218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4528 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection553 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4528 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4218 hH))).trans (reductionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4528 (2 : Fin 4)) = canonicalInput3908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4528 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4528 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3908 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4528 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1810 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4528 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection794 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4528 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1810 hH))).trans (oldProjectionSound794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1934).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4528 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1934).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4528 (j : Fin 4)))
      2 288 288 2 ![3, 1, 3, 144] ![96, 288, 96, 2] reductionProjection4528 ![oldProjection790, reductionProjection553, oldProjection790, oldProjection794]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4529 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -140), (20, 15), (23, -240), (94, 20), (104, 240), (105, 240), (228, -240), (241, 800), (243, 640), (309, 720), (483, 720), (488, 720), (690, -240), (694, -720), (698, 1200), (704, 320), (1047, -960), (1055, -960), (1226, 400), (1227, 320), (1251, -165)]

def reductionPivot4529 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound4529 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1921).moment H =
      Integer.Sparse.eval reductionProjection4529 (momentVector H) := by
  have heq : reductionPivot4529 = (fun u v => (normalNode1921).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1921).moment H = injectiveMoment H reductionPivot4529 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1921).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4529 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4529 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4529 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1758, reductionProjection2133, reductionProjection4528, reductionProjection4524, reductionProjection2291] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4529 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1758⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1758 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4529 (1 : Fin 5)) = canonicalInput3935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2133 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2133 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3935 hH))).trans (reductionSound2133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4529 (2 : Fin 5)) = (normalNode1934).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4528 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4528 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4529 (3 : Fin 5)) = (normalNode1932).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4524 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4529 (4 : Fin 5)) = canonicalInput3895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2291 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4529 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3895 hH))).trans (reductionSound2291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1921).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4529 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1921).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4529 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 144, 288] ![1, 5, 5, 10, 5] reductionProjection4529 ![oldProjection1758, reductionProjection2133, reductionProjection4528, reductionProjection4524, reductionProjection2291]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4530 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 30), (241, 160), (247, 40), (309, 360), (452, -720), (455, 360), (465, 360), (483, 360), (484, 360), (610, 360), (691, -120), (694, -240), (698, 400), (704, 40), (1047, -120), (1050, -120), (1055, -480), (1058, -120), (1059, 40), (1227, 120), (1251, -65)]

def reductionPivot4530 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound4530 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1922).moment H =
      Integer.Sparse.eval reductionProjection4530 (momentVector H) := by
  have heq : reductionPivot4530 = (fun u v => (normalNode1922).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1922).moment H = injectiveMoment H reductionPivot4530 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1922).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4530 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4530 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 720, 1, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4530 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1759, oldProjection2621, reductionProjection1955, oldProjection1661, reductionProjection4524] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4530 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1759⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4530 (1 : Fin 5)) = canonicalInput3936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2621 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3936 hH))).trans (oldProjectionSound2621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4530 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code452).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1955 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4530 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1661⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4530 (4 : Fin 5)) = (normalNode1932).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4524 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4530 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1922).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4530 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1922).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4530 (j : Fin 5)))
      1 720 720 1 ![360, 720, 1, 144, 144] ![2, 1, 720, 5, 5] reductionProjection4530 ![oldProjection1759, oldProjection2621, reductionProjection1955, oldProjection1661, reductionProjection4524]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4531 : Integer.Sparse (Fin 1613) := [(3, 4), (20, -1), (94, -1), (104, 32), (241, -16), (243, -16), (703, -16), (704, 32)]

def reductionPivot4531 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, -3, 4], ![0, 0, 2, -2], ![0, 2, 1, -3], ![1, -1, 0, 0]]

theorem reductionSound4531 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10543).moment H =
      Integer.Sparse.eval reductionProjection4531 (momentVector H) := by
  have heq : reductionPivot4531 = (fun u v => (normalNode10543).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10543).moment H = injectiveMoment H reductionPivot4531 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10543).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot4531 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4531 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4531 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1781, oldProjection1307, oldProjection1295, oldProjection166] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4531 (0 : Fin 4)) = (normalNode7221).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4531 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1781 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4531 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4531 (1 : Fin 4)) = canonicalInput24514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4531 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1307 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4531 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24514 hH))).trans (oldProjectionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4531 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8285 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4531 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1295 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4531 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8285 hH))).trans (oldProjectionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4531 (3 : Fin 4)) = canonicalInput24537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4531 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4531 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24537 hH))).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10543).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4531 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10543).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4531 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 48] ![2, 2, 2, 6] reductionProjection4531 ![reductionProjection1781, oldProjection1307, oldProjection1295, oldProjection166]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4532 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (26, 16), (42, 16), (94, -2), (104, 16), (105, 16), (243, 32), (704, 16), (1251, 1)]

def reductionPivot4532 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 0, 3], ![0, 1, 3, -4], ![1, 0, -3, 2]]

theorem reductionSound4532 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6807).moment H =
      Integer.Sparse.eval reductionProjection4532 (momentVector H) := by
  have heq : reductionPivot4532 = (fun u v => (normalNode6807).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6807).moment H = injectiveMoment H reductionPivot4532 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6807).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot4532 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4532 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4532 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection155, oldProjection75, oldProjection87] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4532 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6555 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4532 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4532 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6555 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4532 (1 : Fin 3)) = canonicalInput13543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4532 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection75 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4532 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection75 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13543 hH))).trans (oldProjectionSound75 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4532 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5723 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4532 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4532 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5723 hH))).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6807).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4532 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6807).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4532 (j : Fin 3)))
      3 144 144 3 ![48, 3, 3] ![3, 48, 48] reductionProjection4532 ![oldProjection155, oldProjection75, oldProjection87]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4533 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (26, -32), (40, 24), (42, -24), (94, 2), (104, -16), (105, -24), (241, -8), (243, -32), (700, -8), (701, -8), (703, -16), (704, -16), (1251, -1)]

def reductionPivot4533 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound4533 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2084).moment H =
      Integer.Sparse.eval reductionProjection4533 (momentVector H) := by
  have heq : reductionPivot4533 = (fun u v => (normalNode2084).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2084).moment H = injectiveMoment H reductionPivot4533 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2084).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4533 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4533 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4533 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1300, oldProjection1158, reductionProjection4532, reductionProjection4521] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4533 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3517 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4533 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1300 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4533 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3517 hH))).trans (oldProjectionSound1300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4533 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2096 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4533 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1158 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4533 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2096 hH))).trans (oldProjectionSound1158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4533 (2 : Fin 4)) = canonicalInput4082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4533 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4532 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4533 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4082 hH))).trans (reductionSound4532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4533 (3 : Fin 4)) = canonicalInput4081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4533 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4521 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4533 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4081 hH))).trans (reductionSound4521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2084).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4533 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2084).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4533 (j : Fin 4)))
      2 144 144 2 ![144, 9, 144, 9] ![1, 16, 1, 16] reductionProjection4533 ![oldProjection1300, oldProjection1158, reductionProjection4532, reductionProjection4521]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4534 : Integer.Sparse (Fin 1613) := [(19, 4), (40, 48), (94, -1), (104, -8), (241, -8), (243, -8), (453, -72), (504, -72), (692, 24), (704, -8), (1052, 24), (1251, -1)]

def reductionPivot4534 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, 0, 3, -4]]

theorem reductionSound4534 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1936).moment H =
      Integer.Sparse.eval reductionProjection4534 (momentVector H) := by
  have heq : reductionPivot4534 = (fun u v => (normalNode1936).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1936).moment H = injectiveMoment H reductionPivot4534 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1936).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4534 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4534 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4534 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4186, reductionProjection4179, oldProjection792, reductionProjection4516] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4534 (0 : Fin 4)) = (normalNode6732).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4534 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4186 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4534 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4534 (1 : Fin 4)) = canonicalInput4220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4534 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4179 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4534 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4220 hH))).trans (reductionSound4179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4534 (2 : Fin 4)) = canonicalInput3910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4534 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection792 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4534 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3910 hH))).trans (oldProjectionSound792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4534 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code453).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4534 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4516 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4534 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1936).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4534 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1936).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4534 (j : Fin 4)))
      2 144 144 2 ![3, 1, 72, 1] ![48, 144, 2, 144] reductionProjection4534 ![reductionProjection4186, reductionProjection4179, oldProjection792, reductionProjection4516]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4535 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -10), (20, 1), (23, -12), (26, 20), (40, -48), (42, 16), (94, 2), (104, 28), (105, 28), (241, 28), (243, 48), (453, 36), (504, 36), (692, -12), (698, 16), (700, 4), (701, 4), (703, 16), (704, 28), (1052, -12), (1251, 1)]

def reductionPivot4535 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound4535 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1923).moment H =
      Integer.Sparse.eval reductionProjection4535 (momentVector H) := by
  have heq : reductionPivot4535 = (fun u v => (normalNode1923).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1923).moment H = injectiveMoment H reductionPivot4535 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1923).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4535 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4535 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4535 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4531, reductionProjection4533, reductionProjection4534, reductionProjection4178, reductionProjection2291] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4535 (0 : Fin 5)) = canonicalInput6620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4531 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4531 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6620 hH))).trans (reductionSound4531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4535 (1 : Fin 5)) = (normalNode2084).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4533 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4533 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4533 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4535 (2 : Fin 5)) = (normalNode1936).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4534 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4535 (3 : Fin 5)) = canonicalInput3896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4178 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3896 hH))).trans (reductionSound4178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4535 (4 : Fin 5)) = canonicalInput3895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2291 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4535 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3895 hH))).trans (reductionSound2291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1923).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4535 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1923).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4535 (j : Fin 5)))
      1 72 288 4 ![288, 144, 144, 288, 288] ![1, 2, 2, 1, 1] reductionProjection4535 ![reductionProjection4531, reductionProjection4533, reductionProjection4534, reductionProjection4178, reductionProjection2291]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4536 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -30), (241, -80), (691, 240), (694, 240), (698, -80), (700, -80), (704, -80), (1251, -15)]

def reductionPivot4536 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 2, -2], ![0, 2, 1, -3], ![1, -1, -3, 3]]

theorem reductionSound4536 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10608).moment H =
      Integer.Sparse.eval reductionProjection4536 (momentVector H) := by
  have heq : reductionPivot4536 = (fun u v => (normalNode10608).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10608).moment H = injectiveMoment H reductionPivot4536 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10608).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot4536 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4536 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4536 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1060, oldProjection1312, oldProjection1317, oldProjection166] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4536 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1060⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4536 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1060 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4536 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1060 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4536 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8369 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4536 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1312 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4536 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8369 hH))).trans (oldProjectionSound1312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4536 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8490 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4536 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4536 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8490 hH))).trans (oldProjectionSound1317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4536 (3 : Fin 4)) = canonicalInput26078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4536 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4536 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26078 hH))).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10608).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4536 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10608).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4536 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 48] ![10, 2, 10, 30] reductionProjection4536 ![oldProjection1060, oldProjection1312, oldProjection1317, oldProjection166]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4537 : Integer.Sparse (Fin 1613) := [(476, 1)]

theorem reductionSound4537 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code476).moment H =
      Integer.Sparse.eval reductionProjection4537 (momentVector H) := by
  have hc : coordinates (476 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code476) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4537, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4538 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -2), (26, -16), (40, 48), (42, -16), (58, 48), (94, 5), (104, -16), (105, -32), (241, -16), (243, -64), (476, -144), (698, -16), (700, -32), (704, -32), (1251, -1)]

def reductionPivot4538 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, 1, -3, 2], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound4538 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2085).moment H =
      Integer.Sparse.eval reductionProjection4538 (momentVector H) := by
  have heq : reductionPivot4538 = (fun u v => (normalNode2085).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2085).moment H = injectiveMoment H reductionPivot4538 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2085).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4538 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4538 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4538 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1320, reductionProjection4137, reductionProjection4532, reductionProjection4537] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4538 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3519 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4538 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1320 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4538 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3519 hH))).trans (oldProjectionSound1320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4538 (1 : Fin 4)) = canonicalInput4163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4538 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4137 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4538 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4163 hH))).trans (reductionSound4137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4538 (2 : Fin 4)) = canonicalInput4083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4538 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4532 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4538 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4083 hH))).trans (reductionSound4532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4538 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code476).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4538 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4537 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4538 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4537 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2085).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4538 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2085).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4538 (j : Fin 4)))
      2 288 288 2 ![144, 72, 144, 1] ![2, 4, 2, 288] reductionProjection4538 ![oldProjection1320, reductionProjection4137, reductionProjection4532, reductionProjection4537]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4539 : Integer.Sparse (Fin 1613) := [(456, 1)]

theorem reductionSound4539 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code456).moment H =
      Integer.Sparse.eval reductionProjection4539 (momentVector H) := by
  have hc : coordinates (456 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code456) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4539, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4540 : Integer.Sparse (Fin 1613) := [(94, -1), (453, -144), (456, -144), (506, -144), (698, -16), (1052, 48), (1223, 48), (1226, -16), (1251, 3)]

def reductionPivot4540 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 3, -3]]

theorem reductionSound4540 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1937).moment H =
      Integer.Sparse.eval reductionProjection4540 (momentVector H) := by
  have heq : reductionPivot4540 = (fun u v => (normalNode1937).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1937).moment H = injectiveMoment H reductionPivot4540 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1937).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot4540 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4540 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4540 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1035, reductionProjection2060, reductionProjection4539, reductionProjection4516] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4540 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4540 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1035 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4540 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4540 (1 : Fin 4)) = canonicalInput4240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4540 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2060 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4540 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2060 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4240 hH))).trans (reductionSound2060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4540 (2 : Fin 4)) = canonicalInput3912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4540 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4539 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4540 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3912 hH))).trans (reductionSound4539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4540 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code453).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4540 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4516 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4540 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1937).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4540 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1937).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4540 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection4540 ![oldProjection1035, reductionProjection2060, reductionProjection4539, reductionProjection4516]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4541 : Integer.Sparse (Fin 1613) := [(19, 3), (40, 12), (94, -1), (104, -4), (241, -12), (243, -8), (456, -36), (485, -36), (698, -4), (704, -4), (1052, 12)]

def reductionPivot4541 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![1, -1, 3, -3], ![1, 1, -1, -1]]

theorem reductionSound4541 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1933).moment H =
      Integer.Sparse.eval reductionProjection4541 (momentVector H) := by
  have heq : reductionPivot4541 = (fun u v => (normalNode1933).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1933).moment H = injectiveMoment H reductionPivot4541 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1933).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4541 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4541 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4541 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1120, reductionProjection3749, oldProjection792, reductionProjection4539] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4541 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3450 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4541 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1120 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4541 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3450 hH))).trans (oldProjectionSound1120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4541 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code485).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4541 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3749 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4541 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4541 (2 : Fin 4)) = canonicalInput3909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4541 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection792 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4541 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3909 hH))).trans (oldProjectionSound792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4541 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code456).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4541 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4539 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4541 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1933).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4541 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1933).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4541 (j : Fin 4)))
      2 72 72 2 ![72, 1, 72, 1] ![1, 72, 1, 72] reductionProjection4541 ![oldProjection1120, reductionProjection3749, oldProjection792, reductionProjection4539]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4542 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -160), (20, 10), (26, 80), (40, -480), (42, 80), (58, -240), (94, 55), (104, 240), (105, 240), (241, 480), (243, 640), (453, 720), (456, 1440), (476, 720), (485, 720), (506, 720), (691, -480), (694, -480), (698, 400), (700, 320), (704, 400), (1052, -480), (1223, -240), (1226, 80), (1251, 35)]

def reductionPivot4542 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound4542 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1924).moment H =
      Integer.Sparse.eval reductionProjection4542 (momentVector H) := by
  have heq : reductionPivot4542 = (fun u v => (normalNode1924).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1924).moment H = injectiveMoment H reductionPivot4542 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1924).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot4542 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4542 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4542 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4536, reductionProjection4538, reductionProjection4540, oldProjection2406, reductionProjection4541] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4542 (0 : Fin 5)) = canonicalInput6621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4536 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6621 hH))).trans (reductionSound4536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4542 (1 : Fin 5)) = (normalNode2085).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4538 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4538 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4542 (2 : Fin 5)) = (normalNode1937).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4540 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4542 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1808 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2406 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2406 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1808 hH))).trans (oldProjectionSound2406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4542 (4 : Fin 5)) = (normalNode1933).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4541 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4542 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1924).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4542 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1924).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4542 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 1440, 72] ![1, 5, 5, 1, 20] reductionProjection4542 ![reductionProjection4536, reductionProjection4538, reductionProjection4540, oldProjection2406, reductionProjection4541]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4543 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -5), (42, -80), (58, 240), (94, -45), (241, -160), (243, -320), (485, -720), (698, -240), (700, -160), (704, -160), (1052, 240), (1251, -25)]

def reductionPivot4543 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, 1, -2, 1], ![1, -1, 3, -3], ![1, 0, -1, 0]]

theorem reductionSound4543 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2095).moment H =
      Integer.Sparse.eval reductionProjection4543 (momentVector H) := by
  have heq : reductionPivot4543 = (fun u v => (normalNode2095).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2095).moment H = injectiveMoment H reductionPivot4543 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2095).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4543 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4543 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4543 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection819, oldProjection812, oldProjection818, reductionProjection3749] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4543 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3546 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4543 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection819 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4543 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3546 hH))).trans (oldProjectionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4543 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2102 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4543 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection812 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4543 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2102 hH))).trans (oldProjectionSound812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4543 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2005 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4543 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection818 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4543 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2005 hH))).trans (oldProjectionSound818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4543 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code485).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4543 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3749 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4543 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2095).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4543 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2095).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4543 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 144, 1] ![2, 160, 10, 1440] reductionProjection4543 ![oldProjection819, oldProjection812, oldProjection818, reductionProjection3749]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

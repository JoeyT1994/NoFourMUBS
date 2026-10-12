import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical014
import NoFourMUBs.Step2.SOS.Canonical015
import NoFourMUBs.Step2.SOS.Canonical016
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical174
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical195
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions014
import NoFourMUBs.Step2.SOS.Reductions015
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical120
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical132
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical133
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical137
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical155
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical157
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical163
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical205
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection512 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 100), (20, -5), (45, 480), (94, -35), (104, -80), (108, -80), (247, -80), (704, -160), (1214, 240), (1219, 240), (1251, -35)]

def reductionPivot512 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -3, 4], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound512 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4738).moment H =
      Integer.Sparse.eval reductionProjection512 (momentVector H) := by
  have heq : reductionPivot512 = (fun u v => (normalNode4738).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4738).moment H = injectiveMoment H reductionPivot512 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4738).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot512 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot512 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot512 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1168, oldProjection1091, oldProjection932, reductionProjection511] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot512 (0 : Fin 4)) = canonicalInput6269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot512 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1168 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot512 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6269 hH))).trans (oldProjectionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot512 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4249 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot512 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1091 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot512 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4249 hH))).trans (oldProjectionSound1091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot512 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4265 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot512 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection932 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot512 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection932 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4265 hH))).trans (oldProjectionSound932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot512 (3 : Fin 4)) = canonicalInput9694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot512 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection511 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot512 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9694 hH))).trans (reductionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4738).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot512 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4738).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot512 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 3, 144] ![2, 10, 480, 10] reductionProjection512 ![oldProjection1168, oldProjection1091, oldProjection932, reductionProjection511]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection513 : Integer.Sparse (Fin 1613) := [(87, -3), (698, 1), (1058, -3), (1226, 1), (1227, 1)]

def reductionPivot513 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 1, 0], ![1, -3, 1, 1], ![2, 2, -2, -2]]

theorem reductionSound513 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7063).moment H =
      Integer.Sparse.eval reductionProjection513 (momentVector H) := by
  have heq : reductionPivot513 = (fun u v => (normalNode7063).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7063).moment H = injectiveMoment H reductionPivot513 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7063).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7063).entries)).symm
  have hshape : reductionPivot513 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot513 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot513 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection114, oldProjection212, oldProjection229] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot513 (0 : Fin 3)) = canonicalInput696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot513 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot513 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound696 hH))).trans (oldProjectionSound114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot513 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4975 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot513 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection212 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot513 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4975 hH))).trans (oldProjectionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot513 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5044 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot513 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection229 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot513 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5044 hH))).trans (oldProjectionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7063).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot513 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7063).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot513 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection513 ![oldProjection114, oldProjection212, oldProjection229]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection514 : Integer.Sparse (Fin 1613) := [(615, 1)]

theorem reductionSound514 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code615).moment H =
      Integer.Sparse.eval reductionProjection514 (momentVector H) := by
  have hc : coordinates (615 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code615) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection514, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection515 : Integer.Sparse (Fin 1613) := [(85, -3), (243, 1), (1057, -3), (1225, 1), (1226, 1)]

def reductionPivot515 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 1, 0], ![1, -4, 2, 1], ![2, 3, -3, -2]]

theorem reductionSound515 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7060).moment H =
      Integer.Sparse.eval reductionProjection515 (momentVector H) := by
  have heq : reductionPivot515 = (fun u v => (normalNode7060).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7060).moment H = injectiveMoment H reductionPivot515 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7060).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7060).entries)).symm
  have hshape : reductionPivot515 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot515 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot515 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection396, oldProjection211, oldProjection228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot515 (0 : Fin 3)) = canonicalInput694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot515 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot515 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound694 hH))).trans (reductionSound396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot515 (1 : Fin 3)) = canonicalInput10976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot515 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot515 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10976 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot515 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5043 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot515 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection228 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot515 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5043 hH))).trans (oldProjectionSound228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7060).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot515 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7060).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot515 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection515 ![reductionProjection396, oldProjection211, oldProjection228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection516 : Integer.Sparse (Fin 1613) := [(62, 3), (85, 3), (87, 3), (243, -2), (615, -9), (691, 3), (698, -2), (700, -1), (1057, 3), (1058, 3), (1225, -1), (1226, -2), (1227, -1)]

def reductionPivot516 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -3, 2, 3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound516 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode291).moment H =
      Integer.Sparse.eval reductionProjection516 (momentVector H) := by
  have heq : reductionPivot516 = (fun u v => (normalNode291).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode291).moment H = injectiveMoment H reductionPivot516 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode291).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot516 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot516 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot516 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection513, reductionProjection84, reductionProjection514, reductionProjection515] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot516 (0 : Fin 4)) = canonicalInput2055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot516 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot516 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2055 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot516 (1 : Fin 4)) = canonicalInput990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot516 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection84 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot516 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound990 hH))).trans (reductionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot516 (2 : Fin 4)) = canonicalInput947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot516 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection514 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot516 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound947 hH))).trans (reductionSound514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot516 (3 : Fin 4)) = canonicalInput945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot516 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection515 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot516 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound945 hH))).trans (reductionSound515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode291).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot516 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode291).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot516 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection516 ![reductionProjection513, reductionProjection84, reductionProjection514, reductionProjection515]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection517 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (62, 480), (93, -60), (94, 25), (243, -80), (691, 240), (698, -80), (700, -80), (1047, 480), (1219, 480), (1251, 5)]

def reductionPivot517 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound517 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode294).moment H =
      Integer.Sparse.eval reductionProjection517 (momentVector H) := by
  have heq : reductionPivot517 = (fun u v => (normalNode294).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode294).moment H = injectiveMoment H reductionPivot517 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode294).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot517 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot517 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot517 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1104, reductionProjection84, reductionProjection83, oldProjection1024] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot517 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1250 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot517 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1104 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot517 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1250 hH))).trans (oldProjectionSound1104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot517 (1 : Fin 4)) = canonicalInput990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot517 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection84 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot517 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound990 hH))).trans (reductionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot517 (2 : Fin 4)) = canonicalInput961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot517 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot517 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound961 hH))).trans (reductionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot517 (3 : Fin 4)) = canonicalInput958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot517 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot517 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound958 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode294).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot517 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode294).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot517 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 3, 144] ![2, 160, 480, 10] reductionProjection517 ![oldProjection1104, reductionProjection84, reductionProjection83, oldProjection1024]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection518 : Integer.Sparse (Fin 1613) := [(641, 1)]

theorem reductionSound518 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code641).moment H =
      Integer.Sparse.eval reductionProjection518 (momentVector H) := by
  have hc : coordinates (641 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code641) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection518, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection519 : Integer.Sparse (Fin 1613) := [(62, -1), (85, -1), (87, -1)]

def reductionPivot519 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 1, 1, 1], ![1, -3, 1, 1], ![3, 2, -2, -3]]

theorem reductionSound519 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6124).moment H =
      Integer.Sparse.eval reductionProjection519 (momentVector H) := by
  have heq : reductionPivot519 = (fun u v => (normalNode6124).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6124).moment H = injectiveMoment H reductionPivot519 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6124).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6124).entries)).symm
  have hshape : reductionPivot519 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot519 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot519 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection396, oldProjection100, oldProjection114] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot519 (0 : Fin 3)) = canonicalInput42.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot519 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot519 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound42 hH))).trans (reductionSound396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot519 (1 : Fin 3)) = canonicalInput661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot519 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection100 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot519 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound661 hH))).trans (oldProjectionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot519 (2 : Fin 3)) = canonicalInput696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot519 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection114 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot519 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection114 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound696 hH))).trans (oldProjectionSound114 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6124).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot519 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6124).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot519 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection519 ![reductionProjection396, oldProjection100, oldProjection114]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection520 : Integer.Sparse (Fin 1613) := [(62, 3), (85, 3), (87, 3), (641, -9), (698, -1), (1047, 3), (1058, 3), (1060, 3), (1219, 3), (1223, 3), (1226, -1), (1227, -1)]

def reductionPivot520 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound520 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode297).moment H =
      Integer.Sparse.eval reductionProjection520 (momentVector H) := by
  have heq : reductionPivot520 = (fun u v => (normalNode297).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode297).moment H = injectiveMoment H reductionPivot520 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode297).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot520 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot520 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot520 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1239, reductionProjection518, reductionProjection519, oldProjection1196] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot520 (0 : Fin 4)) = canonicalInput1698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot520 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot520 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1698 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot520 (1 : Fin 4)) = canonicalInput995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot520 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection518 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot520 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound995 hH))).trans (reductionSound518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot520 (2 : Fin 4)) = canonicalInput974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot520 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection519 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot520 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound974 hH))).trans (reductionSound519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot520 (3 : Fin 4)) = canonicalInput970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot520 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1196 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot520 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound970 hH))).trans (oldProjectionSound1196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode297).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot520 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode297).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot520 (j : Fin 4)))
      2 18 18 2 ![9, 1, 3, 3] ![2, 18, 6, 6] reductionProjection520 ![oldProjection1239, reductionProjection518, reductionProjection519, oldProjection1196]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection521 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (93, -60), (94, -25), (247, -80), (694, 720), (1047, 240), (1055, 240), (1250, -60), (1251, -10), (1319, 240)]

def reductionPivot521 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound521 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5752).moment H =
      Integer.Sparse.eval reductionProjection521 (momentVector H) := by
  have heq : reductionPivot521 = (fun u v => (normalNode5752).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5752).moment H = injectiveMoment H reductionPivot521 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5752).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot521 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot521 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot521 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1198, oldProjection993, oldProjection790, oldProjection1195] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot521 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4384 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot521 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1198 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot521 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4384 hH))).trans (oldProjectionSound1198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot521 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5219 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot521 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection993 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot521 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5219 hH))).trans (oldProjectionSound993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot521 (2 : Fin 4)) = canonicalInput11834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot521 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot521 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11834 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot521 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5226 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot521 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot521 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5226 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5752).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot521 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5752).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot521 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 3, 720] ![20, 2, 480, 2] reductionProjection521 ![oldProjection1198, oldProjection993, oldProjection790, oldProjection1195]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection522 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -180), (20, 15), (45, -480), (62, -960), (85, -480), (87, -480), (93, 120), (94, 35), (104, 80), (108, 80), (243, 240), (247, 160), (615, 720), (641, 720), (691, -480), (694, -720), (698, 320), (700, 160), (704, 160), (1047, -960), (1055, -240), (1057, -240), (1058, -480), (1060, -240), (1214, -240), (1219, -960), (1223, -240), (1225, 80), (1226, 240), (1227, 160), (1250, 60), (1251, 40), (1319, -240)]

def reductionPivot522 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound522 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode267).moment H =
      Integer.Sparse.eval reductionProjection522 (momentVector H) := by
  have heq : reductionPivot522 = (fun u v => (normalNode267).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode267).moment H = injectiveMoment H reductionPivot522 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode267).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot522 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot522 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot522 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection512, reductionProjection516, reductionProjection517, reductionProjection520, reductionProjection521] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot522 (0 : Fin 5)) = canonicalInput909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound909 hH))).trans (reductionSound512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot522 (1 : Fin 5)) = (normalNode291).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection516 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot522 (2 : Fin 5)) = (normalNode294).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection517 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot522 (3 : Fin 5)) = (normalNode297).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection520 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot522 (4 : Fin 5)) = canonicalInput951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection521 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot522 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound951 hH))).trans (reductionSound521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode267).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot522 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode267).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot522 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 1440, 18, 1440] ![1, 80, 1, 80, 1] reductionProjection522 ![reductionProjection512, reductionProjection516, reductionProjection517, reductionProjection520, reductionProjection521]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection523 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (104, -16), (105, -16), (108, -16), (137, -144), (241, -16), (242, 48), (243, -32), (247, -32), (1251, 1)]

def reductionPivot523 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -3, 4], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound523 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4740).moment H =
      Integer.Sparse.eval reductionProjection523 (momentVector H) := by
  have heq : reductionPivot523 = (fun u v => (normalNode4740).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4740).moment H = injectiveMoment H reductionPivot523 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4740).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot523 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot523 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot523 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1037, oldProjection1026, oldProjection400, oldProjection994] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot523 (0 : Fin 4)) = canonicalInput6282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot523 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1037 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot523 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1037 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6282 hH))).trans (oldProjectionSound1037 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot523 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4254 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot523 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1026 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot523 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1026 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4254 hH))).trans (oldProjectionSound1026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot523 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4271 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot523 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection400 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot523 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4271 hH))).trans (oldProjectionSound400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot523 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4272 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot523 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection994 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot523 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4272 hH))).trans (oldProjectionSound994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4740).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot523 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4740).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot523 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection523 ![oldProjection1037, oldProjection1026, oldProjection400, oldProjection994]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection524 : Integer.Sparse (Fin 1613) := [(164, 1)]

theorem reductionSound524 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code164).moment H =
      Integer.Sparse.eval reductionProjection524 (momentVector H) := by
  have hc : coordinates (164 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code164) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection524, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection525 : Integer.Sparse (Fin 1613) := [(1104, 1)]

theorem reductionSound525 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1104).moment H =
      Integer.Sparse.eval reductionProjection525 (momentVector H) := by
  have hc : coordinates (1104 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1104) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection525, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection526 : Integer.Sparse (Fin 1613) := [(94, -1), (156, -144), (164, -144), (698, -16), (1052, 48), (1104, -144), (1223, 48), (1226, -16), (1251, 3)]

def reductionPivot526 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -3, 2, 3], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, 0, 1, -2]]

theorem reductionSound526 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode292).moment H =
      Integer.Sparse.eval reductionProjection526 (momentVector H) := by
  have heq : reductionPivot526 = (fun u v => (normalNode292).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode292).moment H = injectiveMoment H reductionPivot526 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode292).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot526 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot526 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot526 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1035, reductionProjection524, reductionProjection525, oldProjection406] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot526 (0 : Fin 4)) = canonicalInput12531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot526 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1035 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot526 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12531 hH))).trans (oldProjectionSound1035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot526 (1 : Fin 4)) = canonicalInput1019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot526 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection524 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot526 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1019 hH))).trans (reductionSound524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot526 (2 : Fin 4)) = canonicalInput948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot526 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection525 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot526 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound948 hH))).trans (reductionSound525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot526 (3 : Fin 4)) = canonicalInput944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot526 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection406 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot526 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection406 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound944 hH))).trans (oldProjectionSound406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode292).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot526 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode292).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot526 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection526 ![oldProjection1035, reductionProjection524, reductionProjection525, oldProjection406]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection527 : Integer.Sparse (Fin 1613) := [(412, 1)]

theorem reductionSound527 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code412).moment H =
      Integer.Sparse.eval reductionProjection527 (momentVector H) := by
  have hc : coordinates (412 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code412) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection527, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection528 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (94, -45), (241, -80), (412, -720), (691, 240), (694, 480), (697, 240), (698, -160), (699, 240), (700, -80), (704, -80), (1251, -15)]

def reductionPivot528 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound528 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode301).moment H =
      Integer.Sparse.eval reductionProjection528 (momentVector H) := by
  have heq : reductionPivot528 = (fun u v => (normalNode301).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode301).moment H = injectiveMoment H reductionPivot528 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode301).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot528 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot528 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot528 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1036, reductionProjection465, reductionProjection527, oldProjection993] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot528 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1269 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot528 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot528 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1269 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot528 (1 : Fin 4)) = canonicalInput1010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot528 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection465 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot528 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1010 hH))).trans (reductionSound465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot528 (2 : Fin 4)) = canonicalInput999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot528 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection527 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot528 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection527 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound999 hH))).trans (reductionSound527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot528 (3 : Fin 4)) = canonicalInput996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot528 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection993 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot528 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound996 hH))).trans (oldProjectionSound993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode301).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot528 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode301).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot528 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 1, 720] ![2, 20, 1440, 2] reductionProjection528 ![oldProjection1036, reductionProjection465, reductionProjection527, oldProjection993]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection529 : Integer.Sparse (Fin 1613) := [(153, -1), (164, -1), (169, -1), (1094, -1)]

def reductionPivot529 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]

theorem reductionSound529 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode302).moment H =
      Integer.Sparse.eval reductionProjection529 (momentVector H) := by
  have heq : reductionPivot529 = (fun u v => (normalNode302).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode302).moment H = injectiveMoment H reductionPivot529 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode302).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot529 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot529 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot529 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection408, reductionProjection505, reductionProjection524, oldProjection405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot529 (0 : Fin 4)) = canonicalInput1741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot529 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot529 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1741 hH))).trans (oldProjectionSound408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot529 (1 : Fin 4)) = canonicalInput1012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot529 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot529 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1012 hH))).trans (reductionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot529 (2 : Fin 4)) = canonicalInput1004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot529 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection524 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot529 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1004 hH))).trans (reductionSound524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot529 (3 : Fin 4)) = canonicalInput1001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot529 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection405 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot529 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1001 hH))).trans (oldProjectionSound405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode302).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot529 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode302).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot529 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection529 ![oldProjection408, reductionProjection505, reductionProjection524, oldProjection405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection530 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -5), (93, -60), (94, 15), (241, -160), (690, 480), (698, -160), (1047, 480), (1251, 15), (1319, 240)]

def reductionPivot530 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -3, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound530 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5753).moment H =
      Integer.Sparse.eval reductionProjection530 (momentVector H) := by
  have heq : reductionPivot530 = (fun u v => (normalNode5753).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5753).moment H = injectiveMoment H reductionPivot530 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5753).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot530 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot530 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot530 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1032, oldProjection1024, oldProjection794, oldProjection991] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot530 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4401 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot530 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1032 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot530 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1032 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4401 hH))).trans (oldProjectionSound1032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot530 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5221 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot530 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot530 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5221 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot530 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5229 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot530 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection794 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot530 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5229 hH))).trans (oldProjectionSound794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot530 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5230 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot530 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection991 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot530 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5230 hH))).trans (oldProjectionSound991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5753).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot530 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5753).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot530 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 72] ![2, 10, 10, 20] reductionProjection530 ![oldProjection1032, oldProjection1024, oldProjection794, oldProjection991]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection531 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -120), (20, 10), (93, 60), (94, 35), (104, 80), (105, 80), (108, 80), (137, 720), (153, 720), (156, 720), (164, 1440), (169, 720), (241, 320), (242, -240), (243, 160), (247, 160), (412, 720), (690, -480), (691, -240), (694, -480), (697, -240), (698, 400), (699, -240), (700, 80), (704, 80), (1047, -480), (1052, -240), (1094, 720), (1104, 720), (1223, -240), (1226, 80), (1251, -20), (1319, -240)]

def reductionPivot531 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound531 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode268).moment H =
      Integer.Sparse.eval reductionProjection531 (momentVector H) := by
  have heq : reductionPivot531 = (fun u v => (normalNode268).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode268).moment H = injectiveMoment H reductionPivot531 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode268).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot531 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot531 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot531 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection523, reductionProjection526, reductionProjection528, reductionProjection529, reductionProjection530] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot531 (0 : Fin 5)) = canonicalInput912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection523 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound912 hH))).trans (reductionSound523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot531 (1 : Fin 5)) = (normalNode292).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection526 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection526 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound526 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot531 (2 : Fin 5)) = (normalNode301).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection528 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection528 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot531 (3 : Fin 5)) = (normalNode302).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection529 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection529 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot531 (4 : Fin 5)) = canonicalInput955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection530 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot531 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection530 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound955 hH))).trans (reductionSound530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode268).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot531 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode268).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot531 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 2, 1440] ![5, 5, 1, 720, 1] reductionProjection531 ![reductionProjection523, reductionProjection526, reductionProjection528, reductionProjection529, reductionProjection530]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection532 : Integer.Sparse (Fin 1613) := [(85, -1), (1060, -1), (1223, -1)]

def reductionPivot532 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 1, 0], ![1, -4, 1, 2], ![2, 3, -2, -3]]

theorem reductionSound532 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7059).moment H =
      Integer.Sparse.eval reductionProjection532 (momentVector H) := by
  have heq : reductionPivot532 = (fun u v => (normalNode7059).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7059).moment H = injectiveMoment H reductionPivot532 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7059).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7059).entries)).symm
  have hshape : reductionPivot532 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot532 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot532 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection396, oldProjection213, oldProjection225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot532 (0 : Fin 3)) = canonicalInput693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot532 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot532 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound693 hH))).trans (reductionSound396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot532 (1 : Fin 3)) = canonicalInput10975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot532 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot532 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10975 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot532 (2 : Fin 3)) = canonicalInput11144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot532 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot532 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11144 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7059).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot532 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7059).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot532 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection532 ![reductionProjection396, oldProjection213, oldProjection225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection533 : Integer.Sparse (Fin 1613) := [(3, 4), (85, 96), (93, -12), (94, 3), (243, -16), (1047, 48), (1057, 48), (1060, 48), (1214, 48), (1223, 48), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot533 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]

theorem reductionSound533 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode269).moment H =
      Integer.Sparse.eval reductionProjection533 (momentVector H) := by
  have heq : reductionPivot533 = (fun u v => (normalNode269).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode269).moment H = injectiveMoment H reductionPivot533 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode269).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot533 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot533 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot533 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection492, reductionProjection515, reductionProjection532, oldProjection1024] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot533 (0 : Fin 4)) = canonicalInput913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot533 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection492 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot533 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound913 hH))).trans (reductionSound492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot533 (1 : Fin 4)) = canonicalInput945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot533 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection515 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot533 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound945 hH))).trans (reductionSound515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot533 (2 : Fin 4)) = canonicalInput957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot533 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection532 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot533 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound957 hH))).trans (reductionSound532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot533 (3 : Fin 4)) = canonicalInput958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot533 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot533 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound958 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode269).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot533 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode269).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot533 (j : Fin 4)))
      2 288 288 2 ![144, 9, 3, 144] ![2, 32, 96, 2] reductionProjection533 ![reductionProjection492, reductionProjection515, reductionProjection532, oldProjection1024]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection534 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (93, -60), (94, -35), (108, -80), (241, -80), (242, 240), (247, -160), (694, 240), (697, 240), (699, 240), (1104, -720), (1251, -20), (1319, 240)]

def reductionPivot534 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]

theorem reductionSound534 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode270).moment H =
      Integer.Sparse.eval reductionProjection534 (momentVector H) := by
  have heq : reductionPivot534 = (fun u v => (normalNode270).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode270).moment H = injectiveMoment H reductionPivot534 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode270).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot534 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot534 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot534 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection485, reductionProjection525, reductionProjection495, reductionProjection483] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot534 (0 : Fin 4)) = canonicalInput914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot534 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection485 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot534 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound914 hH))).trans (reductionSound485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot534 (1 : Fin 4)) = canonicalInput946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot534 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection525 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot534 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound946 hH))).trans (reductionSound525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot534 (2 : Fin 4)) = canonicalInput959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot534 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection495 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot534 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound959 hH))).trans (reductionSound495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot534 (3 : Fin 4)) = canonicalInput960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot534 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection483 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot534 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound960 hH))).trans (reductionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode270).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot534 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode270).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot534 (j : Fin 4)))
      2 1440 1440 2 ![72, 1, 720, 3] ![20, 1440, 2, 480] reductionProjection534 ![reductionProjection485, reductionProjection525, reductionProjection495, reductionProjection483]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection535 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 1), (45, -48), (94, 5), (108, 16), (247, 16), (1251, 4)]

def reductionPivot535 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![-1, -1, 3, -1], ![3, 2, -4, -1]]

theorem reductionSound535 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7852).moment H =
      Integer.Sparse.eval reductionProjection535 (momentVector H) := by
  have heq : reductionPivot535 = (fun u v => (normalNode7852).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7852).moment H = injectiveMoment H reductionPivot535 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7852).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7852).entries)).symm
  have hshape : reductionPivot535 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot535 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot535 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection89, oldProjection241, oldProjection244] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot535 (0 : Fin 3)) = canonicalInput4650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot535 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot535 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4650 hH))).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot535 (1 : Fin 3)) = canonicalInput17995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot535 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection241 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot535 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17995 hH))).trans (oldProjectionSound241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot535 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6588 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot535 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection244 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot535 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6588 hH))).trans (oldProjectionSound244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7852).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot535 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7852).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot535 (j : Fin 3)))
      3 144 144 3 ![1, 48, 24] ![144, 3, 6] reductionProjection535 ![oldProjection89, oldProjection241, oldProjection244]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection536 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -5), (45, 240), (62, 240), (94, -35), (108, -80), (247, -160), (615, -720), (694, 240), (1047, 240), (1219, 240), (1251, -40), (1319, 240)]

def reductionPivot536 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound536 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode271).moment H =
      Integer.Sparse.eval reductionProjection536 (momentVector H) := by
  have heq : reductionPivot536 = (fun u v => (normalNode271).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode271).moment H = injectiveMoment H reductionPivot536 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode271).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot536 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot536 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot536 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection535, reductionProjection514, reductionProjection83, oldProjection931] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot536 (0 : Fin 4)) = canonicalInput917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot536 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection535 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot536 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection535 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound917 hH))).trans (reductionSound535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot536 (1 : Fin 4)) = canonicalInput947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot536 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection514 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot536 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound947 hH))).trans (reductionSound514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot536 (2 : Fin 4)) = canonicalInput961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot536 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot536 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound961 hH))).trans (reductionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot536 (3 : Fin 4)) = canonicalInput962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot536 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection931 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot536 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound962 hH))).trans (oldProjectionSound931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode271).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot536 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode271).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot536 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 3, 360] ![10, 1440, 480, 4] reductionProjection536 ![reductionProjection535, reductionProjection514, reductionProjection83, oldProjection931]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection537 : Integer.Sparse (Fin 1613) := [(0, 1), (37, 240), (55, 240), (93, -60), (94, -5), (240, 240), (690, 480), (696, 480), (697, 480), (1058, 240), (1250, -120), (1251, 10)]

def reductionPivot537 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 1, -2, -1]]

theorem reductionSound537 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode272).moment H =
      Integer.Sparse.eval reductionProjection537 (momentVector H) := by
  have heq : reductionPivot537 = (fun u v => (normalNode272).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode272).moment H = injectiveMoment H reductionPivot537 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode272).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot537 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot537 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot537 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection770, reductionProjection479, oldProjection955, reductionProjection81] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot537 (0 : Fin 4)) = canonicalInput918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot537 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection770 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot537 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound918 hH))).trans (oldProjectionSound770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot537 (1 : Fin 4)) = canonicalInput953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot537 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection479 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot537 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound953 hH))).trans (reductionSound479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot537 (2 : Fin 4)) = canonicalInput965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot537 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection955 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot537 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound965 hH))).trans (oldProjectionSound955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot537 (3 : Fin 4)) = canonicalInput966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot537 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot537 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound966 hH))).trans (reductionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode272).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot537 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode272).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot537 (j : Fin 4)))
      2 1440 1440 2 ![3, 3, 720, 3] ![480, 480, 2, 480] reductionProjection537 ![oldProjection770, reductionProjection479, oldProjection955, reductionProjection81]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection538 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (247, -40), (329, -360), (408, -360), (412, -360), (694, 120), (1251, -10), (1319, 120)]

def reductionPivot538 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 2, -1, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound538 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode273).moment H =
      Integer.Sparse.eval reductionProjection538 (momentVector H) := by
  have heq : reductionPivot538 = (fun u v => (normalNode273).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode273).moment H = injectiveMoment H reductionPivot538 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode273).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot538 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot538 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot538 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection466, oldProjection470, oldProjection931, reductionProjection527] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot538 (0 : Fin 4)) = canonicalInput922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot538 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot538 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound922 hH))).trans (oldProjectionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot538 (1 : Fin 4)) = canonicalInput992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot538 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection470 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot538 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound992 hH))).trans (oldProjectionSound470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot538 (2 : Fin 4)) = canonicalInput997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot538 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection931 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot538 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound997 hH))).trans (oldProjectionSound931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot538 (3 : Fin 4)) = canonicalInput998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot538 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection527 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot538 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection527 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound998 hH))).trans (reductionSound527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode273).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot538 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode273).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot538 (j : Fin 4)))
      2 720 720 2 ![1, 1, 360, 1] ![720, 720, 2, 720] reductionProjection538 ![oldProjection466, oldProjection470, oldProjection931, reductionProjection527]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection539 : Integer.Sparse (Fin 1613) := [(20, 1), (83, -48), (94, -3), (243, 16), (1060, -48), (1225, 16)]

def reductionPivot539 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![1, 3, -4, 0], ![2, -3, 3, -2]]

theorem reductionSound539 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7054).moment H =
      Integer.Sparse.eval reductionProjection539 (momentVector H) := by
  have heq : reductionPivot539 = (fun u v => (normalNode7054).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7054).moment H = injectiveMoment H reductionPivot539 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7054).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7054).entries)).symm
  have hshape : reductionPivot539 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot539 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot539 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection421, oldProjection213, oldProjection221] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot539 (0 : Fin 3)) = canonicalInput533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot539 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection421 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot539 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound533 hH))).trans (reductionSound421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot539 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3852 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot539 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot539 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3852 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot539 (2 : Fin 3)) = canonicalInput9004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot539 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot539 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9004 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7054).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot539 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7054).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot539 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection539 ![reductionProjection421, oldProjection213, oldProjection221]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection540 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 2), (20, 2), (83, 48), (93, -6), (94, 3), (243, -16), (1044, 24), (1045, 24), (1060, 48), (1225, -16), (1251, -1)]

def reductionPivot540 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound540 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode274).moment H =
      Integer.Sparse.eval reductionProjection540 (momentVector H) := by
  have heq : reductionPivot540 = (fun u v => (normalNode274).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode274).moment H = injectiveMoment H reductionPivot540 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode274).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot540 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot540 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 72, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot540 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1022, oldProjection1021, reductionProjection539, reductionProjection539] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot540 (0 : Fin 4)) = canonicalInput926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot540 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1022 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot540 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1022 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound926 hH))).trans (oldProjectionSound1022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot540 (1 : Fin 4)) = canonicalInput1016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot540 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1021 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot540 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1016 hH))).trans (oldProjectionSound1021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot540 (2 : Fin 4)) = canonicalInput1017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot540 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection539 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot540 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1017 hH))).trans (reductionSound539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot540 (3 : Fin 4)) = canonicalInput1018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot540 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection539 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot540 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1018 hH))).trans (reductionSound539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode274).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot540 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode274).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot540 (j : Fin 4)))
      2 144 144 2 ![36, 72, 144, 144] ![4, 2, 1, 1] reductionProjection540 ![oldProjection1022, oldProjection1021, reductionProjection539, reductionProjection539]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection541 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (93, -240), (94, -40), (690, 240), (691, 240), (694, 480), (1250, -240), (1251, 5)]

def reductionPivot541 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, -1, -2]]

theorem reductionSound541 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode275).moment H =
      Integer.Sparse.eval reductionProjection541 (momentVector H) := by
  have heq : reductionPivot541 = (fun u v => (normalNode275).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode275).moment H = injectiveMoment H reductionPivot541 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode275).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot541 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot541 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot541 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection955, oldProjection958, oldProjection958, oldProjection956] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot541 (0 : Fin 4)) = canonicalInput1024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot541 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection955 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot541 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1024 hH))).trans (oldProjectionSound955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot541 (1 : Fin 4)) = canonicalInput964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot541 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot541 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound964 hH))).trans (oldProjectionSound958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot541 (2 : Fin 4)) = canonicalInput952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot541 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot541 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound952 hH))).trans (oldProjectionSound958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot541 (3 : Fin 4)) = canonicalInput950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot541 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection956 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot541 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound950 hH))).trans (oldProjectionSound956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode275).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot541 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode275).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot541 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 144] ![2, 2, 2, 10] reductionProjection541 ![oldProjection955, oldProjection958, oldProjection958, oldProjection956]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection542 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (93, -180), (94, -35), (690, 480), (694, 480), (696, 240), (697, 240), (1250, -240), (1251, 10)]

def reductionPivot542 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 1, -2, -1]]

theorem reductionSound542 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode276).moment H =
      Integer.Sparse.eval reductionProjection542 (momentVector H) := by
  have heq : reductionPivot542 = (fun u v => (normalNode276).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode276).moment H = injectiveMoment H reductionPivot542 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode276).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot542 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot542 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot542 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection958, oldProjection955, reductionProjection479, oldProjection958] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot542 (0 : Fin 4)) = canonicalInput1025.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot542 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot542 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1025 hH))).trans (oldProjectionSound958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot542 (1 : Fin 4)) = canonicalInput965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot542 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection955 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot542 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound965 hH))).trans (oldProjectionSound955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot542 (2 : Fin 4)) = canonicalInput953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot542 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection479 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot542 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound953 hH))).trans (reductionSound479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot542 (3 : Fin 4)) = canonicalInput952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot542 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot542 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound952 hH))).trans (oldProjectionSound958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode276).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot542 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode276).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot542 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 3, 720] ![2, 2, 480, 2] reductionProjection542 ![oldProjection958, oldProjection955, reductionProjection479, oldProjection958]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection543 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (93, -180), (94, -35), (694, 480), (697, 240), (699, 240), (1250, -120), (1251, -5), (1319, 480)]

def reductionPivot543 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]

theorem reductionSound543 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode278).moment H =
      Integer.Sparse.eval reductionProjection543 (momentVector H) := by
  have heq : reductionPivot543 = (fun u v => (normalNode278).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode278).moment H = injectiveMoment H reductionPivot543 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode278).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot543 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot543 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot543 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1195, oldProjection958, reductionProjection483, reductionProjection495] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot543 (0 : Fin 4)) = canonicalInput1027.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot543 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot543 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1027 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot543 (1 : Fin 4)) = canonicalInput972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot543 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot543 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound972 hH))).trans (oldProjectionSound958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot543 (2 : Fin 4)) = canonicalInput960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot543 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection483 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot543 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound960 hH))).trans (reductionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot543 (3 : Fin 4)) = canonicalInput959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot543 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection495 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot543 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound959 hH))).trans (reductionSound495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode278).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot543 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode278).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot543 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 3, 720] ![2, 2, 480, 2] reductionProjection543 ![oldProjection1195, oldProjection958, reductionProjection483, reductionProjection495]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

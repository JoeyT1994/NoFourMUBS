import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical014
import NoFourMUBs.Step2.SOS.Canonical015
import NoFourMUBs.Step2.SOS.Canonical016
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical127
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical196
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions014
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions016
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical102
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical104
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical131
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical155
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection544 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (55, 480), (93, -120), (94, -10), (690, 240), (691, 240), (696, 480), (1058, 480), (1250, -120), (1251, 5)]

def reductionPivot544 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 1, -3, 0]]

theorem reductionSound544 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode279).moment H =
      Integer.Sparse.eval reductionProjection544 (momentVector H) := by
  have heq : reductionPivot544 = (fun u v => (normalNode279).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode279).moment H = injectiveMoment H reductionPivot544 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode279).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot544 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot544 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 3, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot544 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection956, reductionProjection81, reductionProjection81, oldProjection955] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot544 (0 : Fin 4)) = canonicalInput1028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot544 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection956 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot544 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1028 hH))).trans (oldProjectionSound956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot544 (1 : Fin 4)) = canonicalInput979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot544 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot544 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound979 hH))).trans (reductionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot544 (2 : Fin 4)) = canonicalInput966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot544 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot544 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound966 hH))).trans (reductionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot544 (3 : Fin 4)) = canonicalInput965.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot544 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection955 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot544 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound965 hH))).trans (oldProjectionSound955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode279).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot544 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode279).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot544 (j : Fin 4)))
      2 1440 1440 2 ![144, 3, 3, 720] ![10, 480, 480, 2] reductionProjection544 ![oldProjection956, reductionProjection81, reductionProjection81, oldProjection955]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection545 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (455, -144), (690, 48), (691, 48), (694, 96), (698, -16), (1044, 48), (1047, 48), (1050, 48), (1055, 48), (1251, 3)]

def reductionPivot545 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]

theorem reductionSound545 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode280).moment H =
      Integer.Sparse.eval reductionProjection545 (momentVector H) := by
  have heq : reductionPivot545 = (fun u v => (normalNode280).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode280).moment H = injectiveMoment H reductionPivot545 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode280).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot545 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot545 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot545 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection791, oldProjection479, oldProjection789, oldProjection790] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot545 (0 : Fin 4)) = canonicalInput1029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot545 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection791 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot545 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1029 hH))).trans (oldProjectionSound791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot545 (1 : Fin 4)) = canonicalInput981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot545 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection479 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot545 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound981 hH))).trans (oldProjectionSound479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot545 (2 : Fin 4)) = canonicalInput968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot545 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection789 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot545 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound968 hH))).trans (oldProjectionSound789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot545 (3 : Fin 4)) = canonicalInput967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot545 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot545 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound967 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode280).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot545 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode280).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot545 (j : Fin 4)))
      2 288 288 2 ![144, 1, 3, 3] ![2, 288, 96, 96] reductionProjection545 ![oldProjection791, oldProjection479, oldProjection789, oldProjection790]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection546 : Integer.Sparse (Fin 1613) := [(53, -1), (691, -1), (1052, -1)]

def reductionPivot546 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 0, 2], ![0, -2, 3, -1], ![3, 2, -3, -2]]

theorem reductionSound546 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6726).moment H =
      Integer.Sparse.eval reductionProjection546 (momentVector H) := by
  have heq : reductionPivot546 = (fun u v => (normalNode6726).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6726).moment H = injectiveMoment H reductionPivot546 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6726).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6726).entries)).symm
  have hshape : reductionPivot546 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot546 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot546 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection91, oldProjection163, oldProjection198] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot546 (0 : Fin 3)) = canonicalInput418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot546 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection91 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot546 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection91 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound418 hH))).trans (oldProjectionSound91 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot546 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3290 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot546 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot546 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3290 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot546 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3350 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot546 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot546 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3350 hH))).trans (oldProjectionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6726).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot546 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6726).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot546 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection546 ![oldProjection91, oldProjection163, oldProjection198]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection547 : Integer.Sparse (Fin 1613) := [(159, 1)]

theorem reductionSound547 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code159).moment H =
      Integer.Sparse.eval reductionProjection547 (momentVector H) := by
  have hc : coordinates (159 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code159) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection547, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection548 : Integer.Sparse (Fin 1613) := [(55, -1), (79, -1), (83, -1)]

def reductionPivot548 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 0, 1, 2], ![1, 2, -3, 0], ![3, -2, 2, -3]]

theorem reductionSound548 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6115).moment H =
      Integer.Sparse.eval reductionProjection548 (momentVector H) := by
  have heq : reductionPivot548 = (fun u v => (normalNode6115).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6115).moment H = injectiveMoment H reductionPivot548 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6115).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6115).entries)).symm
  have hshape : reductionPivot548 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot548 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot548 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection421, oldProjection96, oldProjection110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot548 (0 : Fin 3)) = canonicalInput11.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot548 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection421 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot548 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11 hH))).trans (reductionSound421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot548 (1 : Fin 3)) = canonicalInput517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot548 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection96 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot548 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection96 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound517 hH))).trans (oldProjectionSound96 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot548 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw352 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot548 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot548 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical352 hH))).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6115).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot548 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6115).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot548 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection548 ![reductionProjection421, oldProjection96, oldProjection110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection549 : Integer.Sparse (Fin 1613) := [(53, 1), (55, 1), (79, 1), (83, 1), (159, -3), (690, 1), (691, 1), (1044, 1), (1050, 1), (1052, 1)]

def reductionPivot549 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 2, 0, -2], ![2, 0, -3, 1]]

theorem reductionSound549 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode281).moment H =
      Integer.Sparse.eval reductionProjection549 (momentVector H) := by
  have heq : reductionPivot549 = (fun u v => (normalNode281).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode281).moment H = injectiveMoment H reductionPivot549 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode281).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot549 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot549 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot549 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection546, reductionProjection547, reductionProjection548, oldProjection789] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot549 (0 : Fin 4)) = canonicalInput1030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot549 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection546 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot549 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1030 hH))).trans (reductionSound546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot549 (1 : Fin 4)) = canonicalInput982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot549 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection547 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot549 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound982 hH))).trans (reductionSound547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot549 (2 : Fin 4)) = canonicalInput969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot549 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection548 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot549 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound969 hH))).trans (reductionSound548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot549 (3 : Fin 4)) = canonicalInput968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot549 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection789 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot549 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound968 hH))).trans (oldProjectionSound789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode281).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot549 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode281).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot549 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection549 ![reductionProjection546, reductionProjection547, reductionProjection548, oldProjection789]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection550 : Integer.Sparse (Fin 1613) := [(62, -3), (243, 1), (696, -3), (698, 1), (1226, 1)]

def reductionPivot550 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 1, 0], ![0, -3, 2, 1], ![3, 2, -3, -2]]

theorem reductionSound550 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6802).moment H =
      Integer.Sparse.eval reductionProjection550 (momentVector H) := by
  have heq : reductionPivot550 = (fun u v => (normalNode6802).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6802).moment H = injectiveMoment H reductionPivot550 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6802).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6802).entries)).symm
  have hshape : reductionPivot550 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot550 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot550 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection100, oldProjection183, oldProjection209] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot550 (0 : Fin 3)) = canonicalInput662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot550 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection100 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot550 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound662 hH))).trans (oldProjectionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot550 (1 : Fin 3)) = canonicalInput10972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot550 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection183 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot550 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10972 hH))).trans (oldProjectionSound183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot550 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4976 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot550 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection209 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot550 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4976 hH))).trans (oldProjectionSound209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6802).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot550 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6802).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot550 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection550 ![oldProjection100, oldProjection183, oldProjection209]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection551 : Integer.Sparse (Fin 1613) := [(62, -1), (699, -1), (1058, -1)]

def reductionPivot551 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 1, 0], ![0, -3, 1, 2], ![3, 2, -2, -3]]

theorem reductionSound551 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6801).moment H =
      Integer.Sparse.eval reductionProjection551 (momentVector H) := by
  have heq : reductionPivot551 = (fun u v => (normalNode6801).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6801).moment H = injectiveMoment H reductionPivot551 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6801).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6801).entries)).symm
  have hshape : reductionPivot551 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot551 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot551 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection100, oldProjection186, oldProjection212] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot551 (0 : Fin 3)) = canonicalInput661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot551 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection100 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot551 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound661 hH))).trans (oldProjectionSound100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot551 (1 : Fin 3)) = canonicalInput10971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot551 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection186 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot551 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10971 hH))).trans (oldProjectionSound186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot551 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4975 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot551 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection212 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot551 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4975 hH))).trans (oldProjectionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6801).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot551 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6801).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot551 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection551 ![oldProjection100, oldProjection186, oldProjection212]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection552 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (62, 480), (93, -120), (243, -80), (694, 240), (696, 240), (698, -80), (699, 240), (1047, 240), (1058, 240), (1226, -80), (1250, -60)]

def reductionPivot552 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]

theorem reductionSound552 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode284).moment H =
      Integer.Sparse.eval reductionProjection552 (momentVector H) := by
  have heq : reductionPivot552 = (fun u v => (normalNode284).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode284).moment H = injectiveMoment H reductionPivot552 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode284).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot552 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot552 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot552 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1024, reductionProjection550, reductionProjection551, oldProjection958] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot552 (0 : Fin 4)) = canonicalInput1033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot552 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot552 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1033 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot552 (1 : Fin 4)) = canonicalInput985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot552 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection550 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot552 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound985 hH))).trans (reductionSound550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot552 (2 : Fin 4)) = canonicalInput973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot552 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection551 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot552 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound973 hH))).trans (reductionSound551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot552 (3 : Fin 4)) = canonicalInput972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot552 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot552 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound972 hH))).trans (oldProjectionSound958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode284).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot552 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode284).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot552 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 3, 720] ![10, 160, 480, 2] reductionProjection552 ![oldProjection1024, reductionProjection550, reductionProjection551, oldProjection958]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection553 : Integer.Sparse (Fin 1613) := [(488, 1)]

theorem reductionSound553 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code488).moment H =
      Integer.Sparse.eval reductionProjection553 (momentVector H) := by
  have hc : coordinates (488 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code488) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection553, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection554 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (247, -40), (488, -360), (694, 240), (1047, 120), (1055, 120), (1251, -10), (1319, 360), (1388, 120)]

def reductionPivot554 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]

theorem reductionSound554 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode285).moment H =
      Integer.Sparse.eval reductionProjection554 (momentVector H) := by
  have heq : reductionPivot554 = (fun u v => (normalNode285).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode285).moment H = injectiveMoment H reductionPivot554 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode285).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot554 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot554 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot554 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection931, reductionProjection553, oldProjection930, oldProjection790] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot554 (0 : Fin 4)) = canonicalInput1034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot554 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection931 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot554 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1034 hH))).trans (oldProjectionSound931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot554 (1 : Fin 4)) = canonicalInput986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot554 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection553 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot554 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound986 hH))).trans (reductionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot554 (2 : Fin 4)) = canonicalInput976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot554 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection930 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot554 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound976 hH))).trans (oldProjectionSound930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot554 (3 : Fin 4)) = canonicalInput975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot554 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot554 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound975 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode285).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot554 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode285).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot554 (j : Fin 4)))
      2 720 720 2 ![360, 1, 3, 3] ![2, 720, 240, 240] reductionProjection554 ![oldProjection931, reductionProjection553, oldProjection930, oldProjection790]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection555 : Integer.Sparse (Fin 1613) := [(621, 1)]

theorem reductionSound555 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code621).moment H =
      Integer.Sparse.eval reductionProjection555 (momentVector H) := by
  have hc : coordinates (621 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code621) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection555, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection556 : Integer.Sparse (Fin 1613) := [(19, 2), (94, 1), (153, -72), (408, -72), (621, -72), (690, 24), (1251, 3), (1319, 24)]

def reductionPivot556 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]

theorem reductionSound556 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode286).moment H =
      Integer.Sparse.eval reductionProjection556 (momentVector H) := by
  have heq : reductionPivot556 = (fun u v => (normalNode286).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode286).moment H = injectiveMoment H reductionPivot556 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode286).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot556 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot556 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot556 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection470, reductionProjection555, oldProjection991, oldProjection405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot556 (0 : Fin 4)) = canonicalInput1035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot556 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection470 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot556 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1035 hH))).trans (oldProjectionSound470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot556 (1 : Fin 4)) = canonicalInput1005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot556 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection555 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot556 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1005 hH))).trans (reductionSound555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot556 (2 : Fin 4)) = canonicalInput1002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot556 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection991 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot556 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1002 hH))).trans (oldProjectionSound991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot556 (3 : Fin 4)) = canonicalInput1001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot556 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection405 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot556 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1001 hH))).trans (oldProjectionSound405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode286).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot556 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode286).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot556 (j : Fin 4)))
      2 144 144 2 ![1, 1, 72, 1] ![144, 144, 2, 144] reductionProjection556 ![oldProjection470, reductionProjection555, oldProjection991, oldProjection405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection557 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -20), (241, -160), (454, -720), (690, 480), (696, 240), (697, 480), (698, -240), (1047, 240), (1251, 35)]

def reductionPivot557 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]

theorem reductionSound557 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode293).moment H =
      Integer.Sparse.eval reductionProjection557 (momentVector H) := by
  have heq : reductionPivot557 = (fun u v => (normalNode293).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode293).moment H = injectiveMoment H reductionPivot557 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode293).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot557 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot557 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 144, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot557 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1036, oldProjection478, oldProjection794, reductionProjection479] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot557 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1248 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot557 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot557 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1248 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot557 (1 : Fin 4)) = canonicalInput989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot557 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection478 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot557 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection478 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound989 hH))).trans (oldProjectionSound478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot557 (2 : Fin 4)) = canonicalInput956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot557 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection794 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot557 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound956 hH))).trans (oldProjectionSound794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot557 (3 : Fin 4)) = canonicalInput953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot557 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection479 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot557 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound953 hH))).trans (reductionSound479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode293).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot557 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode293).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot557 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 144, 3] ![2, 1440, 10, 480] reductionProjection557 ![oldProjection1036, oldProjection478, oldProjection794, reductionProjection479]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection558 : Integer.Sparse (Fin 1613) := [(0, 6), (94, -35), (247, -160), (408, -720), (694, 480), (697, 480), (699, 240), (1251, -45), (1319, 240)]

def reductionPivot558 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound558 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode295).moment H =
      Integer.Sparse.eval reductionProjection558 (momentVector H) := by
  have heq : reductionPivot558 = (fun u v => (normalNode295).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode295).moment H = injectiveMoment H reductionPivot558 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode295).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot558 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot558 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 360, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot558 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection995, oldProjection470, oldProjection931, reductionProjection483] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot558 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1252 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot558 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot558 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1252 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot558 (1 : Fin 4)) = canonicalInput992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot558 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection470 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot558 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound992 hH))).trans (oldProjectionSound470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot558 (2 : Fin 4)) = canonicalInput963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot558 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection931 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot558 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound963 hH))).trans (oldProjectionSound931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot558 (3 : Fin 4)) = canonicalInput960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot558 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection483 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot558 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound960 hH))).trans (reductionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode295).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot558 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode295).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot558 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 360, 3] ![2, 1440, 4, 480] reductionProjection558 ![oldProjection995, oldProjection470, oldProjection931, reductionProjection483]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection559 : Integer.Sparse (Fin 1613) := [(0, 1), (55, 240), (455, -720), (690, 240), (696, 240), (697, 240), (698, -80), (1044, 240), (1050, 240), (1052, 240), (1058, 240), (1059, -80), (1251, 15)]

def reductionPivot559 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 0, -2, 0]]

theorem reductionSound559 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode296).moment H =
      Integer.Sparse.eval reductionProjection559 (momentVector H) := by
  have heq : reductionPivot559 = (fun u v => (normalNode296).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode296).moment H = injectiveMoment H reductionPivot559 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode296).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot559 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot559 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot559 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection804, oldProjection479, oldProjection789, reductionProjection81] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot559 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1259 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot559 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection804 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot559 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1259 hH))).trans (oldProjectionSound804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot559 (1 : Fin 4)) = canonicalInput994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot559 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection479 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot559 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound994 hH))).trans (oldProjectionSound479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot559 (2 : Fin 4)) = canonicalInput968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot559 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection789 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot559 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound968 hH))).trans (oldProjectionSound789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot559 (3 : Fin 4)) = canonicalInput966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot559 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot559 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound966 hH))).trans (reductionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode296).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot559 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode296).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot559 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 3, 3] ![2, 1440, 480, 480] reductionProjection559 ![oldProjection804, oldProjection479, oldProjection789, reductionProjection81]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection560 : Integer.Sparse (Fin 1613) := [(0, 1), (62, 240), (412, -720), (694, 240), (697, 240), (698, -80), (699, 240), (1047, 240), (1055, 240), (1058, 240), (1219, 240), (1227, -80), (1251, 15)]

def reductionPivot560 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound560 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode298).moment H =
      Integer.Sparse.eval reductionProjection560 (momentVector H) := by
  have heq : reductionPivot560 = (fun u v => (normalNode298).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode298).moment H = injectiveMoment H reductionPivot560 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode298).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot560 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot560 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot560 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection815, reductionProjection527, oldProjection790, reductionProjection551] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot560 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1262 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot560 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot560 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1262 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot560 (1 : Fin 4)) = canonicalInput998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot560 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection527 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot560 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection527 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound998 hH))).trans (reductionSound527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot560 (2 : Fin 4)) = canonicalInput977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot560 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot560 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound977 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot560 (3 : Fin 4)) = canonicalInput973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot560 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection551 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot560 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound973 hH))).trans (reductionSound551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode298).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot560 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode298).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot560 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 3, 3] ![2, 1440, 480, 480] reductionProjection560 ![oldProjection815, reductionProjection527, oldProjection790, reductionProjection551]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection561 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (94, -25), (247, -80), (488, -720), (690, 240), (694, 240), (696, 240), (697, 240), (698, -80), (704, -80), (1251, -5), (1319, 240)]

def reductionPivot561 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound561 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode299).moment H =
      Integer.Sparse.eval reductionProjection561 (momentVector H) := by
  have heq : reductionPivot561 = (fun u v => (normalNode299).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode299).moment H = injectiveMoment H reductionPivot561 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode299).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot561 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot561 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot561 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection995, oldProjection991, reductionProjection553, reductionProjection499] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot561 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1266 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot561 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot561 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1266 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot561 (1 : Fin 4)) = canonicalInput1002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot561 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection991 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot561 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1002 hH))).trans (oldProjectionSound991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot561 (2 : Fin 4)) = canonicalInput986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot561 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection553 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot561 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound986 hH))).trans (reductionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot561 (3 : Fin 4)) = canonicalInput984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot561 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection499 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot561 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound984 hH))).trans (reductionSound499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode299).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot561 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode299).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot561 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 1, 72] ![2, 20, 1440, 20] reductionProjection561 ![oldProjection995, oldProjection991, reductionProjection553, reductionProjection499]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection562 : Integer.Sparse (Fin 1613) := [(0, 1), (53, 240), (94, 10), (241, -80), (243, -80), (408, -720), (691, 240), (694, 240), (697, 240), (698, -160), (699, 240), (700, -80), (1052, 240), (1059, -80), (1251, 25)]

def reductionPivot562 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound562 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode300).moment H =
      Integer.Sparse.eval reductionProjection562 (momentVector H) := by
  have heq : reductionPivot562 = (fun u v => (normalNode300).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode300).moment H = injectiveMoment H reductionPivot562 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode300).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot562 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot562 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot562 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection804, reductionProjection502, oldProjection470, oldProjection791] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot562 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1268 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot562 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection804 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot562 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1268 hH))).trans (oldProjectionSound804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot562 (1 : Fin 4)) = canonicalInput1008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot562 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection502 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot562 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1008 hH))).trans (reductionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot562 (2 : Fin 4)) = canonicalInput993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot562 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection470 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot562 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound993 hH))).trans (oldProjectionSound470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot562 (3 : Fin 4)) = canonicalInput991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot562 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection791 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot562 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound991 hH))).trans (oldProjectionSound791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode300).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot562 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode300).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot562 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 144] ![2, 10, 1440, 10] reductionProjection562 ![oldProjection804, reductionProjection502, oldProjection470, oldProjection791]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection563 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -2), (55, 96), (93, -12), (94, 5), (243, -32), (1044, 48), (1047, 96), (1052, 48), (1226, -32), (1251, 3)]

def reductionPivot563 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 2, 3], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound563 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode303).moment H =
      Integer.Sparse.eval reductionProjection563 (momentVector H) := by
  have heq : reductionPivot563 = (fun u v => (normalNode303).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode303).moment H = injectiveMoment H reductionPivot563 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode303).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot563 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot563 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot563 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1028, oldProjection1021, reductionProjection78, reductionProjection78] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot563 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1270 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot563 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1028 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot563 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1270 hH))).trans (oldProjectionSound1028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot563 (1 : Fin 4)) = canonicalInput1016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot563 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1021 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot563 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1016 hH))).trans (oldProjectionSound1021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot563 (2 : Fin 4)) = canonicalInput1007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot563 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection78 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot563 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1007 hH))).trans (reductionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot563 (3 : Fin 4)) = canonicalInput1006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot563 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection78 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot563 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1006 hH))).trans (reductionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode303).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot563 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode303).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot563 (j : Fin 4)))
      2 288 288 2 ![144, 72, 144, 144] ![2, 4, 2, 2] reductionProjection563 ![oldProjection1028, oldProjection1021, reductionProjection78, reductionProjection78]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection564 : Integer.Sparse (Fin 1613) := [(55, 96), (79, 96), (83, 48), (94, -1), (159, -144), (696, 48), (698, -16), (1058, 96), (1226, -16), (1251, 3)]

def reductionPivot564 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 0, -3, 1]]

theorem reductionSound564 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode304).moment H =
      Integer.Sparse.eval reductionProjection564 (momentVector H) := by
  have heq : reductionPivot564 = (fun u v => (normalNode304).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode304).moment H = injectiveMoment H reductionPivot564 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode304).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot564 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot564 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot564 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection841, reductionProjection547, reductionProjection548, reductionProjection81] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot564 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1321 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot564 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot564 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1321 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot564 (1 : Fin 4)) = canonicalInput1000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot564 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection547 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot564 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1000 hH))).trans (reductionSound547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot564 (2 : Fin 4)) = canonicalInput969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot564 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection548 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot564 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound969 hH))).trans (reductionSound548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot564 (3 : Fin 4)) = canonicalInput966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot564 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot564 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound966 hH))).trans (reductionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode304).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot564 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode304).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot564 (j : Fin 4)))
      2 288 288 2 ![144, 1, 3, 3] ![2, 288, 96, 96] reductionProjection564 ![oldProjection841, reductionProjection547, reductionProjection548, reductionProjection81]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection565 : Integer.Sparse (Fin 1613) := [(62, 6), (85, 3), (87, 6), (164, -9), (698, -1), (699, 3), (1058, 6), (1226, -1), (1227, -1)]

def reductionPivot565 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound565 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode305).moment H =
      Integer.Sparse.eval reductionProjection565 (momentVector H) := by
  have heq : reductionPivot565 = (fun u v => (normalNode305).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode305).moment H = injectiveMoment H reductionPivot565 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode305).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot565 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot565 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot565 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection513, reductionProjection524, reductionProjection519, reductionProjection551] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot565 (0 : Fin 4)) = canonicalInput2135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot565 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot565 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2135 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot565 (1 : Fin 4)) = canonicalInput1003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot565 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection524 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot565 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1003 hH))).trans (reductionSound524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot565 (2 : Fin 4)) = canonicalInput978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot565 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection519 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot565 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound978 hH))).trans (reductionSound519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot565 (3 : Fin 4)) = canonicalInput973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot565 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection551 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot565 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound973 hH))).trans (reductionSound551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode305).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot565 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode305).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot565 (j : Fin 4)))
      2 18 18 2 ![9, 1, 3, 3] ![2, 18, 6, 6] reductionProjection565 ![reductionProjection513, reductionProjection524, reductionProjection519, reductionProjection551]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection566 : Integer.Sparse (Fin 1613) := [(616, 1)]

theorem reductionSound566 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code616).moment H =
      Integer.Sparse.eval reductionProjection566 (momentVector H) := by
  have hc : coordinates (616 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code616) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection566, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection567 : Integer.Sparse (Fin 1613) := [(488, -1), (616, -1), (621, -1), (1101, -1)]

def reductionPivot567 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -3, 2, 3], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]

theorem reductionSound567 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode306).moment H =
      Integer.Sparse.eval reductionProjection567 (momentVector H) := by
  have heq : reductionPivot567 = (fun u v => (normalNode306).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode306).moment H = injectiveMoment H reductionPivot567 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode306).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot567 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot567 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot567 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection566, reductionProjection555, reductionProjection553, reductionProjection497] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot567 (0 : Fin 4)) = canonicalInput2150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot567 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot567 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2150 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot567 (1 : Fin 4)) = canonicalInput1005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot567 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection555 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot567 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1005 hH))).trans (reductionSound555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot567 (2 : Fin 4)) = canonicalInput986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot567 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection553 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot567 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound986 hH))).trans (reductionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot567 (3 : Fin 4)) = canonicalInput983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot567 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot567 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound983 hH))).trans (reductionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode306).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot567 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode306).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot567 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection567 ![reductionProjection566, reductionProjection555, reductionProjection553, reductionProjection497]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection568 : Integer.Sparse (Fin 1613) := [(0, 1), (55, 240), (94, 5), (243, -80), (488, -720), (694, 240), (696, 240), (698, -160), (704, -80), (1047, 240), (1055, 240), (1058, 240), (1226, -80), (1227, -80)]

def reductionPivot568 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -3, 2, 3], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound568 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode307).moment H =
      Integer.Sparse.eval reductionProjection568 (momentVector H) := by
  have heq : reductionPivot568 = (fun u v => (normalNode307).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode307).moment H = injectiveMoment H reductionPivot568 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode307).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot568 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot568 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot568 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection828, reductionProjection78, reductionProjection553, reductionProjection499] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot568 (0 : Fin 4)) = canonicalInput2151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot568 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot568 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2151 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot568 (1 : Fin 4)) = canonicalInput1006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot568 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection78 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot568 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1006 hH))).trans (reductionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot568 (2 : Fin 4)) = canonicalInput987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot568 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection553 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot568 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound987 hH))).trans (reductionSound553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot568 (3 : Fin 4)) = canonicalInput984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot568 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection499 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot568 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound984 hH))).trans (reductionSound499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode307).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot568 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode307).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot568 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 72] ![2, 10, 1440, 20] reductionProjection568 ![oldProjection828, reductionProjection78, reductionProjection553, reductionProjection499]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection569 : Integer.Sparse (Fin 1613) := [(20, -1), (55, 48), (79, 48), (83, 48), (94, 5), (243, -32), (621, -144), (698, -16), (1047, 48), (1058, 48), (1060, 48), (1225, -16), (1226, -32), (1251, 2)]

def reductionPivot569 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -3, 2, 3], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]

theorem reductionSound569 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode308).moment H =
      Integer.Sparse.eval reductionProjection569 (momentVector H) := by
  have heq : reductionPivot569 = (fun u v => (normalNode308).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode308).moment H = injectiveMoment H reductionPivot569 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode308).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot569 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot569 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot569 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection841, reductionProjection539, reductionProjection78, reductionProjection555] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot569 (0 : Fin 4)) = canonicalInput2181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot569 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot569 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2181 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot569 (1 : Fin 4)) = canonicalInput1017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot569 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection539 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot569 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1017 hH))).trans (reductionSound539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot569 (2 : Fin 4)) = canonicalInput1007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot569 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection78 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot569 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1007 hH))).trans (reductionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot569 (3 : Fin 4)) = canonicalInput1005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot569 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection555 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot569 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1005 hH))).trans (reductionSound555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode308).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot569 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode308).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot569 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection569 ![oldProjection841, reductionProjection539, reductionProjection78, reductionProjection555]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection570 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -15), (455, -360), (694, 360), (696, 120), (698, -80), (704, -80), (1251, -20)]

def reductionPivot570 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -3, 2, 3], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]

theorem reductionSound570 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode309).moment H =
      Integer.Sparse.eval reductionProjection570 (momentVector H) := by
  have heq : reductionPivot570 = (fun u v => (normalNode309).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode309).moment H = injectiveMoment H reductionPivot570 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode309).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot570 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot570 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot570 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1094, oldProjection993, reductionProjection499, oldProjection479] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot570 (0 : Fin 4)) = canonicalInput12560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot570 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1094 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot570 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1094 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12560 hH))).trans (oldProjectionSound1094 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot570 (1 : Fin 4)) = canonicalInput1020.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot570 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection993 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot570 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1020 hH))).trans (oldProjectionSound993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot570 (2 : Fin 4)) = canonicalInput988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot570 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection499 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot570 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound988 hH))).trans (reductionSound499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot570 (3 : Fin 4)) = canonicalInput981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot570 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection479 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot570 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound981 hH))).trans (oldProjectionSound479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode309).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot570 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode309).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot570 (j : Fin 4)))
      2 720 720 2 ![720, 720, 72, 1] ![1, 1, 10, 720] reductionProjection570 ![oldProjection1094, oldProjection993, reductionProjection499, oldProjection479]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection571 : Integer.Sparse (Fin 1613) := [(59, -3), (239, -3), (243, 1), (244, 1), (700, 1)]

def reductionPivot571 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![0, 3, -4, 1], ![3, -3, 2, -2]]

theorem reductionSound571 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6792).moment H =
      Integer.Sparse.eval reductionProjection571 (momentVector H) := by
  have heq : reductionPivot571 = (fun u v => (normalNode6792).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6792).moment H = injectiveMoment H reductionPivot571 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6792).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6792).entries)).symm
  have hshape : reductionPivot571 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot571 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot571 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection335, reductionProjection461, oldProjection147] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot571 (0 : Fin 3)) = canonicalInput563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot571 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection335 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot571 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection335 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound563 hH))).trans (reductionSound335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot571 (1 : Fin 3)) = canonicalInput9344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot571 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection461 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot571 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection461 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9344 hH))).trans (reductionSound461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot571 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4199 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot571 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection147 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot571 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4199 hH))).trans (oldProjectionSound147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6792).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot571 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6792).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot571 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection571 ![reductionProjection335, reductionProjection461, oldProjection147]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection572 : Integer.Sparse (Fin 1613) := [(59, -1), (699, -1), (1060, -1)]

def reductionPivot572 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![0, 3, 1, -4], ![3, -3, -2, 2]]

theorem reductionSound572 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6791).moment H =
      Integer.Sparse.eval reductionProjection572 (momentVector H) := by
  have heq : reductionPivot572 = (fun u v => (normalNode6791).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6791).moment H = injectiveMoment H reductionPivot572 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6791).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6791).entries)).symm
  have hshape : reductionPivot572 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot572 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot572 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection335, oldProjection186, oldProjection213] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot572 (0 : Fin 3)) = canonicalInput520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot572 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection335 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot572 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection335 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound520 hH))).trans (reductionSound335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot572 (1 : Fin 3)) = canonicalInput8135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot572 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection186 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot572 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8135 hH))).trans (oldProjectionSound186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot572 (2 : Fin 3)) = canonicalInput8947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot572 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot572 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8947 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6791).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot572 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6791).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot572 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection572 ![reductionProjection335, oldProjection186, oldProjection213]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection573 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (93, 24), (699, -48), (1251, 3)]

def reductionPivot573 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![-1, 3, -3, 1], ![3, -3, 2, -2]]

theorem reductionSound573 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7977).moment H =
      Integer.Sparse.eval reductionProjection573 (momentVector H) := by
  have heq : reductionPivot573 = (fun u v => (normalNode7977).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7977).moment H = injectiveMoment H reductionPivot573 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7977).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7977).entries)).symm
  have hshape : reductionPivot573 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot573 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 2, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot573 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection186, reductionProjection459, oldProjection273] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot573 (0 : Fin 3)) = canonicalInput8134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot573 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection186 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot573 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8134 hH))).trans (oldProjectionSound186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot573 (1 : Fin 3)) = canonicalInput21699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot573 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection459 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot573 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21699 hH))).trans (reductionSound459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot573 (2 : Fin 3)) = canonicalInput21729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot573 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection273 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot573 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21729 hH))).trans (oldProjectionSound273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7977).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot573 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7977).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot573 (j : Fin 3)))
      3 144 144 3 ![1, 2, 48] ![144, 72, 3] reductionProjection573 ![oldProjection186, reductionProjection459, oldProjection273]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection574 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 2), (59, 24), (93, -9), (94, 1), (239, 12), (243, -4), (244, -4), (699, 24), (700, -4), (1060, 24), (1251, -1)]

def reductionPivot574 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 3, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 3, 0, -4]]

theorem reductionSound574 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode310).moment H =
      Integer.Sparse.eval reductionProjection574 (momentVector H) := by
  have heq : reductionPivot574 = (fun u v => (normalNode310).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode310).moment H = injectiveMoment H reductionPivot574 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode310).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot574 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot574 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot574 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1061, reductionProjection571, reductionProjection572, reductionProjection573] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot574 (0 : Fin 4)) = canonicalInput928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot574 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1061 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot574 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound928 hH))).trans (oldProjectionSound1061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot574 (1 : Fin 4)) = canonicalInput1021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot574 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection571 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot574 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection571 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1021 hH))).trans (reductionSound571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot574 (2 : Fin 4)) = canonicalInput1022.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot574 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection572 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot574 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection572 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1022 hH))).trans (reductionSound572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot574 (3 : Fin 4)) = canonicalInput1023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot574 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection573 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot574 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection573 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1023 hH))).trans (reductionSound573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode310).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot574 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode310).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot574 (j : Fin 4)))
      2 72 144 4 ![144, 9, 3, 144] ![1, 16, 48, 1] reductionProjection574 ![oldProjection1061, reductionProjection571, reductionProjection572, reductionProjection573]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection575 : Integer.Sparse (Fin 1613) := [(101, 1)]

theorem reductionSound575 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code101).moment H =
      Integer.Sparse.eval reductionProjection575 (momentVector H) := by
  have hc : coordinates (101 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code101) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection575, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

end NoFourMUBs.Step2.SOS.Normalization

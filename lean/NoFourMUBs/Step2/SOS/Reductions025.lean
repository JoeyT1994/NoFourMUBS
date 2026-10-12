import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical011
import NoFourMUBs.Step2.SOS.Canonical019
import NoFourMUBs.Step2.SOS.Canonical020
import NoFourMUBs.Step2.SOS.Canonical021
import NoFourMUBs.Step2.SOS.Canonical024
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical063
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical095
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions024
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical315
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical91
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection800 : Integer.Sparse (Fin 1613) := [(128, 1)]

theorem reductionSound800 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code128).moment H =
      Integer.Sparse.eval reductionProjection800 (momentVector H) := by
  have hc : coordinates (128 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code128) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection800, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection801 : Integer.Sparse (Fin 1613) := [(128, -1), (129, -1), (133, -1), (163, -1)]

def reductionPivot801 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 0, 2, -2], ![1, 1, -3, 1], ![1, 1, 0, -2]]

theorem reductionSound801 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode444).moment H =
      Integer.Sparse.eval reductionProjection801 (momentVector H) := by
  have heq : reductionPivot801 = (fun u v => (normalNode444).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode444).moment H = injectiveMoment H reductionPivot801 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode444).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot801 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot801 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot801 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection796, reductionProjection799, oldProjection397, reductionProjection800] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot801 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code163).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot801 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection796 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot801 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot801 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code133).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot801 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection799 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot801 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot801 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node397⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot801 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection397 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot801 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot801 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code128).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot801 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection800 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot801 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode444).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot801 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode444).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot801 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection801 ![reductionProjection796, reductionProjection799, oldProjection397, reductionProjection800]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection802 : Integer.Sparse (Fin 1613) := [(63, -1), (89, -1), (1061, -1)]

def reductionPivot802 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 1, 1, -3], ![-4, 1, 1, 2], ![4, -2, -2, 0]]

theorem reductionSound802 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode10942).moment H =
      Integer.Sparse.eval reductionProjection802 (momentVector H) := by
  have heq : reductionPivot802 = (fun u v => (normalNode10942).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10942).moment H = injectiveMoment H reductionPivot802 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10942).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10942).entries)).symm
  have hshape : reductionPivot802 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot802 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot802 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection218, reductionProjection322, oldProjection115] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot802 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10090 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot802 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection218 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot802 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10090 hH))).trans (oldProjectionSound218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot802 (1 : Fin 3)) = canonicalInput33908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot802 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot802 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33908 hH))).trans (reductionSound322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot802 (2 : Fin 3)) = canonicalInput33909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot802 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot802 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33909 hH))).trans (oldProjectionSound115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10942).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot802 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10942).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot802 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection802 ![oldProjection218, reductionProjection322, oldProjection115]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection803 : Integer.Sparse (Fin 1613) := [(19, 4), (63, 24), (87, 24), (89, 48), (94, -1), (128, -72), (247, -8), (1061, 48), (1219, 48), (1251, -1)]

def reductionPivot803 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound803 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode438).moment H =
      Integer.Sparse.eval reductionProjection803 (momentVector H) := by
  have heq : reductionPivot803 = (fun u v => (normalNode438).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode438).moment H = injectiveMoment H reductionPivot803 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode438).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot803 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot803 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 72, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot803 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection797, reductionProjection800, oldProjection1186, reductionProjection802] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot803 (0 : Fin 4)) = canonicalInput1598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot803 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection797 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot803 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1598 hH))).trans (reductionSound797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot803 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code128).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot803 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection800 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot803 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot803 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1078 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot803 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1186 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot803 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1078 hH))).trans (oldProjectionSound1186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot803 (3 : Fin 4)) = canonicalInput1273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot803 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection802 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot803 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1273 hH))).trans (reductionSound802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode438).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot803 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode438).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot803 (j : Fin 4)))
      2 144 144 2 ![3, 1, 72, 3] ![48, 144, 2, 48] reductionProjection803 ![reductionProjection797, reductionProjection800, oldProjection1186, reductionProjection802]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection804 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (63, -40), (87, -120), (89, -120), (94, 10), (128, 360), (129, 360), (133, 240), (163, 360), (247, 40), (1055, -120), (1061, -120), (1219, -280), (1251, 15)]

def reductionPivot804 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]

theorem reductionSound804 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode430).moment H =
      Integer.Sparse.eval reductionProjection804 (momentVector H) := by
  have heq : reductionPivot804 = (fun u v => (normalNode430).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode430).moment H = injectiveMoment H reductionPivot804 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode430).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot804 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot804 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 2, 360, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot804 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection798, reductionProjection801, reductionProjection801, oldProjection1462, reductionProjection803] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot804 (0 : Fin 5)) = (normalNode646).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection798 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection798 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot804 (1 : Fin 5)) = canonicalInput1280.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection801 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1280 hH))).trans (reductionSound801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot804 (2 : Fin 5)) = (normalNode444).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection801 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot804 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1462⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1462 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1462 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot804 (4 : Fin 5)) = (normalNode438).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection803 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot804 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode430).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot804 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode430).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot804 (j : Fin 5)))
      1 240 720 3 ![720, 2, 2, 360, 144] ![1, 360, 360, 2, 5] reductionProjection804 ![reductionProjection798, reductionProjection801, reductionProjection801, oldProjection1462, reductionProjection803]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection805 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (87, 240), (89, 240), (94, 10), (243, -80), (698, -240), (704, -80), (1058, 240), (1219, 480), (1223, 480), (1226, -160), (1227, -160), (1251, 5)]

def reductionPivot805 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound805 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode656).moment H =
      Integer.Sparse.eval reductionProjection805 (momentVector H) := by
  have heq : reductionPivot805 = (fun u v => (normalNode656).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode656).moment H = injectiveMoment H reductionPivot805 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode656).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot805 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot805 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot805 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection513, oldProjection1104, oldProjection1239, oldProjection848] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot805 (0 : Fin 4)) = canonicalInput2055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot805 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot805 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2055 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot805 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1250 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot805 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1104 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot805 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1250 hH))).trans (oldProjectionSound1104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot805 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1235 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot805 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot805 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1235 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot805 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1234 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot805 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection848 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot805 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1234 hH))).trans (oldProjectionSound848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode656).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot805 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode656).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot805 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 9, 9] ![160, 2, 160, 160] reductionProjection805 ![reductionProjection513, oldProjection1104, oldProjection1239, oldProjection848]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection806 : Integer.Sparse (Fin 1613) := [(37, 1), (124, -3), (128, -3), (140, -3), (240, 1), (697, 1)]

def reductionPivot806 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound806 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode455).moment H =
      Integer.Sparse.eval reductionProjection806 (momentVector H) := by
  have heq : reductionPivot806 = (fun u v => (normalNode455).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode455).moment H = injectiveMoment H reductionPivot806 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode455).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot806 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot806 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot806 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection770, oldProjection402, reductionProjection800, oldProjection394] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot806 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node770⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot806 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection770 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot806 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot806 (1 : Fin 4)) = canonicalInput1346.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot806 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection402 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot806 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1346 hH))).trans (oldProjectionSound402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot806 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code128).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot806 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection800 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot806 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot806 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node394⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot806 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot806 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode455).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot806 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode455).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot806 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection806 ![oldProjection770, oldProjection402, reductionProjection800, oldProjection394]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection807 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -8), (20, 9), (37, -48), (63, -48), (87, -48), (89, -96), (94, 17), (124, 144), (128, 144), (140, 288), (240, -48), (243, 64), (246, 16), (247, 48), (697, -48), (698, 112), (703, 16), (704, 80), (1054, -144), (1058, -48), (1061, -192), (1219, -192), (1223, -192), (1226, 48), (1227, 48), (1251, 13)]

def reductionPivot807 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound807 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode431).moment H =
      Integer.Sparse.eval reductionProjection807 (momentVector H) := by
  have heq : reductionPivot807 = (fun u v => (normalNode431).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode431).moment H = injectiveMoment H reductionPivot807 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode431).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot807 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot807 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 6, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot807 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection805, reductionProjection806, oldProjection1469, oldProjection1465, reductionProjection748] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot807 (0 : Fin 5)) = (normalNode656).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection805 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot807 (1 : Fin 5)) = (normalNode455).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection806 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot807 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1469⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1469 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1469 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot807 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1465⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1465 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot807 (4 : Fin 5)) = (normalNode448).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection748 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot807 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode431).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot807 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode431).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot807 (j : Fin 5)))
      1 288 1440 5 ![1440, 6, 1440, 1440, 288] ![1, 240, 1, 1, 5] reductionProjection807 ![reductionProjection805, reductionProjection806, oldProjection1469, oldProjection1465, reductionProjection748]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection808 : Integer.Sparse (Fin 1613) := [(56, -3), (700, 2), (1052, -3), (1059, 1)]

def reductionPivot808 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![2, -3, 0, 1], ![1, 3, -2, -2]]

theorem reductionSound808 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7120).moment H =
      Integer.Sparse.eval reductionProjection808 (momentVector H) := by
  have heq : reductionPivot808 = (fun u v => (normalNode7120).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7120).moment H = injectiveMoment H reductionPivot808 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7120).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7120).entries)).symm
  have hshape : reductionPivot808 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot808 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot808 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection97, oldProjection198, oldProjection204] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot808 (0 : Fin 3)) = canonicalInput577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot808 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot808 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound577 hH))).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot808 (1 : Fin 3)) = canonicalInput9460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot808 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot808 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9460 hH))).trans (oldProjectionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot808 (2 : Fin 3)) = canonicalInput9468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot808 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection204 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot808 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9468 hH))).trans (oldProjectionSound204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7120).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot808 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7120).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot808 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection808 ![oldProjection97, oldProjection198, oldProjection204]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection809 : Integer.Sparse (Fin 1613) := [(0, 3), (56, 240), (94, -15), (241, -80), (697, 480), (698, -320), (700, -160), (1050, 240), (1052, 480), (1058, 240), (1059, -240), (1251, 50)]

def reductionPivot809 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]

theorem reductionSound809 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode660).moment H =
      Integer.Sparse.eval reductionProjection809 (momentVector H) := by
  have heq : reductionPivot809 = (fun u v => (normalNode660).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode660).moment H = injectiveMoment H reductionPivot809 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode660).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot809 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot809 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot809 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection831, oldProjection804, reductionProjection808, oldProjection1036] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot809 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1313 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot809 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot809 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1313 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot809 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1259 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot809 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection804 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot809 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1259 hH))).trans (oldProjectionSound804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot809 (2 : Fin 4)) = canonicalInput1670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot809 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot809 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1670 hH))).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot809 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1248 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot809 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot809 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1248 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode660).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot809 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode660).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot809 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 9, 720] ![2, 2, 160, 2] reductionProjection809 ![oldProjection831, oldProjection804, reductionProjection808, oldProjection1036]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection810 : Integer.Sparse (Fin 1613) := [(38, 3), (125, -9), (126, -9), (129, -9), (238, 3), (698, -1), (700, -1), (1059, -1)]

def reductionPivot810 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, 0, -2, 0]]

theorem reductionSound810 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode456).moment H =
      Integer.Sparse.eval reductionProjection810 (momentVector H) := by
  have heq : reductionPivot810 = (fun u v => (normalNode456).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode456).moment H = injectiveMoment H reductionPivot810 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode456).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot810 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot810 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot810 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection773, oldProjection397, oldProjection395, reductionProjection787] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot810 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1629 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot810 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection773 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot810 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1629 hH))).trans (oldProjectionSound773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot810 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1150 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot810 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection397 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot810 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1150 hH))).trans (oldProjectionSound397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot810 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1098 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot810 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection395 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot810 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection395 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1098 hH))).trans (oldProjectionSound395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot810 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code125).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot810 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection787 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot810 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode456).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot810 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode456).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot810 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection810 ![oldProjection773, oldProjection397, oldProjection395, reductionProjection787]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection811 : Integer.Sparse (Fin 1613) := [(19, 4), (38, 96), (56, 48), (61, 48), (94, -1), (241, -16), (243, -32), (244, -16), (698, -16), (700, -80), (701, -16), (704, -16), (1052, 48), (1053, 96), (1059, -32), (1251, -1)]

def reductionPivot811 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, 0, -2, 0]]

theorem reductionSound811 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode450).moment H =
      Integer.Sparse.eval reductionProjection811 (momentVector H) := by
  have heq : reductionPivot811 = (fun u v => (normalNode450).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode450).moment H = injectiveMoment H reductionPivot811 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode450).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot811 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot811 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot811 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection808, oldProjection1164, oldProjection814, oldProjection1155] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot811 (0 : Fin 4)) = canonicalInput1670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot811 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot811 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1670 hH))).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot811 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1141 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot811 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1164 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot811 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1141 hH))).trans (oldProjectionSound1164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot811 (2 : Fin 4)) = canonicalInput1315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot811 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection814 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot811 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1315 hH))).trans (oldProjectionSound814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot811 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1126 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot811 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1155 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot811 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1126 hH))).trans (oldProjectionSound1155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode450).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot811 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode450).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot811 (j : Fin 4)))
      2 288 288 2 ![9, 9, 9, 144] ![32, 32, 32, 2] reductionProjection811 ![reductionProjection808, oldProjection1164, oldProjection814, oldProjection1155]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection812 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -160), (38, -1200), (56, -480), (61, -240), (94, 95), (125, 720), (126, 720), (129, 1440), (238, -240), (241, 560), (243, 480), (244, 80), (247, 240), (697, -960), (698, 960), (700, 800), (701, 80), (704, 160), (1050, -240), (1052, -960), (1053, -720), (1058, -240), (1059, 640), (1251, -70)]

def reductionPivot812 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]

theorem reductionSound812 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode432).moment H =
      Integer.Sparse.eval reductionProjection812 (momentVector H) := by
  have heq : reductionPivot812 = (fun u v => (normalNode432).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode432).moment H = injectiveMoment H reductionPivot812 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode432).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot812 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot812 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot812 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection809, reductionProjection810, oldProjection1471, reductionProjection811, oldProjection1468] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot812 (0 : Fin 5)) = (normalNode660).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection809 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot812 (1 : Fin 5)) = (normalNode456).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection810 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot812 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1471⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1471 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot812 (3 : Fin 5)) = (normalNode450).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection811 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot812 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1468⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1468 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot812 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode432).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot812 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode432).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot812 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 720, 288, 1440] ![1, 80, 2, 5, 1] reductionProjection812 ![reductionProjection809, reductionProjection810, oldProjection1471, reductionProjection811, oldProjection1468]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection813 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (81, 240), (94, -35), (683, 240), (697, 480), (698, -80), (1250, -60), (1251, -10), (1321, 240), (1323, 480), (1389, 480)]

def reductionPivot813 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound813 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode662).moment H =
      Integer.Sparse.eval reductionProjection813 (momentVector H) := by
  have heq : reductionPivot813 = (fun u v => (normalNode662).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode662).moment H = injectiveMoment H reductionPivot813 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode662).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot813 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot813 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 3, 3, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot813 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1331, oldProjection983, reductionProjection721, oldProjection1332] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot813 (0 : Fin 4)) = canonicalInput2108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot813 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot813 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2108 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot813 (1 : Fin 4)) = canonicalInput1696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot813 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection983 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot813 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1696 hH))).trans (oldProjectionSound983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot813 (2 : Fin 4)) = canonicalInput1679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot813 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection721 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot813 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1679 hH))).trans (reductionSound721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot813 (3 : Fin 4)) = canonicalInput1678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot813 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1332 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot813 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1678 hH))).trans (oldProjectionSound1332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode662).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot813 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode662).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot813 (j : Fin 4)))
      2 1440 1440 2 ![720, 3, 3, 360] ![2, 480, 480, 4] reductionProjection813 ![oldProjection1331, oldProjection983, reductionProjection721, oldProjection1332]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection814 : Integer.Sparse (Fin 1613) := [(296, 1)]

theorem reductionSound814 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code296).moment H =
      Integer.Sparse.eval reductionProjection814 (momentVector H) := by
  have hc : coordinates (296 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code296) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection814, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection815 : Integer.Sparse (Fin 1613) := [(38, 3), (238, 3), (283, -9), (296, -9), (327, -9), (698, -1), (700, -1), (1059, -1)]

def reductionPivot815 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 0, 4], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound815 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode457).moment H =
      Integer.Sparse.eval reductionProjection815 (momentVector H) := by
  have heq : reductionPivot815 = (fun u v => (normalNode457).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode457).moment H = injectiveMoment H reductionPivot815 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode457).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot815 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot815 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot815 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection447, oldProjection465, oldProjection773, reductionProjection814] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot815 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1640 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot815 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot815 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1640 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot815 (1 : Fin 4)) = canonicalInput1326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot815 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection465 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot815 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1326 hH))).trans (oldProjectionSound465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot815 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1100 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot815 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection773 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot815 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1100 hH))).trans (oldProjectionSound773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot815 (3 : Fin 4)) = canonicalInput1283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot815 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection814 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot815 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1283 hH))).trans (reductionSound814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode457).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot815 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode457).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot815 (j : Fin 4)))
      2 18 18 2 ![1, 1, 9, 1] ![18, 18, 2, 18] reductionProjection815 ![oldProjection447, oldProjection465, oldProjection773, reductionProjection814]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection816 : Integer.Sparse (Fin 1613) := [(0, -7), (8, -240), (19, -200), (20, 15), (38, -960), (81, -960), (94, 145), (228, -480), (231, -960), (238, -240), (241, 320), (243, 240), (247, 320), (283, 720), (296, 720), (327, 1440), (683, -480), (686, -240), (697, -960), (698, 400), (700, 80), (704, 80), (1059, 80), (1250, 60), (1251, 105), (1321, -240), (1323, -960), (1389, -720)]

def reductionPivot816 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound816 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode433).moment H =
      Integer.Sparse.eval reductionProjection816 (momentVector H) := by
  have heq : reductionPivot816 = (fun u v => (normalNode433).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode433).moment H = injectiveMoment H reductionPivot816 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode433).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot816 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot816 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot816 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection813, reductionProjection815, oldProjection1923, reductionProjection724, oldProjection1905] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot816 (0 : Fin 5)) = (normalNode662).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection813 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot816 (1 : Fin 5)) = (normalNode457).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection815 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot816 (2 : Fin 5)) = canonicalInput1263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1923 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1263 hH))).trans (oldProjectionSound1923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot816 (3 : Fin 5)) = (normalNode451).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection724 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot816 (4 : Fin 5)) = canonicalInput1261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1905 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot816 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1261 hH))).trans (oldProjectionSound1905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode433).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot816 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode433).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot816 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 1440, 288, 1440] ![1, 80, 1, 5, 1] reductionProjection816 ![reductionProjection813, reductionProjection815, oldProjection1923, reductionProjection724, oldProjection1905]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection817 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -55), (38, -240), (94, 50), (129, 180), (143, 360), (238, -60), (241, 80), (247, 140), (697, -240), (698, 200), (700, 120), (1055, -60), (1059, 60), (1061, -180), (1219, -240), (1227, 80), (1250, 15), (1251, -5)]

def reductionPivot817 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound817 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode434).moment H =
      Integer.Sparse.eval reductionProjection817 (momentVector H) := by
  have heq : reductionPivot817 = (fun u v => (normalNode434).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode434).moment H = injectiveMoment H reductionPivot817 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode434).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot817 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot817 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot817 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1508, oldProjection1480, oldProjection1472, oldProjection1472, oldProjection2755] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot817 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1508⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1508 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot817 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1480⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1480 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot817 (2 : Fin 5)) = canonicalInput1264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1472 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1264 hH))).trans (oldProjectionSound1472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot817 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1472⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1472 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot817 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1063 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2755 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot817 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1063 hH))).trans (oldProjectionSound2755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode434).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot817 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode434).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot817 (j : Fin 5)))
      1 360 1440 4 ![720, 720, 1440, 1440, 720] ![2, 2, 1, 1, 2] reductionProjection817 ![oldProjection1508, oldProjection1480, oldProjection1472, oldProjection1472, oldProjection2755]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection818 : Integer.Sparse (Fin 1613) := [(179, 1)]

theorem reductionSound818 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code179).moment H =
      Integer.Sparse.eval reductionProjection818 (momentVector H) := by
  have hc : coordinates (179 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code179) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection818, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection819 : Integer.Sparse (Fin 1613) := [(56, -3), (89, -3), (90, 1), (698, 1), (1226, 1)]

def reductionPivot819 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 1, 2, 0], ![1, 1, -3, 1], ![3, -2, 1, -2]]

theorem reductionSound819 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6132).moment H =
      Integer.Sparse.eval reductionProjection819 (momentVector H) := by
  have heq : reductionPivot819 = (fun u v => (normalNode6132).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6132).moment H = injectiveMoment H reductionPivot819 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6132).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6132).entries)).symm
  have hshape : reductionPivot819 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot819 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot819 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection115, oldProjection97, oldProjection109] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot819 (0 : Fin 3)) = canonicalInput52.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot819 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection115 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot819 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound52 hH))).trans (oldProjectionSound115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot819 (1 : Fin 3)) = canonicalInput765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot819 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot819 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound765 hH))).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot819 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw819 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot819 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot819 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical819 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6132).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot819 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6132).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot819 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection819 ![oldProjection115, oldProjection97, oldProjection109]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection820 : Integer.Sparse (Fin 1613) := [(0, 1), (56, 240), (87, 240), (89, 240), (90, -80), (179, -720), (697, 240), (698, -240), (1058, 240), (1219, 240), (1226, -160), (1227, -160), (1251, 15)]

def reductionPivot820 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound820 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode666).moment H =
      Integer.Sparse.eval reductionProjection820 (momentVector H) := by
  have heq : reductionPivot820 = (fun u v => (normalNode666).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode666).moment H = injectiveMoment H reductionPivot820 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode666).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot820 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot820 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot820 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection513, reductionProjection818, reductionProjection819, oldProjection815] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot820 (0 : Fin 4)) = canonicalInput2135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot820 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot820 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2135 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot820 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code179).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot820 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection818 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot820 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot820 (2 : Fin 4)) = canonicalInput1699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot820 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection819 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot820 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1699 hH))).trans (reductionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot820 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1262 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot820 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot820 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1262 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode666).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot820 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode666).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot820 (j : Fin 4)))
      2 1440 1440 2 ![9, 1, 9, 720] ![160, 1440, 160, 2] reductionProjection820 ![reductionProjection513, reductionProjection818, reductionProjection819, oldProjection815]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection821 : Integer.Sparse (Fin 1613) := [(144, 1)]

theorem reductionSound821 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code144).moment H =
      Integer.Sparse.eval reductionProjection821 (momentVector H) := by
  have hc : coordinates (144 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code144) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection821, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection822 : Integer.Sparse (Fin 1613) := [(56, 1), (125, -3), (128, -3), (144, -3), (697, 1), (1058, 1)]

def reductionPivot822 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 0, 4], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound822 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode458).moment H =
      Integer.Sparse.eval reductionProjection822 (momentVector H) := by
  have heq : reductionPivot822 = (fun u v => (normalNode458).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode458).moment H = injectiveMoment H reductionPivot822 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode458).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot822 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot822 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot822 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection784, reductionProjection821, reductionProjection800, reductionProjection787] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot822 (0 : Fin 4)) = canonicalInput4045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot822 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection784 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot822 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4045 hH))).trans (reductionSound784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot822 (1 : Fin 4)) = canonicalInput1328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot822 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection821 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot822 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1328 hH))).trans (reductionSound821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot822 (2 : Fin 4)) = canonicalInput1286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot822 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection800 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot822 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1286 hH))).trans (reductionSound800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot822 (3 : Fin 4)) = canonicalInput1285.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot822 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection787 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot822 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1285 hH))).trans (reductionSound787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode458).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot822 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode458).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot822 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection822 ![reductionProjection784, reductionProjection821, reductionProjection800, reductionProjection787]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection823 : Integer.Sparse (Fin 1613) := [(143, -1), (144, -2), (179, -1)]

def reductionPivot823 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound823 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode453).moment H =
      Integer.Sparse.eval reductionProjection823 (momentVector H) := by
  have heq : reductionPivot823 = (fun u v => (normalNode453).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode453).moment H = injectiveMoment H reductionPivot823 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode453).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot823 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot823 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot823 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection818, reductionProjection821, reductionProjection821, oldProjection404] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot823 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code179).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot823 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection818 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot823 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot823 (1 : Fin 4)) = canonicalInput1328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot823 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection821 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot823 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1328 hH))).trans (reductionSound821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot823 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code144).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot823 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection821 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot823 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot823 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node404⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot823 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection404 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot823 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode453).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot823 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode453).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot823 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection823 ![reductionProjection818, reductionProjection821, reductionProjection821, oldProjection404]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection824 : Integer.Sparse (Fin 1613) := [(38, 24), (42, -8), (56, 24), (61, 24), (63, 24), (89, 24), (90, -8), (94, -1), (144, -72), (243, -8), (698, -16), (700, -8), (704, -8), (1061, 24), (1226, -8), (1251, -1)]

def reductionPivot824 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -3, 1]]

theorem reductionSound824 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode452).moment H =
      Integer.Sparse.eval reductionProjection824 (momentVector H) := by
  have heq : reductionPivot824 = (fun u v => (normalNode452).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode452).moment H = injectiveMoment H reductionPivot824 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode452).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot824 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot824 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot824 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection819, reductionProjection821, reductionProjection763, oldProjection997] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot824 (0 : Fin 4)) = canonicalInput1699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot824 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection819 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot824 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1699 hH))).trans (reductionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot824 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code144).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot824 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection821 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot824 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot824 (2 : Fin 4)) = canonicalInput1324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot824 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection763 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot824 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection763 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1324 hH))).trans (reductionSound763 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot824 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1144 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot824 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot824 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1144 hH))).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode452).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot824 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode452).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot824 (j : Fin 4)))
      2 144 144 2 ![9, 1, 9, 72] ![16, 144, 16, 2] reductionProjection824 ![reductionProjection819, reductionProjection821, reductionProjection763, oldProjection997]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection825 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -30), (38, -240), (42, 40), (56, -360), (61, -120), (63, -120), (87, -120), (89, -240), (90, 80), (94, 25), (125, 360), (128, 360), (143, 720), (144, 1440), (179, 720), (241, 40), (243, 40), (247, 80), (697, -360), (698, 280), (700, 80), (704, 40), (1058, -240), (1061, -240), (1219, -240), (1226, 120), (1227, 120), (1251, 5)]

def reductionPivot825 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound825 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode435).moment H =
      Integer.Sparse.eval reductionProjection825 (momentVector H) := by
  have heq : reductionPivot825 = (fun u v => (normalNode435).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode435).moment H = injectiveMoment H reductionPivot825 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode435).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot825 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot825 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 6, 2, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot825 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection820, reductionProjection822, reductionProjection823, reductionProjection824, oldProjection1472] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot825 (0 : Fin 5)) = (normalNode666).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection820 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot825 (1 : Fin 5)) = (normalNode458).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection822 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot825 (2 : Fin 5)) = (normalNode453).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection823 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot825 (3 : Fin 5)) = (normalNode452).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot825 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1472⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1472 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot825 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode435).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot825 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode435).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot825 (j : Fin 5)))
      1 720 1440 2 ![1440, 6, 2, 144, 1440] ![1, 240, 720, 10, 1] reductionProjection825 ![reductionProjection820, reductionProjection822, reductionProjection823, reductionProjection824, oldProjection1472]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection826 : Integer.Sparse (Fin 1613) := [(76, -3), (90, 1), (683, -3), (698, 1), (700, 1)]

def reductionPivot826 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 3, 0], ![2, -2, -1, 1], ![1, 3, -2, -2]]

theorem reductionSound826 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7108).moment H =
      Integer.Sparse.eval reductionProjection826 (momentVector H) := by
  have heq : reductionPivot826 = (fun u v => (normalNode7108).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7108).moment H = injectiveMoment H reductionPivot826 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7108).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7108).entries)).symm
  have hshape : reductionPivot826 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot826 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot826 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection160, oldProjection103, oldProjection107] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot826 (0 : Fin 3)) = canonicalInput363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot826 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection160 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot826 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound363 hH))).trans (oldProjectionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot826 (1 : Fin 3)) = canonicalInput5912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot826 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot826 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5912 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot826 (2 : Fin 3)) = canonicalInput5919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot826 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection107 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot826 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5919 hH))).trans (oldProjectionSound107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7108).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot826 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7108).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot826 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection826 ![oldProjection160, oldProjection103, oldProjection107]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection827 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (90, -40), (94, -10), (243, -40), (683, 120), (698, -160), (700, -40), (1058, 120), (1226, -80), (1251, -15), (1321, 120), (1323, 240)]

def reductionPivot827 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 1, 3], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound827 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode671).moment H =
      Integer.Sparse.eval reductionProjection827 (momentVector H) := by
  have heq : reductionPivot827 = (fun u v => (normalNode671).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode671).moment H = injectiveMoment H reductionPivot827 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode671).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot827 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot827 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot827 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1073, oldProjection1074, reductionProjection826, oldProjection948] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot827 (0 : Fin 4)) = canonicalInput2187.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot827 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot827 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2187 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot827 (1 : Fin 4)) = canonicalInput1755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot827 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1074 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot827 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1755 hH))).trans (oldProjectionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot827 (2 : Fin 4)) = canonicalInput1752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot827 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection826 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot827 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1752 hH))).trans (reductionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot827 (3 : Fin 4)) = canonicalInput1751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot827 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot827 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1751 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode671).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot827 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode671).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot827 (j : Fin 4)))
      2 720 720 2 ![720, 72, 9, 720] ![1, 10, 80, 1] reductionProjection827 ![oldProjection1073, oldProjection1074, reductionProjection826, oldProjection948]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection828 : Integer.Sparse (Fin 1613) := [(42, -1), (82, 3), (90, -1), (243, -1), (296, -9), (299, -9), (302, -9), (698, -1), (700, -2)]

def reductionPivot828 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 0, 4], ![0, 0, 2, -2], ![0, 3, -2, -1], ![1, -1, 1, -1]]

theorem reductionSound828 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode459).moment H =
      Integer.Sparse.eval reductionProjection828 (momentVector H) := by
  have heq : reductionPivot828 = (fun u v => (normalNode459).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode459).moment H = injectiveMoment H reductionPivot828 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode459).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot828 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot828 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot828 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection777, oldProjection458, reductionProjection814, oldProjection457] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot828 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node777⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot828 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection777 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot828 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot828 (1 : Fin 4)) = canonicalInput1347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot828 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection458 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot828 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1347 hH))).trans (oldProjectionSound458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot828 (2 : Fin 4)) = canonicalInput1287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot828 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection814 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot828 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1287 hH))).trans (reductionSound814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot828 (3 : Fin 4)) = canonicalInput1282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot828 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection457 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot828 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection457 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1282 hH))).trans (oldProjectionSound457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode459).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot828 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode459).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot828 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection828 ![oldProjection777, oldProjection458, reductionProjection814, oldProjection457]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection829 : Integer.Sparse (Fin 1613) := [(8, -3), (42, 1), (77, -3), (90, 1), (91, 1)]

def reductionPivot829 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 3, 0], ![0, 4, -2, -2], ![3, -3, -1, 1]]

theorem reductionSound829 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6721).moment H =
      Integer.Sparse.eval reductionProjection829 (momentVector H) := by
  have heq : reductionPivot829 = (fun u v => (normalNode6721).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6721).moment H = injectiveMoment H reductionPivot829 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6721).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6721).entries)).symm
  have hshape : reductionPivot829 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot829 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot829 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection14, reductionProjection53, oldProjection104] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot829 (0 : Fin 3)) = canonicalInput359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot829 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection14 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot829 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection14 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound359 hH))).trans (reductionSound14 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot829 (1 : Fin 3)) = canonicalInput5860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot829 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection53 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot829 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection53 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5860 hH))).trans (reductionSound53 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot829 (2 : Fin 3)) = canonicalInput5908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot829 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot829 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5908 hH))).trans (oldProjectionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6721).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot829 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6721).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot829 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection829 ![reductionProjection14, reductionProjection53, oldProjection104]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection830 : Integer.Sparse (Fin 1613) := [(8, 3), (42, -1), (76, 3), (77, 6), (88, -2), (90, -3), (91, -1), (231, 6), (241, -1), (243, -2), (683, 3), (698, -2), (700, -2), (1226, -1)]

def reductionPivot830 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 0, 4], ![0, 3, -2, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound830 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode454).moment H =
      Integer.Sparse.eval reductionProjection830 (momentVector H) := by
  have heq : reductionPivot830 = (fun u v => (normalNode454).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode454).moment H = injectiveMoment H reductionPivot830 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode454).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot830 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot830 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot830 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection826, oldProjection1076, reductionProjection829, reductionProjection735] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot830 (0 : Fin 4)) = canonicalInput1752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot830 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection826 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot830 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1752 hH))).trans (reductionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot830 (1 : Fin 4)) = canonicalInput1343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot830 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1076 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot830 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1343 hH))).trans (oldProjectionSound1076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot830 (2 : Fin 4)) = canonicalInput1342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot830 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection829 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot830 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1342 hH))).trans (reductionSound829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot830 (3 : Fin 4)) = canonicalInput1341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot830 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection735 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot830 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1341 hH))).trans (reductionSound735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode454).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot830 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode454).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot830 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection830 ![reductionProjection826, oldProjection1076, reductionProjection829, reductionProjection735]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection831 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (76, 240), (77, 240), (88, -80), (90, -80), (94, -15), (231, 240), (241, -80), (243, -160), (302, -720), (698, -160), (700, -80), (1226, -80), (1251, -15), (1323, 240)]

def reductionPivot831 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound831 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3150).moment H =
      Integer.Sparse.eval reductionProjection831 (momentVector H) := by
  have heq : reductionPivot831 = (fun u v => (normalNode3150).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3150).moment H = injectiveMoment H reductionPivot831 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3150).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot831 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot831 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot831 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection948, oldProjection898, oldProjection458, reductionProjection735] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot831 (0 : Fin 4)) = canonicalInput9769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot831 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot831 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9769 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot831 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2938 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot831 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot831 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2938 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot831 (2 : Fin 4)) = canonicalInput6095.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot831 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection458 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot831 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6095 hH))).trans (oldProjectionSound458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot831 (3 : Fin 4)) = canonicalInput6093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot831 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection735 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot831 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6093 hH))).trans (reductionSound735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3150).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot831 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3150).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot831 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 9] ![2, 10, 1440, 160] reductionProjection831 ![oldProjection948, oldProjection898, oldProjection458, reductionProjection735]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

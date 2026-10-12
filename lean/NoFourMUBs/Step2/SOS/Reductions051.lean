import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical025
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical031
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical035
import NoFourMUBs.Step2.SOS.Canonical088
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions050
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical101
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical134
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical135
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical137
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical143
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical164
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical165
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical235
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical76
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical81
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical98
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1632 : Integer.Sparse (Fin 1613) := [(0, -1), (72, -24), (79, -24), (81, -24), (94, 3), (241, 8), (243, 8), (465, 72), (578, 144), (579, 72), (602, 72), (638, 72), (639, 72), (697, -24), (698, 120), (700, 16), (1050, -96), (1052, -24), (1055, -48), (1058, -120), (1059, 80), (1221, -24), (1226, 8), (1227, 24), (1250, 6), (1251, -26)]

def reductionPivot1632 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound1632 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode875).moment H =
      Integer.Sparse.eval reductionProjection1632 (momentVector H) := by
  have heq : reductionPivot1632 = (fun u v => (normalNode875).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode875).moment H = injectiveMoment H reductionPivot1632 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode875).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1632 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1632 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1632 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1339, reductionProjection1411, reductionProjection1628, oldProjection1523, reductionProjection1485] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1632 (0 : Fin 5)) = canonicalInput1661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1339 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1661 hH))).trans (reductionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1632 (1 : Fin 5)) = canonicalInput2042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1411 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2042 hH))).trans (reductionSound1411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1632 (2 : Fin 5)) = canonicalInput2074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1628 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2074 hH))).trans (reductionSound1628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1632 (3 : Fin 5)) = canonicalInput2079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2079 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1632 (4 : Fin 5)) = canonicalInput2080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1485 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1632 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2080 hH))).trans (reductionSound1485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode875).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1632 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode875).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1632 (j : Fin 5)))
      1 144 1440 10 ![288, 2, 720, 1440, 1440] ![5, 720, 2, 1, 1] reductionProjection1632 ![reductionProjection1339, reductionProjection1411, reductionProjection1628, oldProjection1523, reductionProjection1485]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1633 : Integer.Sparse (Fin 1613) := [(87, 3), (593, -9), (618, -9), (619, -9), (698, -1), (1058, 3), (1226, -1), (1227, -1)]

def reductionPivot1633 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 1, 1, -3]]

theorem reductionSound1633 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode928).moment H =
      Integer.Sparse.eval reductionProjection1633 (momentVector H) := by
  have heq : reductionPivot1633 = (fun u v => (normalNode928).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode928).moment H = injectiveMoment H reductionPivot1633 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode928).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1633 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1633 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1633 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection515, reductionProjection1322, reductionProjection513, reductionProjection1460] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1633 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2596 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1633 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection515 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1633 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2596 hH))).trans (oldProjectionSound515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1633 (1 : Fin 4)) = canonicalInput2164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1633 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1633 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2164 hH))).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1633 (2 : Fin 4)) = canonicalInput2055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1633 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1633 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2055 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1633 (3 : Fin 4)) = canonicalInput2052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1633 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1460 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1633 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2052 hH))).trans (reductionSound1460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode928).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1633 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode928).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1633 (j : Fin 4)))
      2 18 18 2 ![1, 1, 9, 1] ![18, 18, 2, 18] reductionProjection1633 ![oldProjection515, reductionProjection1322, reductionProjection513, reductionProjection1460]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1634 : Integer.Sparse (Fin 1613) := [(219, 1)]

theorem reductionSound1634 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code219).moment H =
      Integer.Sparse.eval reductionProjection1634 (momentVector H) := by
  have hc : coordinates (219 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code219) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1634, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1635 : Integer.Sparse (Fin 1613) := [(81, 3), (82, 3), (87, 3), (90, -1), (219, -9), (228, 3), (229, 3), (698, -3), (1058, 3), (1226, -3), (1227, -2)]

def reductionPivot1635 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 1, 1, -3]]

theorem reductionSound1635 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode938).moment H =
      Integer.Sparse.eval reductionProjection1635 (momentVector H) := by
  have heq : reductionPivot1635 = (fun u v => (normalNode938).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode938).moment H = injectiveMoment H reductionPivot1635 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode938).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1635 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1635 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 9, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1635 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection730, reductionProjection1634, reductionProjection1167, oldProjection728] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1635 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2456 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1635 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection730 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1635 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2456 hH))).trans (oldProjectionSound730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1635 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code219).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1635 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1634 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1635 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1635 (2 : Fin 4)) = canonicalInput2133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1635 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1167 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1635 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2133 hH))).trans (reductionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1635 (3 : Fin 4)) = canonicalInput2129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1635 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection728 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1635 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2129 hH))).trans (oldProjectionSound728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode938).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1635 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode938).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1635 (j : Fin 4)))
      2 18 18 2 ![9, 1, 9, 3] ![2, 18, 2, 6] reductionProjection1635 ![oldProjection730, reductionProjection1634, reductionProjection1167, oldProjection728]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1636 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -12), (20, 2), (81, -48), (82, -48), (87, -144), (90, 16), (94, 20), (219, 144), (228, -48), (229, -48), (546, 144), (593, 288), (618, 144), (619, 144), (698, 224), (704, 32), (1055, -48), (1058, -240), (1086, 144), (1219, -48), (1223, -48), (1226, 112), (1227, 128), (1250, 12), (1251, -5), (1321, -96), (1389, -48)]

def reductionPivot1636 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 1, -3]]

theorem reductionSound1636 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode876).moment H =
      Integer.Sparse.eval reductionProjection1636 (momentVector H) := by
  have heq : reductionPivot1636 = (fun u v => (normalNode876).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode876).moment H = injectiveMoment H reductionPivot1636 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode876).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1636 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1636 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1636 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1324, reductionProjection1633, reductionProjection1323, reductionProjection1635, reductionProjection1326] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1636 (0 : Fin 5)) = canonicalInput1662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1324 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1662 hH))).trans (reductionSound1324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1636 (1 : Fin 5)) = (normalNode928).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1633 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1636 (2 : Fin 5)) = (normalNode937).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1323 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1636 (3 : Fin 5)) = (normalNode938).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1635 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1636 (4 : Fin 5)) = canonicalInput2081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1636 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2081 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode876).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1636 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode876).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1636 (j : Fin 5)))
      1 288 1440 5 ![1440, 18, 1440, 18, 1440] ![1, 80, 1, 80, 1] reductionProjection1636 ![reductionProjection1324, reductionProjection1633, reductionProjection1323, reductionProjection1635, reductionProjection1326]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1637 : Integer.Sparse (Fin 1613) := [(541, -1), (616, -1), (617, -1), (1143, -1)]

def reductionPivot1637 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound1637 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode929).moment H =
      Integer.Sparse.eval reductionProjection1637 (momentVector H) := by
  have heq : reductionPivot1637 = (fun u v => (normalNode929).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode929).moment H = injectiveMoment H reductionPivot1637 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode929).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1637 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1637 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1637 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection514, oldProjection497, reductionProjection566, reductionProjection1381] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1637 (0 : Fin 4)) = canonicalInput5692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1637 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection514 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1637 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5692 hH))).trans (oldProjectionSound514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1637 (1 : Fin 4)) = canonicalInput2166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1637 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1637 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2166 hH))).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1637 (2 : Fin 4)) = canonicalInput2056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1637 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1637 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2056 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1637 (3 : Fin 4)) = canonicalInput2054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1637 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1637 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2054 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode929).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1637 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode929).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1637 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1637 ![oldProjection514, oldProjection497, reductionProjection566, reductionProjection1381]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1638 : Integer.Sparse (Fin 1613) := [(0, 29), (19, -40), (94, 165), (247, 160), (541, 1440), (546, 720), (549, 720), (616, 720), (617, 720), (697, -240), (698, 240), (1055, -480), (1058, -240), (1143, 720), (1227, 160), (1250, 360), (1251, -180), (1321, -480), (1323, -240), (1388, -720), (1389, -960)]

def reductionPivot1638 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound1638 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode877).moment H =
      Integer.Sparse.eval reductionProjection1638 (momentVector H) := by
  have heq : reductionPivot1638 = (fun u v => (normalNode877).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode877).moment H = injectiveMoment H reductionPivot1638 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode877).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1638 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1638 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 360, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1638 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2161, reductionProjection1637, oldProjection2346, reductionProjection1294, reductionProjection1326] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1638 (0 : Fin 5)) = canonicalInput1663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2161 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1663 hH))).trans (oldProjectionSound2161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1638 (1 : Fin 5)) = (normalNode929).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1637 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1638 (2 : Fin 5)) = canonicalInput2076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2346 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2076 hH))).trans (oldProjectionSound2346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1638 (3 : Fin 5)) = canonicalInput2082.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1294 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2082 hH))).trans (reductionSound1294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1638 (4 : Fin 5)) = canonicalInput2083.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1638 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2083 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode877).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1638 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode877).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1638 (j : Fin 5)))
      1 1440 1440 1 ![720, 2, 360, 720, 1440] ![2, 720, 4, 2, 1] reductionProjection1638 ![oldProjection2161, reductionProjection1637, oldProjection2346, reductionProjection1294, reductionProjection1326]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1639 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -4), (87, -96), (94, 18), (241, 16), (247, 16), (616, 144), (638, 144), (697, -96), (698, 224), (1050, -96), (1055, -240), (1058, -288), (1059, 48), (1219, -48), (1226, 64), (1227, 112), (1250, 48), (1251, -51), (1388, -48)]

def reductionPivot1639 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound1639 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode878).moment H =
      Integer.Sparse.eval reductionProjection1639 (momentVector H) := by
  have heq : reductionPivot1639 = (fun u v => (normalNode878).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode878).moment H = injectiveMoment H reductionPivot1639 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode878).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1639 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1639 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 36, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1639 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1513, reductionProjection914, oldProjection1523, reductionProjection896, oldProjection1525] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1639 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1513⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1639 (1 : Fin 5)) = (normalNode930).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection914 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1639 (2 : Fin 5)) = canonicalInput2077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2077 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1639 (3 : Fin 5)) = canonicalInput2084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection896 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2084 hH))).trans (reductionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1639 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1525⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1525 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1639 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode878).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1639 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode878).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1639 (j : Fin 5)))
      1 288 1440 5 ![1440, 36, 1440, 720, 720] ![1, 40, 1, 2, 2] reductionProjection1639 ![oldProjection1513, reductionProjection914, oldProjection1523, reductionProjection896, oldProjection1525]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1640 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 8), (94, -9), (174, -144), (241, -16), (247, -32), (697, 96), (1103, -144), (1251, -6)]

def reductionPivot1640 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, 1, -2]]

theorem reductionSound1640 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4895).moment H =
      Integer.Sparse.eval reductionProjection1640 (momentVector H) := by
  have heq : reductionPivot1640 = (fun u v => (normalNode4895).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4895).moment H = injectiveMoment H reductionPivot1640 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4895).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1640 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1640 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1640 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection995, oldProjection1351, oldProjection409, oldProjection676] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1640 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3243 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1640 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1640 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3243 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1640 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4400 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1640 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1351 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1640 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4400 hH))).trans (oldProjectionSound1351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1640 (2 : Fin 4)) = canonicalInput9955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1640 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection409 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1640 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9955 hH))).trans (oldProjectionSound409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1640 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node676⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1640 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection676 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1640 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4895).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1640 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4895).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1640 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 1, 1] ![2, 2, 1440, 1440] reductionProjection1640 ![oldProjection995, oldProjection1351, oldProjection409, oldProjection676]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1641 : Integer.Sparse (Fin 1613) := [(197, -1), (211, -1), (218, -1), (616, -1)]

def reductionPivot1641 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, 1, 0, -2]]

theorem reductionSound1641 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode939).moment H =
      Integer.Sparse.eval reductionProjection1641 (momentVector H) := by
  have heq : reductionPivot1641 = (fun u v => (normalNode939).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode939).moment H = injectiveMoment H reductionPivot1641 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode939).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1641 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1641 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1641 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection566, oldProjection410, reductionProjection1281, reductionProjection1422] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1641 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code616).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1641 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1641 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1641 (1 : Fin 4)) = canonicalInput2174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1641 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection410 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1641 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2174 hH))).trans (oldProjectionSound410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1641 (2 : Fin 4)) = canonicalInput2149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1641 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1281 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1641 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2149 hH))).trans (reductionSound1281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1641 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code218).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1641 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1422 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1641 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode939).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1641 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode939).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1641 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1641 ![reductionProjection566, oldProjection410, reductionProjection1281, reductionProjection1422]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1642 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (94, 35), (174, 360), (197, 360), (211, 360), (213, -720), (218, 360), (241, 40), (247, 80), (541, 360), (546, 360), (616, 720), (617, 360), (697, -240), (698, 80), (1055, -120), (1058, -120), (1103, 360), (1143, 360), (1227, 80), (1250, 30), (1251, -5), (1321, -120), (1389, -120)]

def reductionPivot1642 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, 0, -2]]

theorem reductionSound1642 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode879).moment H =
      Integer.Sparse.eval reductionProjection1642 (momentVector H) := by
  have heq : reductionPivot1642 = (fun u v => (normalNode879).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode879).moment H = injectiveMoment H reductionPivot1642 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode879).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1642 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1642 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1, 1440, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1642 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1640, reductionProjection900, reductionProjection1326, reductionProjection1641, reductionProjection1637] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1642 (0 : Fin 5)) = canonicalInput1666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1640 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1666 hH))).trans (reductionSound1640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1642 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code213).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection900 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1642 (2 : Fin 5)) = canonicalInput2081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2081 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1642 (3 : Fin 5)) = (normalNode939).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1641 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1642 (4 : Fin 5)) = canonicalInput2086.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1637 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1642 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2086 hH))).trans (reductionSound1637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode879).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1642 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode879).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1642 (j : Fin 5)))
      1 720 1440 2 ![288, 1, 1440, 2, 2] ![5, 1440, 1, 720, 720] reductionProjection1642 ![reductionProjection1640, reductionProjection900, reductionProjection1326, reductionProjection1641, reductionProjection1637]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1643 : Integer.Sparse (Fin 1613) := [(0, 7), (19, 20), (76, 240), (94, -90), (241, -160), (247, -80), (697, 480), (698, -400), (700, -80), (704, -80), (1226, -80), (1251, -5)]

def reductionPivot1643 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound1643 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4870).moment H =
      Integer.Sparse.eval reductionProjection1643 (momentVector H) := by
  have heq : reductionPivot1643 = (fun u v => (normalNode4870).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4870).moment H = injectiveMoment H reductionPivot1643 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4870).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1643 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1643 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1643 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1003, oldProjection1011, oldProjection1036, oldProjection1050] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1643 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3081 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1643 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1003 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1643 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3081 hH))).trans (oldProjectionSound1003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1643 (1 : Fin 4)) = canonicalInput9768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1643 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1011 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1643 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9768 hH))).trans (oldProjectionSound1011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1643 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4318 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1643 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1643 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4318 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1643 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4320 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1643 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1050 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1643 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4320 hH))).trans (oldProjectionSound1050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4870).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1643 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4870).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1643 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 720, 720] ![2, 20, 2, 2] reductionProjection1643 ![oldProjection1003, oldProjection1011, oldProjection1036, oldProjection1050]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1644 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (94, -15), (228, 240), (579, -720), (616, -720), (638, -720), (698, -80), (1251, -20)]

def reductionPivot1644 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, 0, 1, -2]]

theorem reductionSound1644 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode933).moment H =
      Integer.Sparse.eval reductionProjection1644 (momentVector H) := by
  have heq : reductionPivot1644 = (fun u v => (normalNode933).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode933).moment H = injectiveMoment H reductionPivot1644 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode933).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1644 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1644 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1644 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection731, oldProjection518, reductionProjection566, reductionProjection1376] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1644 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1644 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection731 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1644 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1644 (1 : Fin 4)) = canonicalInput2205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1644 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection518 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1644 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2205 hH))).trans (oldProjectionSound518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1644 (2 : Fin 4)) = canonicalInput2058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1644 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1644 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2058 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1644 (3 : Fin 4)) = canonicalInput2049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1644 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1644 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2049 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode933).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1644 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode933).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1644 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1644 ![oldProjection731, oldProjection518, reductionProjection566, reductionProjection1376]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1645 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -40), (72, -240), (76, -240), (81, -240), (94, 125), (228, -240), (241, 240), (243, 80), (247, 160), (546, 720), (579, 720), (616, 720), (635, 720), (638, 1440), (697, -480), (698, 880), (700, 160), (704, 80), (1050, -480), (1055, -720), (1058, -720), (1059, 160), (1116, 720), (1221, -240), (1226, 80), (1227, 160), (1250, 120), (1251, -105), (1388, -240)]

def reductionPivot1645 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound1645 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode880).moment H =
      Integer.Sparse.eval reductionProjection1645 (momentVector H) := by
  have heq : reductionPivot1645 = (fun u v => (normalNode880).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode880).moment H = injectiveMoment H reductionPivot1645 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode880).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1645 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1645 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1645 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1643, reductionProjection1644, oldProjection2289, reductionProjection1405, oldProjection1520] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1645 (0 : Fin 5)) = canonicalInput1672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1643 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1672 hH))).trans (reductionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1645 (1 : Fin 5)) = (normalNode933).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1644 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1644 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1645 (2 : Fin 5)) = canonicalInput2092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2289 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2092 hH))).trans (oldProjectionSound2289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1645 (3 : Fin 5)) = (normalNode940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1405 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1645 (4 : Fin 5)) = canonicalInput2097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1520 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1645 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2097 hH))).trans (oldProjectionSound1520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode880).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1645 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode880).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1645 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 2, 288] ![1, 1, 1, 720, 5] reductionProjection1645 ![reductionProjection1643, reductionProjection1644, oldProjection2289, reductionProjection1405, oldProjection1520]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1646 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (94, -35), (169, -720), (241, -160), (247, -80), (697, 480), (698, -160), (1089, -720), (1251, 15)]

def reductionPivot1646 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 1, 0, -2]]

theorem reductionSound1646 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4889).moment H =
      Integer.Sparse.eval reductionProjection1646 (momentVector H) := by
  have heq : reductionPivot1646 = (fun u v => (normalNode4889).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4889).moment H = injectiveMoment H reductionPivot1646 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4889).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1646 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1646 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1646 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1036, oldProjection674, oldProjection408, oldProjection1351] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1646 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3155 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1646 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1646 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3155 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1646 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node674⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1646 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection674 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1646 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1646 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4398 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1646 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1646 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4398 hH))).trans (oldProjectionSound408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1646 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4400 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1646 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1351 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1646 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4400 hH))).trans (oldProjectionSound1351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4889).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1646 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4889).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1646 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 720] ![2, 1440, 1440, 2] reductionProjection1646 ![oldProjection1036, oldProjection674, oldProjection408, oldProjection1351]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1647 : Integer.Sparse (Fin 1613) := [(215, 1)]

theorem reductionSound1647 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code215).moment H =
      Integer.Sparse.eval reductionProjection1647 (momentVector H) := by
  have hc : coordinates (215 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code215) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1647, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1648 : Integer.Sparse (Fin 1613) := [(197, -1), (206, -1), (221, -1), (638, -1)]

def reductionPivot1648 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 2, 0, -2], ![1, -1, -2, 2], ![1, 0, 1, -2]]

theorem reductionSound1648 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode941).moment H =
      Integer.Sparse.eval reductionProjection1648 (momentVector H) := by
  have heq : reductionPivot1648 = (fun u v => (normalNode941).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode941).moment H = injectiveMoment H reductionPivot1648 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode941).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1648 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1648 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1648 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection518, reductionProjection1432, reductionProjection898, oldProjection410] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1648 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node518⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1648 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection518 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1648 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1648 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code221).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1648 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1432 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1648 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1648 (2 : Fin 4)) = canonicalInput2177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1648 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection898 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1648 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2177 hH))).trans (reductionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1648 (3 : Fin 4)) = canonicalInput2174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1648 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection410 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1648 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2174 hH))).trans (oldProjectionSound410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode941).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1648 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode941).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1648 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1648 ![oldProjection518, reductionProjection1432, reductionProjection898, oldProjection410]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1649 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (541, -360), (698, -160), (1050, 120), (1058, 240), (1059, -80), (1251, 20), (1321, 120)]

def reductionPivot1649 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -2, 2], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound1649 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5802).moment H =
      Integer.Sparse.eval reductionProjection1649 (momentVector H) := by
  have heq : reductionPivot1649 = (fun u v => (normalNode5802).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5802).moment H = injectiveMoment H reductionPivot1649 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5802).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1649 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1649 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1649 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection837, oldProjection1073, oldProjection831, oldProjection497] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1649 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4588 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1649 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection837 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1649 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4588 hH))).trans (oldProjectionSound837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1649 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5259 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1649 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1649 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5259 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1649 (2 : Fin 4)) = canonicalInput11939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1649 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1649 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11939 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1649 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5298 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1649 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1649 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5298 hH))).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5802).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1649 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5802).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1649 (j : Fin 4)))
      2 720 720 2 ![144, 720, 720, 1] ![5, 1, 1, 720] reductionProjection1649 ![oldProjection837, oldProjection1073, oldProjection831, oldProjection497]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1650 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -40), (94, 65), (169, 720), (197, 720), (206, 720), (215, -1440), (221, 720), (241, 160), (247, 80), (541, 720), (546, 720), (635, 720), (638, 1440), (697, -480), (698, 480), (1050, -240), (1058, -480), (1059, 160), (1089, 720), (1116, 720), (1251, -55), (1321, -240)]

def reductionPivot1650 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, 0, 1, -2]]

theorem reductionSound1650 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode882).moment H =
      Integer.Sparse.eval reductionProjection1650 (momentVector H) := by
  have heq : reductionPivot1650 = (fun u v => (normalNode882).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode882).moment H = injectiveMoment H reductionPivot1650 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode882).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1650 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1650 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 2, 2, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1650 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1646, reductionProjection1647, reductionProjection1405, reductionProjection1648, reductionProjection1649] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1650 (0 : Fin 5)) = canonicalInput1674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1646 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1674 hH))).trans (reductionSound1646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1650 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code215).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1647 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1650 (2 : Fin 5)) = (normalNode940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1405 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1650 (3 : Fin 5)) = (normalNode941).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1648 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1650 (4 : Fin 5)) = canonicalInput2100.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1649 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1650 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2100 hH))).trans (reductionSound1649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode882).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1650 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode882).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1650 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1, 2, 2, 720] ![1, 1440, 720, 720, 2] reductionProjection1650 ![reductionProjection1646, reductionProjection1647, reductionProjection1405, reductionProjection1648, reductionProjection1649]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1651 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -40), (94, 70), (241, 160), (243, 80), (478, 720), (546, 720), (578, 720), (593, 1440), (602, 720), (698, 640), (1050, -720), (1055, -480), (1058, -720), (1059, 160), (1116, 720), (1143, 720), (1221, -240), (1226, 240), (1227, 240), (1250, 180), (1251, -55), (1321, -240), (1323, -240), (1389, -240)]

def reductionPivot1651 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound1651 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode883).moment H =
      Integer.Sparse.eval reductionProjection1651 (momentVector H) := by
  have heq : reductionPivot1651 = (fun u v => (normalNode883).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode883).moment H = injectiveMoment H reductionPivot1651 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode883).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1651 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1651 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1651 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2162, reductionProjection1387, reductionProjection1326, oldProjection1518, reductionProjection1391] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1651 (0 : Fin 5)) = canonicalInput1675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2162 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1675 hH))).trans (oldProjectionSound2162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1651 (1 : Fin 5)) = (normalNode935).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1387 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1651 (2 : Fin 5)) = canonicalInput2098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2098 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1651 (3 : Fin 5)) = canonicalInput2101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1518 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2101 hH))).trans (oldProjectionSound1518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1651 (4 : Fin 5)) = (normalNode942).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1391 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1651 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode883).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1651 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode883).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1651 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection1651 ![oldProjection2162, reductionProjection1387, reductionProjection1326, oldProjection1518, reductionProjection1391]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1652 : Integer.Sparse (Fin 1613) := [(94, -1), (243, 16), (698, 16), (700, 32), (1052, -48), (1251, 3)]

def reductionPivot1652 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![1, -3, 0, 2], ![1, 3, -2, -2]]

theorem reductionSound1652 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9442).moment H =
      Integer.Sparse.eval reductionProjection1652 (momentVector H) := by
  have heq : reductionPivot1652 = (fun u v => (normalNode9442).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9442).moment H = injectiveMoment H reductionPivot1652 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9442).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9442).entries)).symm
  have hshape : reductionPivot1652 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1652 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1652 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection198, oldProjection214, oldProjection215] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1652 (0 : Fin 3)) = canonicalInput9460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1652 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1652 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9460 hH))).trans (oldProjectionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1652 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7546 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1652 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1652 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7546 hH))).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1652 (2 : Fin 3)) = canonicalInput22413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1652 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection215 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1652 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22413 hH))).trans (oldProjectionSound215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9442).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1652 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9442).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1652 (j : Fin 3)))
      3 144 144 3 ![1, 48, 24] ![144, 3, 6] reductionProjection1652 ![oldProjection198, oldProjection214, oldProjection215]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1653 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 240), (79, 240), (81, 240), (94, 5), (243, -80), (639, -720), (698, -160), (700, -160), (1050, 240), (1052, 240), (1058, 240), (1059, -80)]

def reductionPivot1653 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -1, 0]]

theorem reductionSound1653 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode884).moment H =
      Integer.Sparse.eval reductionProjection1653 (momentVector H) := by
  have heq : reductionPivot1653 = (fun u v => (normalNode884).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode884).moment H = injectiveMoment H reductionPivot1653 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode884).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1653 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1653 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1653 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1652, reductionProjection1402, oldProjection831, reductionProjection1484] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1653 (0 : Fin 4)) = canonicalInput1676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1653 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1652 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1653 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1676 hH))).trans (reductionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1653 (1 : Fin 4)) = canonicalInput2051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1653 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1402 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1653 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2051 hH))).trans (reductionSound1402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1653 (2 : Fin 4)) = canonicalInput2102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1653 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1653 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2102 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1653 (3 : Fin 4)) = canonicalInput2104.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1653 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1484 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1653 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2104 hH))).trans (reductionSound1484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode884).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1653 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode884).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1653 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 720, 3] ![10, 1440, 2, 480] reductionProjection1653 ![reductionProjection1652, reductionProjection1402, oldProjection831, reductionProjection1484]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1654 : Integer.Sparse (Fin 1613) := [(0, 1), (508, -720), (578, -720), (639, -720), (698, -80), (1050, 240), (1058, 240), (1059, -80), (1251, 15)]

def reductionPivot1654 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 2, -2, 0], ![2, -1, 0, -1]]

theorem reductionSound1654 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode896).moment H =
      Integer.Sparse.eval reductionProjection1654 (momentVector H) := by
  have heq : reductionPivot1654 = (fun u v => (normalNode896).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode896).moment H = injectiveMoment H reductionPivot1654 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode896).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1654 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1654 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1654 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection496, oldProjection831, reductionProjection1402, oldProjection506] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1654 (0 : Fin 4)) = canonicalInput1704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1654 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection496 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1654 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1704 hH))).trans (oldProjectionSound496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1654 (1 : Fin 4)) = canonicalInput2124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1654 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1654 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2124 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1654 (2 : Fin 4)) = canonicalInput2140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1654 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1402 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1654 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2140 hH))).trans (reductionSound1402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1654 (3 : Fin 4)) = canonicalInput2142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1654 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1654 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2142 hH))).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode896).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1654 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode896).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1654 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection1654 ![oldProjection496, oldProjection831, reductionProjection1402, oldProjection506]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1655 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (218, -720), (1103, -720), (1143, -720), (1250, -60), (1251, 10), (1321, 240), (1389, 240)]

def reductionPivot1655 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 2, -1, -2]]

theorem reductionSound1655 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode897).moment H =
      Integer.Sparse.eval reductionProjection1655 (momentVector H) := by
  have heq : reductionPivot1655 = (fun u v => (normalNode897).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode897).moment H = injectiveMoment H reductionPivot1655 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode897).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1655 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1655 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1655 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection676, oldProjection1331, reductionProjection1422, reductionProjection1381] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1655 (0 : Fin 4)) = canonicalInput1706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1655 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection676 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1655 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1706 hH))).trans (oldProjectionSound676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1655 (1 : Fin 4)) = canonicalInput2130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1655 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1655 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2130 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1655 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code218).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1655 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1422 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1655 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1655 (3 : Fin 4)) = canonicalInput2147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1655 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1655 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2147 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode897).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1655 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode897).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1655 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection1655 ![oldProjection676, oldProjection1331, reductionProjection1422, reductionProjection1381]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1656 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -35), (243, -80), (697, 480), (698, -160), (704, -80), (1058, 480), (1143, -720), (1226, -80), (1250, -120), (1251, 10)]

def reductionPivot1656 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]

theorem reductionSound1656 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode898).moment H =
      Integer.Sparse.eval reductionProjection1656 (momentVector H) := by
  have heq : reductionPivot1656 = (fun u v => (normalNode898).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode898).moment H = injectiveMoment H reductionPivot1656 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode898).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1656 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1656 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1656 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1248, oldProjection1253, reductionProjection1381, oldProjection1250] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1656 (0 : Fin 4)) = canonicalInput1707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1656 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1248 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1656 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1707 hH))).trans (oldProjectionSound1248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1656 (1 : Fin 4)) = canonicalInput2131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1656 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1656 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2131 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1656 (2 : Fin 4)) = canonicalInput2147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1656 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1656 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2147 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1656 (3 : Fin 4)) = canonicalInput2148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1656 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1250 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1656 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2148 hH))).trans (oldProjectionSound1250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode898).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1656 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode898).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1656 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 1, 9] ![20, 2, 1440, 160] reductionProjection1656 ![oldProjection1248, oldProjection1253, reductionProjection1381, oldProjection1250]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1657 : Integer.Sparse (Fin 1613) := [(79, 48), (87, 48), (88, -16), (90, -16), (94, -1), (241, -16), (243, -16), (593, -144), (698, -32), (700, -16), (1050, 48), (1052, 48), (1055, 48), (1219, 48), (1226, -16), (1251, 3)]

def reductionPivot1657 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound1657 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode900).moment H =
      Integer.Sparse.eval reductionProjection1657 (momentVector H) := by
  have heq : reductionPivot1657 = (fun u v => (normalNode900).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode900).moment H = injectiveMoment H reductionPivot1657 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode900).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1657 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1657 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1657 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1270, reductionProjection368, reductionProjection1322, oldProjection1059] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1657 (0 : Fin 4)) = canonicalInput1727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1657 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1270 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1657 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1727 hH))).trans (oldProjectionSound1270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1657 (1 : Fin 4)) = canonicalInput2158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1657 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection368 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1657 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2158 hH))).trans (reductionSound368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1657 (2 : Fin 4)) = canonicalInput2164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1657 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1657 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2164 hH))).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1657 (3 : Fin 4)) = canonicalInput2165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1657 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1059 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1657 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2165 hH))).trans (oldProjectionSound1059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode900).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1657 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode900).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1657 (j : Fin 4)))
      2 288 288 2 ![9, 9, 1, 144] ![32, 32, 288, 2] reductionProjection1657 ![oldProjection1270, reductionProjection368, reductionProjection1322, oldProjection1059]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1658 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (247, -40), (541, -360), (546, -360), (549, -360), (1055, 120), (1251, -10), (1388, 120)]

def reductionPivot1658 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound1658 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode901).moment H =
      Integer.Sparse.eval reductionProjection1658 (momentVector H) := by
  have heq : reductionPivot1658 = (fun u v => (normalNode901).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode901).moment H = injectiveMoment H reductionPivot1658 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode901).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1658 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1658 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1658 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection502, oldProjection497, oldProjection1084, oldProjection500] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1658 (0 : Fin 4)) = canonicalInput1735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1658 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection502 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1658 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1735 hH))).trans (oldProjectionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1658 (1 : Fin 4)) = canonicalInput2166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1658 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1658 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2166 hH))).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1658 (2 : Fin 4)) = canonicalInput2169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1658 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1084 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1658 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2169 hH))).trans (oldProjectionSound1084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1658 (3 : Fin 4)) = canonicalInput2170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1658 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection500 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1658 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2170 hH))).trans (oldProjectionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode901).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1658 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode901).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1658 (j : Fin 4)))
      2 720 720 2 ![1, 1, 360, 1] ![720, 720, 2, 720] reductionProjection1658 ![oldProjection502, oldProjection497, oldProjection1084, oldProjection500]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1659 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (478, -144), (546, -144), (593, -144), (698, -16), (1050, 48), (1055, 48), (1251, 3)]

def reductionPivot1659 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound1659 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode902).moment H =
      Integer.Sparse.eval reductionProjection1659 (momentVector H) := by
  have heq : reductionPivot1659 = (fun u v => (normalNode902).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode902).moment H = injectiveMoment H reductionPivot1659 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode902).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1659 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1659 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1659 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection484, oldProjection500, oldProjection1059, reductionProjection1322] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1659 (0 : Fin 4)) = canonicalInput1739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1659 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection484 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1659 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1739 hH))).trans (oldProjectionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1659 (1 : Fin 4)) = canonicalInput2170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1659 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection500 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1659 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2170 hH))).trans (oldProjectionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1659 (2 : Fin 4)) = canonicalInput2175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1659 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1059 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1659 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2175 hH))).trans (oldProjectionSound1059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1659 (3 : Fin 4)) = canonicalInput2176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1659 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1659 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2176 hH))).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode902).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1659 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode902).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1659 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 1] ![288, 288, 2, 288] reductionProjection1659 ![oldProjection484, oldProjection500, oldProjection1059, reductionProjection1322]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1660 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (72, 240), (76, 240), (94, 5), (243, -80), (697, 240), (700, -160), (704, -80), (1058, 480), (1116, -720), (1250, -60)]

def reductionPivot1660 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound1660 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode903).moment H =
      Integer.Sparse.eval reductionProjection1660 (momentVector H) := by
  have heq : reductionPivot1660 = (fun u v => (normalNode903).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode903).moment H = injectiveMoment H reductionPivot1660 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode903).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1660 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1660 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1660 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1011, oldProjection1017, reductionProjection1303, oldProjection1052] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1660 (0 : Fin 4)) = canonicalInput1750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1660 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1011 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1660 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1750 hH))).trans (oldProjectionSound1011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1660 (1 : Fin 4)) = canonicalInput2183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1660 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1660 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2183 hH))).trans (oldProjectionSound1017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1660 (2 : Fin 4)) = canonicalInput2185.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1660 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1303 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1660 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2185 hH))).trans (reductionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1660 (3 : Fin 4)) = canonicalInput2186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1660 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1660 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2186 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode903).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1660 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode903).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1660 (j : Fin 4)))
      2 1440 1440 2 ![72, 144, 1, 720] ![20, 10, 1440, 2] reductionProjection1660 ![oldProjection1011, oldProjection1017, reductionProjection1303, oldProjection1052]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1661 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (56, -480), (79, -480), (82, -720), (87, -960), (90, 480), (94, 20), (206, 720), (211, 1440), (698, 1280), (700, 480), (1050, -240), (1052, -240), (1055, -480), (1058, -1200), (1059, 160), (1219, -480), (1226, 800), (1227, 480), (1250, 60), (1251, -115)]

def reductionPivot1661 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound1661 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode908).moment H =
      Integer.Sparse.eval reductionProjection1661 (momentVector H) := by
  have heq : reductionPivot1661 = (fun u v => (normalNode908).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode908).moment H = injectiveMoment H reductionPivot1661 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode908).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1661 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1661 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1661 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection841, oldProjection1523, reductionProjection1315, reductionProjection1620, reductionProjection1620] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1661 (0 : Fin 5)) = canonicalInput2248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2248 hH))).trans (reductionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1661 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1661 (2 : Fin 5)) = (normalNode921).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1315 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1661 (3 : Fin 5)) = canonicalInput2026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1620 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1620 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2026 hH))).trans (reductionSound1620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1661 (4 : Fin 5)) = (normalNode919).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1620 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1661 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1620 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode908).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1661 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode908).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1661 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 18, 1440, 1440] ![1, 1, 80, 1, 1] reductionProjection1661 ![reductionProjection841, oldProjection1523, reductionProjection1315, reductionProjection1620, reductionProjection1620]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1662 : Integer.Sparse (Fin 1613) := [(11, -1), (76, -1), (79, -1)]

def reductionPivot1662 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 0, 1, 2], ![2, -2, 2, -2], ![2, 2, -3, -1]]

theorem reductionSound1662 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6218).moment H =
      Integer.Sparse.eval reductionProjection1662 (momentVector H) := by
  have heq : reductionPivot1662 = (fun u v => (normalNode6218).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6218).moment H = injectiveMoment H reductionPivot1662 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6218).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6218).entries)).symm
  have hshape : reductionPivot1662 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1662 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1662 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection26, oldProjection103, oldProjection110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1662 (0 : Fin 3)) = canonicalInput13.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1662 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection26 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1662 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection26 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13 hH))).trans (reductionSound26 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1662 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw350 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1662 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1662 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical350 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1662 (2 : Fin 3)) = canonicalInput537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1662 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1662 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound537 hH))).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6218).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1662 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6218).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1662 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1662 ![reductionProjection26, oldProjection103, oldProjection110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1663 : Integer.Sparse (Fin 1613) := [(11, 1), (72, 1), (73, 1), (76, 1), (79, 1), (198, -3), (1050, 1), (1052, 2), (1221, 1)]

def reductionPivot1663 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 2, 0, -2], ![2, -1, -3, 2]]

theorem reductionSound1663 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode911).moment H =
      Integer.Sparse.eval reductionProjection1663 (momentVector H) := by
  have heq : reductionPivot1663 = (fun u v => (normalNode911).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode911).moment H = injectiveMoment H reductionPivot1663 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode911).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1663 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1663 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1663 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1091, reductionProjection1508, reductionProjection1662, oldProjection825] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1663 (0 : Fin 4)) = canonicalInput2251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1663 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1091 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1663 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1091 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2251 hH))).trans (reductionSound1091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1663 (1 : Fin 4)) = canonicalInput2146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1663 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1508 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1663 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2146 hH))).trans (reductionSound1508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1663 (2 : Fin 4)) = canonicalInput2128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1663 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1662 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1663 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1662 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2128 hH))).trans (reductionSound1662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1663 (3 : Fin 4)) = canonicalInput2126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1663 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1663 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2126 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode911).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1663 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode911).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1663 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection1663 ![reductionProjection1091, reductionProjection1508, reductionProjection1662, oldProjection825]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

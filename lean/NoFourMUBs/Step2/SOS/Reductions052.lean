import NoFourMUBs.Step2.SOS.Canonical003
import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical029
import NoFourMUBs.Step2.SOS.Canonical030
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical035
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical089
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical199
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions051
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical110
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical75
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical77
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical83
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1664 : Integer.Sparse (Fin 1613) := [(210, 1)]

theorem reductionSound1664 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code210).moment H =
      Integer.Sparse.eval reductionProjection1664 (momentVector H) := by
  have hc : coordinates (210 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code210) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1664, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1665 : Integer.Sparse (Fin 1613) := [(228, 3), (616, -18), (638, -9), (698, -2), (1226, -2), (1227, -2)]

def reductionPivot1665 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound1665 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode931).moment H =
      Integer.Sparse.eval reductionProjection1665 (momentVector H) := by
  have heq : reductionPivot1665 = (fun u v => (normalNode931).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode931).moment H = injectiveMoment H reductionPivot1665 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode931).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1665 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1665 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1665 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection730, reductionProjection566, reductionProjection566, oldProjection518] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1665 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node730⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1665 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection730 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1665 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1665 (1 : Fin 4)) = canonicalInput2204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1665 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1665 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2204 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1665 (2 : Fin 4)) = canonicalInput2056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1665 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1665 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2056 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1665 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1305 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1665 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection518 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1665 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1305 hH))).trans (oldProjectionSound518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode931).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1665 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode931).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1665 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection1665 ![oldProjection730, reductionProjection566, reductionProjection566, oldProjection518]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1666 : Integer.Sparse (Fin 1613) := [(0, 2), (87, -120), (94, 25), (546, 720), (593, 360), (602, 360), (635, 720), (638, 720), (698, 440), (1050, -120), (1055, -240), (1058, -480), (1059, 40), (1116, 720), (1226, 120), (1227, 160), (1250, 30), (1251, -55), (1321, -120), (1389, -120)]

def reductionPivot1666 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]

theorem reductionSound1666 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode936).moment H =
      Integer.Sparse.eval reductionProjection1666 (momentVector H) := by
  have heq : reductionPivot1666 = (fun u v => (normalNode936).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode936).moment H = injectiveMoment H reductionPivot1666 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode936).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1666 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1666 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 2, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1666 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1824, reductionProjection1391, reductionProjection1405, reductionProjection896, reductionProjection1326] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1666 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1824 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1666 (1 : Fin 5)) = canonicalInput2162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1391 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2162 hH))).trans (reductionSound1391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1666 (2 : Fin 5)) = (normalNode940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1405 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1666 (3 : Fin 5)) = canonicalInput2084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection896 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2084 hH))).trans (reductionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1666 (4 : Fin 5)) = canonicalInput2081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1326 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1666 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2081 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode936).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1666 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode936).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1666 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 2, 720, 1440] ![1, 1, 720, 2, 1] reductionProjection1666 ![oldProjection1824, reductionProjection1391, reductionProjection1405, reductionProjection896, reductionProjection1326]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1667 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (565, -360), (610, -360), (698, -120), (1055, 120), (1226, -40), (1227, -120), (1251, 40)]

def reductionPivot1667 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound1667 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2803).moment H =
      Integer.Sparse.eval reductionProjection1667 (momentVector H) := by
  have heq : reductionPivot1667 = (fun u v => (normalNode2803).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2803).moment H = injectiveMoment H reductionPivot1667 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2803).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1667 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1667 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1667 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1309, oldProjection505, oldProjection838, oldProjection513] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1667 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3544 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1667 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1667 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3544 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1667 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2482 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1667 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1667 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2482 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1667 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2406 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1667 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1667 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2406 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1667 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1667 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1667 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2803).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1667 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2803).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1667 (j : Fin 4)))
      2 720 720 2 ![720, 1, 720, 1] ![1, 720, 1, 720] reductionProjection1667 ![oldProjection1309, oldProjection505, oldProjection838, oldProjection513]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1668 : Integer.Sparse (Fin 1613) := [(217, 1)]

theorem reductionSound1668 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code217).moment H =
      Integer.Sparse.eval reductionProjection1668 (momentVector H) := by
  have hc : coordinates (217 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code217) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1668, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1669 : Integer.Sparse (Fin 1613) := [(0, 1), (79, -480), (94, 25), (217, -1440), (565, 1440), (570, 720), (597, 1440), (610, 1440), (616, 720), (698, 720), (1055, -720), (1058, -960), (1143, 720), (1226, 320), (1227, 560), (1251, -180)]

def reductionPivot1669 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, -2, 1]]

theorem reductionSound1669 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode944).moment H =
      Integer.Sparse.eval reductionProjection1669 (momentVector H) := by
  have heq : reductionPivot1669 = (fun u v => (normalNode944).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode944).moment H = injectiveMoment H reductionPivot1669 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode944).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1669 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1669 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1, 288, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1669 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1667, reductionProjection1668, reductionProjection1496, reductionProjection1412, reductionProjection1382] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1669 (0 : Fin 5)) = canonicalInput5701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1667 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1667 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5701 hH))).trans (reductionSound1667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1669 (1 : Fin 5)) = canonicalInput2172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1668 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1668 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2172 hH))).trans (reductionSound1668 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1669 (2 : Fin 5)) = (normalNode947).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1496 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1669 (3 : Fin 5)) = canonicalInput2121.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1412 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2121 hH))).trans (reductionSound1412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1669 (4 : Fin 5)) = canonicalInput2118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1669 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2118 hH))).trans (reductionSound1382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode944).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1669 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode944).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1669 (j : Fin 5)))
      1 1440 1440 1 ![720, 1, 288, 144, 1440] ![2, 1440, 5, 10, 1] reductionProjection1669 ![reductionProjection1667, reductionProjection1668, reductionProjection1496, reductionProjection1412, reductionProjection1382]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1670 : Integer.Sparse (Fin 1613) := [(11, 48), (76, 96), (79, 96), (94, -3), (198, -144), (241, -16), (698, -48), (1058, 48), (1226, -32), (1251, 9)]

def reductionPivot1670 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -3, 2]]

theorem reductionSound1670 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode945).moment H =
      Integer.Sparse.eval reductionProjection1670 (momentVector H) := by
  have heq : reductionPivot1670 = (fun u v => (normalNode945).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode945).moment H = injectiveMoment H reductionPivot1670 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode945).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1670 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1670 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1670 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection829, reductionProjection1508, reductionProjection1662, oldProjection841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1670 (0 : Fin 4)) = canonicalInput5702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1670 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection829 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1670 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5702 hH))).trans (oldProjectionSound829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1670 (1 : Fin 4)) = canonicalInput2173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1670 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1508 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1670 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2173 hH))).trans (reductionSound1508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1670 (2 : Fin 4)) = canonicalInput2128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1670 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1662 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1670 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1662 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2128 hH))).trans (reductionSound1662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1670 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1321 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1670 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1670 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1321 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode945).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1670 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode945).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1670 (j : Fin 4)))
      2 288 288 2 ![72, 1, 3, 144] ![4, 288, 96, 2] reductionProjection1670 ![oldProjection829, reductionProjection1508, reductionProjection1662, oldProjection841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1671 : Integer.Sparse (Fin 1613) := [(222, 1)]

theorem reductionSound1671 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code222).moment H =
      Integer.Sparse.eval reductionProjection1671 (momentVector H) := by
  have hc : coordinates (222 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code222) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1671, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1672 : Integer.Sparse (Fin 1613) := [(7, -3), (39, -3), (700, 1), (701, 1), (704, 1)]

def reductionPivot1672 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 3, 0], ![0, 3, -4, 1], ![3, -2, 1, -2]]

theorem reductionSound1672 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6716).moment H =
      Integer.Sparse.eval reductionProjection1672 (momentVector H) := by
  have heq : reductionPivot1672 = (fun u v => (normalNode6716).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6716).moment H = injectiveMoment H reductionPivot1672 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6716).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6716).entries)).symm
  have hshape : reductionPivot1672 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1672 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1672 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection15, reductionProjection265, oldProjection83] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1672 (0 : Fin 3)) = canonicalInput357.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1672 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection15 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1672 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection15 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound357 hH))).trans (reductionSound15 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1672 (1 : Fin 3)) = canonicalInput5857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1672 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection265 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1672 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5857 hH))).trans (reductionSound265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1672 (2 : Fin 3)) = canonicalInput5906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1672 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1672 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5906 hH))).trans (oldProjectionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6716).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1672 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6716).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1672 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection1672 ![reductionProjection15, reductionProjection265, oldProjection83]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1673 : Integer.Sparse (Fin 1613) := [(292, 1)]

theorem reductionSound1673 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code292).moment H =
      Integer.Sparse.eval reductionProjection1673 (momentVector H) := by
  have hc : coordinates (292 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code292) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1673, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1674 : Integer.Sparse (Fin 1613) := [(7, 48), (19, 8), (20, -1), (39, 48), (94, -6), (229, 48), (240, 48), (292, -144), (683, 48), (696, 48), (698, -16), (700, -16), (701, -16), (704, -32), (1251, -5)]

def reductionPivot1674 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 3, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 3, 0, -4]]

theorem reductionSound1674 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode948).moment H =
      Integer.Sparse.eval reductionProjection1674 (momentVector H) := by
  have heq : reductionPivot1674 = (fun u v => (normalNode948).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode948).moment H = injectiveMoment H reductionPivot1674 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode948).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1674 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1674 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1674 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1014, reductionProjection1672, reductionProjection1673, reductionProjection152] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1674 (0 : Fin 4)) = canonicalInput1836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1674 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1674 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1836 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1674 (1 : Fin 4)) = canonicalInput2218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1674 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1672 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1674 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2218 hH))).trans (reductionSound1672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1674 (2 : Fin 4)) = canonicalInput2222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1674 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1673 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1674 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2222 hH))).trans (reductionSound1673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1674 (3 : Fin 4)) = canonicalInput2223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1674 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection152 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1674 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2223 hH))).trans (reductionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode948).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1674 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode948).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1674 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 72] ![2, 32, 288, 4] reductionProjection1674 ![oldProjection1014, reductionProjection1672, reductionProjection1673, reductionProjection152]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1675 : Integer.Sparse (Fin 1613) := [(223, 1)]

theorem reductionSound1675 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code223).moment H =
      Integer.Sparse.eval reductionProjection1675 (momentVector H) := by
  have hc : coordinates (223 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code223) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1675, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1676 : Integer.Sparse (Fin 1613) := [(36, 3), (56, 6), (60, -2), (223, -9), (700, -5), (1052, 3), (1059, -2)]

def reductionPivot1676 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 3, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, 0, 0, -2]]

theorem reductionSound1676 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode950).moment H =
      Integer.Sparse.eval reductionProjection1676 (momentVector H) := by
  have heq : reductionPivot1676 = (fun u v => (normalNode950).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode950).moment H = injectiveMoment H reductionPivot1676 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode950).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1676 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1676 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1676 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection811, reductionProjection808, reductionProjection1675, reductionProjection1222] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1676 (0 : Fin 4)) = canonicalInput5895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1676 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection811 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1676 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5895 hH))).trans (oldProjectionSound811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1676 (1 : Fin 4)) = canonicalInput2249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1676 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection808 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1676 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2249 hH))).trans (reductionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1676 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code223).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1676 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1675 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1676 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1676 (3 : Fin 4)) = canonicalInput2226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1676 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1222 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1676 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2226 hH))).trans (reductionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode950).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1676 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode950).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1676 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection1676 ![oldProjection811, reductionProjection808, reductionProjection1675, reductionProjection1222]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1677 : Integer.Sparse (Fin 1613) := [(224, 1)]

theorem reductionSound1677 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code224).moment H =
      Integer.Sparse.eval reductionProjection1677 (momentVector H) := by
  have hc : coordinates (224 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code224) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1677, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1678 : Integer.Sparse (Fin 1613) := [(36, 48), (56, 96), (60, -32), (94, -3), (224, -144), (698, -32), (700, -112), (1219, 48), (1251, -7)]

def reductionPivot1678 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 3, 1], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound1678 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode951).moment H =
      Integer.Sparse.eval reductionProjection1678 (momentVector H) := by
  have heq : reductionPivot1678 = (fun u v => (normalNode951).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode951).moment H = injectiveMoment H reductionPivot1678 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode951).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1678 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1678 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1678 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection810, reductionProjection160, reductionProjection1677, reductionProjection1222] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1678 (0 : Fin 4)) = canonicalInput5896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1678 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection810 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1678 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5896 hH))).trans (oldProjectionSound810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1678 (1 : Fin 4)) = canonicalInput2250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1678 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection160 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1678 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2250 hH))).trans (reductionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1678 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code224).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1678 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1677 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1678 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1678 (3 : Fin 4)) = canonicalInput2229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1678 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1222 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1678 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2229 hH))).trans (reductionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode951).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1678 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode951).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1678 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 9] ![2, 4, 288, 32] reductionProjection1678 ![oldProjection810, reductionProjection160, reductionProjection1677, reductionProjection1222]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1679 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -5), (36, -180), (56, -480), (60, 160), (94, 5), (223, 180), (224, 360), (698, 160), (700, 600), (1052, -120), (1059, 80), (1219, -240), (1251, 15)]

def reductionPivot1679 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 3, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound1679 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode949).moment H =
      Integer.Sparse.eval reductionProjection1679 (momentVector H) := by
  have heq : reductionPivot1679 = (fun u v => (normalNode949).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode949).moment H = injectiveMoment H reductionPivot1679 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode949).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1679 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1679 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1679 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2430, reductionProjection841, reductionProjection1676, reductionProjection1678, reductionProjection1678] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1679 (0 : Fin 5)) = canonicalInput5894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2430 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2430 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5894 hH))).trans (oldProjectionSound2430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1679 (1 : Fin 5)) = canonicalInput2248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2248 hH))).trans (reductionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1679 (2 : Fin 5)) = canonicalInput2227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1676 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2227 hH))).trans (reductionSound1676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1679 (3 : Fin 5)) = canonicalInput2225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1678 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2225 hH))).trans (reductionSound1678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1679 (4 : Fin 5)) = (normalNode951).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1678 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1679 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode949).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1679 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode949).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1679 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 18, 288, 288] ![1, 1, 80, 5, 5] reductionProjection1679 ![oldProjection2430, reductionProjection841, reductionProjection1676, reductionProjection1678, reductionProjection1678]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1680 : Integer.Sparse (Fin 1613) := [(0, -6), (36, -240), (56, -960), (60, 160), (94, 25), (201, 720), (223, 720), (238, -240), (241, 80), (462, 2160), (695, -720), (697, -960), (698, 960), (700, 1360), (1050, -240), (1052, -720), (1058, -480), (1059, 560), (1251, -85)]

def reductionPivot1680 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 0, -2]]

theorem reductionSound1680 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode952).moment H =
      Integer.Sparse.eval reductionProjection1680 (momentVector H) := by
  have heq : reductionPivot1680 = (fun u v => (normalNode952).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode952).moment H = injectiveMoment H reductionPivot1680 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode952).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1680 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1680 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 18, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1680 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1514, reductionProjection1676, reductionProjection1133, reductionProjection1133, oldProjection1509] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1680 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1514⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1514 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1680 (1 : Fin 5)) = (normalNode950).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1676 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1680 (2 : Fin 5)) = canonicalInput2232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1133 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1133 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2232 hH))).trans (reductionSound1133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1680 (3 : Fin 5)) = canonicalInput2236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1133 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1133 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2236 hH))).trans (reductionSound1133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1680 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1334 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1509 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1680 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1334 hH))).trans (oldProjectionSound1509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode952).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1680 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode952).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1680 (j : Fin 5)))
      1 1440 1440 1 ![720, 18, 1440, 1440, 1440] ![2, 80, 1, 1, 1] reductionProjection1680 ![oldProjection1514, reductionProjection1676, reductionProjection1133, reductionProjection1133, oldProjection1509]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1681 : Integer.Sparse (Fin 1613) := [(0, -17), (36, -240), (56, -960), (60, 160), (94, 80), (205, 720), (224, 720), (238, -240), (247, 80), (486, 2160), (695, -720), (697, -960), (698, 1360), (700, 1360), (1055, -240), (1058, -480), (1059, 880), (1219, -720), (1227, 320), (1251, -95)]

def reductionPivot1681 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 3, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound1681 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode953).moment H =
      Integer.Sparse.eval reductionProjection1681 (momentVector H) := by
  have heq : reductionPivot1681 = (fun u v => (normalNode953).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode953).moment H = injectiveMoment H reductionPivot1681 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode953).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1681 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1681 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1681 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1516, reductionProjection1678, reductionProjection1296, reductionProjection1296, reductionProjection1087] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1681 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1516⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1516 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1681 (1 : Fin 5)) = (normalNode951).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1678 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1681 (2 : Fin 5)) = canonicalInput2234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1296 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2234 hH))).trans (reductionSound1296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1681 (3 : Fin 5)) = canonicalInput2237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1296 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2237 hH))).trans (reductionSound1296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1681 (4 : Fin 5)) = canonicalInput2238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1087 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1681 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2238 hH))).trans (reductionSound1087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode953).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1681 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode953).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1681 (j : Fin 5)))
      1 1440 1440 1 ![360, 288, 1440, 1440, 1440] ![4, 5, 1, 1, 1] reductionProjection1681 ![oldProjection1516, reductionProjection1678, reductionProjection1296, reductionProjection1296, reductionProjection1087]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1682 : Integer.Sparse (Fin 1613) := [(7, -3), (36, -3), (42, 1), (44, 1), (60, 1)]

def reductionPivot1682 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -3, 3, 0], ![-2, 3, 1, -2], ![3, 0, -4, 1]]

theorem reductionSound1682 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9841).moment H =
      Integer.Sparse.eval reductionProjection1682 (momentVector H) := by
  have heq : reductionPivot1682 = (fun u v => (normalNode9841).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9841).moment H = injectiveMoment H reductionPivot1682 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9841).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9841).entries)).symm
  have hshape : reductionPivot1682 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1682 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1682 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection15, reductionProjection18, reductionProjection17] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1682 (0 : Fin 3)) = canonicalInput12793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1682 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection15 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1682 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection15 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12793 hH))).trans (reductionSound15 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1682 (1 : Fin 3)) = canonicalInput23907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1682 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection18 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1682 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection18 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23907 hH))).trans (reductionSound18 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1682 (2 : Fin 3)) = canonicalInput23909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1682 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection17 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1682 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection17 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23909 hH))).trans (reductionSound17 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9841).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1682 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9841).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1682 (j : Fin 3)))
      3 9 9 3 ![1, 3, 1] ![9, 3, 9] reductionProjection1682 ![reductionProjection15, reductionProjection18, reductionProjection17]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1683 : Integer.Sparse (Fin 1613) := [(284, 1)]

theorem reductionSound1683 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code284).moment H =
      Integer.Sparse.eval reductionProjection1683 (momentVector H) := by
  have hc : coordinates (284 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code284) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1683, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1684 : Integer.Sparse (Fin 1613) := [(7, 3), (36, 3), (42, -1), (44, -1), (60, -1), (229, 3), (238, 3), (243, -1), (244, -1), (284, -9), (683, 3), (695, 3), (700, -3), (701, -1)]

def reductionPivot1684 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 3, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 3, 0, -4]]

theorem reductionSound1684 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode955).moment H =
      Integer.Sparse.eval reductionProjection1684 (momentVector H) := by
  have heq : reductionPivot1684 = (fun u v => (normalNode955).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode955).moment H = injectiveMoment H reductionPivot1684 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode955).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1684 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1684 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1684 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1192, reductionProjection1682, reductionProjection1683, reductionProjection1219] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1684 (0 : Fin 4)) = canonicalInput1888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1684 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1192 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1684 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1888 hH))).trans (oldProjectionSound1192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1684 (1 : Fin 4)) = canonicalInput2228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1684 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1682 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1684 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2228 hH))).trans (reductionSound1682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1684 (2 : Fin 4)) = canonicalInput2243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1684 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1683 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1684 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2243 hH))).trans (reductionSound1683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1684 (3 : Fin 4)) = canonicalInput2244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1684 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1219 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1684 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2244 hH))).trans (reductionSound1219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode955).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1684 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode955).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1684 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection1684 ![oldProjection1192, reductionProjection1682, reductionProjection1683, reductionProjection1219]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1685 : Integer.Sparse (Fin 1613) := [(7, -1), (229, -1), (683, -1)]

def reductionPivot1685 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 1, 2], ![-1, 2, 2, -3], ![4, -1, -3, 0]]

theorem reductionSound1685 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6450).moment H =
      Integer.Sparse.eval reductionProjection1685 (momentVector H) := by
  have heq : reductionPivot1685 = (fun u v => (normalNode6450).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6450).moment H = injectiveMoment H reductionPivot1685 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6450).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6450).entries)).symm
  have hshape : reductionPivot1685 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1685 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1685 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection15, oldProjection135, oldProjection160] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1685 (0 : Fin 3)) = canonicalInput237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1685 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection15 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1685 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection15 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound237 hH))).trans (reductionSound15 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1685 (1 : Fin 3)) = canonicalInput4647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1685 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection135 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1685 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection135 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4647 hH))).trans (oldProjectionSound135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1685 (2 : Fin 3)) = canonicalInput4663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1685 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection160 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1685 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4663 hH))).trans (oldProjectionSound160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6450).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1685 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6450).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1685 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1685 ![reductionProjection15, oldProjection135, oldProjection160]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1686 : Integer.Sparse (Fin 1613) := [(7, 48), (19, 4), (20, -2), (94, -3), (229, 96), (284, -144), (683, 96), (704, -16), (1251, -1), (1321, 96), (1323, 48)]

def reductionPivot1686 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 3, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 3, 0, -4]]

theorem reductionSound1686 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode956).moment H =
      Integer.Sparse.eval reductionProjection1686 (momentVector H) := by
  have heq : reductionPivot1686 = (fun u v => (normalNode956).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode956).moment H = injectiveMoment H reductionPivot1686 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode956).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1686 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1686 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1686 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1504, reductionProjection1683, reductionProjection1685, reductionProjection1074] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1686 (0 : Fin 4)) = canonicalInput1929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1686 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1686 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1929 hH))).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1686 (1 : Fin 4)) = canonicalInput2243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1686 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1683 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1686 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2243 hH))).trans (reductionSound1683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1686 (2 : Fin 4)) = canonicalInput2245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1686 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1685 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1686 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2245 hH))).trans (reductionSound1685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1686 (3 : Fin 4)) = canonicalInput2246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1686 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1074 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1686 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2246 hH))).trans (reductionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode956).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1686 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode956).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1686 (j : Fin 4)))
      2 288 288 2 ![144, 1, 3, 3] ![2, 288, 96, 96] reductionProjection1686 ![reductionProjection1504, reductionProjection1683, reductionProjection1685, reductionProjection1074]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1687 : Integer.Sparse (Fin 1613) := [(226, 1)]

theorem reductionSound1687 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code226).moment H =
      Integer.Sparse.eval reductionProjection1687 (momentVector H) := by
  have hc : coordinates (226 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code226) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1687, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1688 : Integer.Sparse (Fin 1613) := [(225, 1)]

theorem reductionSound1688 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code225).moment H =
      Integer.Sparse.eval reductionProjection1688 (momentVector H) := by
  have hc : coordinates (225 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code225) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1688, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1689 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (108, 16), (225, -48), (226, -48), (247, 16), (1251, 1), (1319, -48)]

def reductionPivot1689 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, -2, 4], ![-1, -1, 2], ![1, 1, -2], ![2, 1, -3]]

theorem reductionSound1689 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode957).moment H =
      Integer.Sparse.eval reductionProjection1689 (momentVector H) := by
  have heq : reductionPivot1689 = (fun u v => (normalNode957).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode957).moment H = injectiveMoment H reductionPivot1689 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode957).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1689 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1689 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 48, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1689 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection258, oldProjection144, reductionProjection1687, reductionProjection1688] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1689 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2659 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1689 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1689 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2659 hH))).trans (oldProjectionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1689 (1 : Fin 4)) = canonicalInput2265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1689 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection144 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1689 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound2265 hH))).trans (oldProjectionSound144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1689 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code226).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1689 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1687 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1689 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1689 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code225).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1689 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1689 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode957).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1689 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode957).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1689 (j : Fin 4)))
      2 96 96 2 ![1, 48, 1, 1] ![96, 2, 96, 96] reductionProjection1689 ![oldProjection258, oldProjection144, reductionProjection1687, reductionProjection1688]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1690 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 40), (19, 120), (20, -10), (21, -80), (94, -55), (99, -80), (104, -240), (108, -480), (225, 240), (226, 240), (241, -160), (247, -240), (1251, -35), (1319, 240)]

def reductionPivot1690 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, -2, 4], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![2, 1, -3]]

theorem reductionSound1690 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode958).moment H =
      Integer.Sparse.eval reductionProjection1690 (momentVector H) := by
  have heq : reductionPivot1690 = (fun u v => (normalNode958).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode958).moment H = injectiveMoment H reductionPivot1690 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode958).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1690 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1690 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 96, 96, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1690 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection107, reductionProjection1689, oldProjection418, oldProjection429, oldProjection433] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1690 (0 : Fin 5)) = (normalNode46).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection107 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1690 (1 : Fin 5)) = (normalNode957).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1689 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1689 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1690 (2 : Fin 5)) = canonicalInput2275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection418 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound2275 hH))).trans (oldProjectionSound418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1690 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node429⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection429 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection429 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1690 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node433⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection433 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1690 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection433 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode958).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1690 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode958).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1690 (j : Fin 5)))
      1 480 480 1 ![96, 96, 96, 96, 240] ![5, 5, 5, 5, 2] reductionProjection1690 ![reductionProjection107, reductionProjection1689, oldProjection418, oldProjection429, oldProjection433]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1691 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 100), (19, 140), (20, -55), (94, -70), (104, -160), (105, -80), (108, -160), (241, -160), (243, -160), (247, -160), (704, -160), (1251, -50)]

def reductionPivot1691 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, -2, 4], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![2, 1, -3]]

theorem reductionSound1691 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode959).moment H =
      Integer.Sparse.eval reductionProjection1691 (momentVector H) := by
  have heq : reductionPivot1691 = (fun u v => (normalNode959).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode959).moment H = injectiveMoment H reductionPivot1691 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode959).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1691 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1691 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 96, 96, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1691 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection297, reductionProjection38, reductionProjection38, oldProjection429, oldProjection440] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1691 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node297⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection297 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection297 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1691 (1 : Fin 5)) = (normalNode969).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection38 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection38 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound38 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1691 (2 : Fin 5)) = canonicalInput2295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection38 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection38 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound2295 hH))).trans (reductionSound38 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1691 (3 : Fin 5)) = canonicalInput2296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection429 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection429 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound2296 hH))).trans (oldProjectionSound429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1691 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node440⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection440 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1691 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection440 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode959).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1691 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode959).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1691 (j : Fin 5)))
      1 480 480 1 ![96, 96, 96, 96, 480] ![5, 5, 5, 5, 1] reductionProjection1691 ![oldProjection297, reductionProjection38, reductionProjection38, oldProjection429, oldProjection440]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1692 : Integer.Sparse (Fin 1613) := [(244, -1), (245, -1), (246, -1)]

def reductionPivot1692 : Matrix (Fin 4) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, -2, 4], ![1, 4, -5], ![2, -2, 0]]

theorem reductionSound1692 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode960).moment H =
      Integer.Sparse.eval reductionProjection1692 (momentVector H) := by
  have heq : reductionPivot1692 = (fun u v => (normalNode960).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode960).moment H = injectiveMoment H reductionPivot1692 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode960).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot1692 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1692 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1692 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection121, oldProjection33, oldProjection34] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1692 (0 : Fin 3)) = canonicalInput230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1692 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection121 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1692 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound230 hH))).trans (reductionSound121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1692 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node33⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1692 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection33 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1692 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection33 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound33 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1692 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw1452 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1692 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection34 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1692 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection34 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1452 hH))).trans (oldProjectionSound34 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode960).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1692 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode960).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1692 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1692 ![reductionProjection121, oldProjection33, oldProjection34]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1693 : Integer.Sparse (Fin 1613) := [(227, 1)]

theorem reductionSound1693 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code227).moment H =
      Integer.Sparse.eval reductionProjection1693 (momentVector H) := by
  have hc : coordinates (227 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code227) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1693, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1694 : Integer.Sparse (Fin 1613) := [(3, -4), (20, 2), (94, 3), (227, -48), (243, 16), (246, 16), (703, 16), (704, 16), (1251, 1)]

def reductionPivot1694 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -2, 4], ![0, 1, -1], ![1, -2, 1], ![2, 2, -4]]

theorem reductionSound1694 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode967).moment H =
      Integer.Sparse.eval reductionProjection1694 (momentVector H) := by
  have heq : reductionPivot1694 = (fun u v => (normalNode967).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode967).moment H = injectiveMoment H reductionPivot1694 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode967).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1694 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1694 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 1, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1694 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection82, reductionProjection1693, oldProjection139, oldProjection148] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1694 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node82⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1694 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection82 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1694 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection82 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound82 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1694 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code227).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1694 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1693 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1694 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1694 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1392 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1694 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection139 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1694 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1392 hH))).trans (oldProjectionSound139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1694 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node148⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1694 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection148 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1694 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode967).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1694 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode967).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1694 (j : Fin 4)))
      2 96 96 2 ![48, 1, 48, 48] ![2, 96, 2, 2] reductionProjection1694 ![oldProjection82, reductionProjection1693, oldProjection139, oldProjection148]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1695 : Integer.Sparse (Fin 1613) := [(3, 32), (4, -1), (19, 24), (20, -9), (94, -12), (227, 48), (243, -32), (246, -32), (703, -32), (704, -32), (1251, -8)]

def reductionPivot1695 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, -2, 4], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![2, 2, -4]]

theorem reductionSound1695 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode961).moment H =
      Integer.Sparse.eval reductionProjection1695 (momentVector H) := by
  have heq : reductionPivot1695 = (fun u v => (normalNode961).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode961).moment H = injectiveMoment H reductionPivot1695 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode961).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1695 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1695 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 24, 96, 48, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1695 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection306, oldProjection414, reductionProjection1694, oldProjection139, oldProjection431] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1695 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node306⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection306 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1695 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node414⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection414 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1695 (2 : Fin 5)) = canonicalInput2276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1694 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound2276 hH))).trans (reductionSound1694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1695 (3 : Fin 5)) = canonicalInput2284.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection139 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound2284 hH))).trans (oldProjectionSound139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1695 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node431⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection431 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1695 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode961).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1695 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode961).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1695 (j : Fin 5)))
      1 96 96 1 ![96, 24, 96, 48, 96] ![1, 4, 1, 2, 1] reductionProjection1695 ![oldProjection306, oldProjection414, reductionProjection1694, oldProjection139, oldProjection431]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

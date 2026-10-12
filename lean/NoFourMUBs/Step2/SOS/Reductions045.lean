import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical027
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical029
import NoFourMUBs.Step2.SOS.Canonical030
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical079
import NoFourMUBs.Step2.SOS.Canonical087
import NoFourMUBs.Step2.SOS.Canonical090
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical185
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical216
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions044
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical106
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical67
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical78
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical82
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1440 : Integer.Sparse (Fin 1613) := [(189, 1)]

theorem reductionSound1440 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code189).moment H =
      Integer.Sparse.eval reductionProjection1440 (momentVector H) := by
  have hc : coordinates (189 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code189) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1440, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1441 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -20), (94, 55), (189, -1440), (197, 1440), (201, 720), (206, 720), (221, 720), (241, 80), (546, 720), (638, 720), (698, 240), (911, 720), (1050, -480), (1055, -480), (1058, -480), (1059, 80), (1124, 720), (1250, 180), (1251, -65), (1252, 720), (1253, 720), (1321, -240)]

def reductionPivot1441 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound1441 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode750).moment H =
      Integer.Sparse.eval reductionProjection1441 (momentVector H) := by
  have heq : reductionPivot1441 = (fun u v => (normalNode750).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode750).moment H = injectiveMoment H reductionPivot1441 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode750).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1441 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1441 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1441 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1734, reductionProjection1439, reductionProjection1433, reductionProjection1440, oldProjection2335] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1441 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1734⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1734 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1441 (1 : Fin 5)) = canonicalInput1885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1439 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1439 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1885 hH))).trans (reductionSound1439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1441 (2 : Fin 5)) = (normalNode760).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1433 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1433 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1441 (3 : Fin 5)) = canonicalInput1829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1440 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1440 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1829 hH))).trans (reductionSound1440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1441 (4 : Fin 5)) = canonicalInput1828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2335 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1441 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2335 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1828 hH))).trans (oldProjectionSound2335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode750).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1441 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode750).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1441 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1, 1440] ![1, 1, 1, 1440, 1] reductionProjection1441 ![oldProjection1734, reductionProjection1439, reductionProjection1433, reductionProjection1440, oldProjection2335]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1442 : Integer.Sparse (Fin 1613) := [(628, 1)]

theorem reductionSound1442 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code628).moment H =
      Integer.Sparse.eval reductionProjection1442 (momentVector H) := by
  have hc : coordinates (628 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code628) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1442, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1443 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (82, 240), (94, -35), (228, 240), (229, 240), (238, 240), (240, 240), (241, -160), (243, -80), (247, -160), (628, -720), (698, -80), (1251, -35)]

def reductionPivot1443 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 2, 1, -4]]

theorem reductionSound1443 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode751).moment H =
      Integer.Sparse.eval reductionProjection1443 (momentVector H) := by
  have heq : reductionPivot1443 = (fun u v => (normalNode751).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode751).moment H = injectiveMoment H reductionPivot1443 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode751).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1443 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1443 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1443 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1100, reductionProjection1148, reductionProjection1442, oldProjection1014] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1443 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2172 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1443 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1443 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2172 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1443 (1 : Fin 4)) = canonicalInput1889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1443 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1148 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1443 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1889 hH))).trans (reductionSound1148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1443 (2 : Fin 4)) = canonicalInput1839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1443 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1443 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1839 hH))).trans (reductionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1443 (3 : Fin 4)) = canonicalInput1836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1443 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1443 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1836 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode751).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1443 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode751).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1443 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 144] ![2, 160, 1440, 10] reductionProjection1443 ![oldProjection1100, reductionProjection1148, reductionProjection1442, oldProjection1014]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1444 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (563, -720), (565, -720), (698, -320), (1059, -80), (1221, 240), (1226, -80), (1227, -240), (1251, 70)]

def reductionPivot1444 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound1444 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2559).moment H =
      Integer.Sparse.eval reductionProjection1444 (momentVector H) := by
  have heq : reductionPivot1444 = (fun u v => (normalNode2559).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2559).moment H = injectiveMoment H reductionPivot1444 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2559).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1444 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1444 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1444 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1010, oldProjection838, oldProjection505, reductionProjection1046] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1444 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3420 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1444 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1010 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1444 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3420 hH))).trans (oldProjectionSound1010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1444 (1 : Fin 4)) = canonicalInput5103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1444 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1444 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5103 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1444 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1444 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1444 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1444 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code563).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1444 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1444 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2559).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1444 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2559).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1444 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 1, 1] ![4, 2, 1440, 1440] reductionProjection1444 ![oldProjection1010, oldProjection838, oldProjection505, reductionProjection1046]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1445 : Integer.Sparse (Fin 1613) := [(192, 1)]

theorem reductionSound1445 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code192).moment H =
      Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
  have hc : coordinates (192 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code192) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1445, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1446 : Integer.Sparse (Fin 1613) := [(87, 1), (192, -3), (565, -3), (628, -3), (1055, 1), (1219, 1)]

def reductionPivot1446 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound1446 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode756).moment H =
      Integer.Sparse.eval reductionProjection1446 (momentVector H) := by
  have heq : reductionPivot1446 = (fun u v => (normalNode756).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode756).moment H = injectiveMoment H reductionPivot1446 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode756).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1446 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1446 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1446 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection505, reductionProjection795, reductionProjection1445, reductionProjection1442] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1446 (0 : Fin 4)) = canonicalInput5587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1446 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1446 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5587 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1446 (1 : Fin 4)) = canonicalInput1934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1446 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection795 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1446 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1934 hH))).trans (reductionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1446 (2 : Fin 4)) = canonicalInput1841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1446 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1445 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1446 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1841 hH))).trans (reductionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1446 (3 : Fin 4)) = canonicalInput1839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1446 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1446 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1839 hH))).trans (reductionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode756).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1446 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode756).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1446 (j : Fin 4)))
      2 6 6 2 ![1, 3, 1, 1] ![6, 2, 6, 6] reductionProjection1446 ![oldProjection505, reductionProjection795, reductionProjection1445, reductionProjection1442]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1447 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (192, -720), (563, -720), (697, 240), (1058, 240), (1250, -60), (1251, 10), (1253, -720)]

def reductionPivot1447 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound1447 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode755).moment H =
      Integer.Sparse.eval reductionProjection1447 (momentVector H) := by
  have heq : reductionPivot1447 = (fun u v => (normalNode755).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode755).moment H = injectiveMoment H reductionPivot1447 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode755).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1447 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1447 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1447 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1046, reductionProjection776, reductionProjection1445, reductionProjection1427] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1447 (0 : Fin 4)) = canonicalInput5585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1447 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1447 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5585 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1447 (1 : Fin 4)) = canonicalInput1932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1447 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection776 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1447 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1932 hH))).trans (reductionSound776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1447 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code192).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1447 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1445 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1447 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1447 (3 : Fin 4)) = canonicalInput1838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1447 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1427 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1447 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1838 hH))).trans (reductionSound1427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode755).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1447 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode755).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1447 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection1447 ![reductionProjection1046, reductionProjection776, reductionProjection1445, reductionProjection1427]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1448 : Integer.Sparse (Fin 1613) := [(0, -3), (87, -480), (94, 20), (189, -1440), (192, 1440), (563, 1440), (565, 1440), (628, 720), (697, -480), (698, 560), (1055, -720), (1058, -720), (1059, 80), (1219, -480), (1221, -240), (1226, 160), (1227, 480), (1250, 120), (1251, -145), (1253, 720)]

def reductionPivot1448 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound1448 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode752).moment H =
      Integer.Sparse.eval reductionProjection1448 (momentVector H) := by
  have heq : reductionPivot1448 = (fun u v => (normalNode752).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode752).moment H = injectiveMoment H reductionPivot1448 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode752).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1448 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1448 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 6, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1448 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1444, reductionProjection1386, reductionProjection1440, reductionProjection1446, reductionProjection1447] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1448 (0 : Fin 5)) = canonicalInput5571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1444 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1444 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5571 hH))).trans (reductionSound1444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1448 (1 : Fin 5)) = (normalNode893).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1448 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code189).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1440 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1440 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1448 (3 : Fin 5)) = canonicalInput1825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1446 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1825 hH))).trans (reductionSound1446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1448 (4 : Fin 5)) = (normalNode755).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1447 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1448 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode752).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1448 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode752).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1448 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1, 6, 1440] ![1, 1, 1440, 240, 1] reductionProjection1448 ![reductionProjection1444, reductionProjection1386, reductionProjection1440, reductionProjection1446, reductionProjection1447]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1449 : Integer.Sparse (Fin 1613) := [(190, 1)]

theorem reductionSound1449 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code190).moment H =
      Integer.Sparse.eval reductionProjection1449 (momentVector H) := by
  have hc : coordinates (190 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code190) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1449, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1450 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (190, -720), (553, -720), (697, 240), (1058, 240), (1250, -60), (1251, 10), (1257, -720)]

def reductionPivot1450 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, 1, -2, -1]]

theorem reductionSound1450 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode753).moment H =
      Integer.Sparse.eval reductionProjection1450 (momentVector H) := by
  have heq : reductionPivot1450 = (fun u v => (normalNode753).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode753).moment H = injectiveMoment H reductionPivot1450 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode753).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1450 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1450 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1450 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection503, reductionProjection776, reductionProjection1449, reductionProjection1423] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1450 (0 : Fin 4)) = canonicalInput5574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1450 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1450 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5574 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1450 (1 : Fin 4)) = canonicalInput1921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1450 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection776 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1450 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1921 hH))).trans (reductionSound776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1450 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code190).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1450 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1449 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1450 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1450 (3 : Fin 4)) = canonicalInput1826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1450 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1423 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1450 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1826 hH))).trans (reductionSound1423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode753).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1450 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode753).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1450 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection1450 ![oldProjection503, reductionProjection776, reductionProjection1449, reductionProjection1423]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1451 : Integer.Sparse (Fin 1613) := [(555, 1)]

theorem reductionSound1451 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code555).moment H =
      Integer.Sparse.eval reductionProjection1451 (momentVector H) := by
  have hc : coordinates (555 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code555) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1451, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1452 : Integer.Sparse (Fin 1613) := [(0, 3), (76, 240), (81, 480), (94, -45), (555, -720), (697, 240), (698, -160), (1251, -20)]

def reductionPivot1452 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -3, 1], ![1, 0, 0, -1]]

theorem reductionSound1452 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2574).moment H =
      Integer.Sparse.eval reductionProjection1452 (momentVector H) := by
  have heq : reductionPivot1452 = (fun u v => (normalNode2574).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2574).moment H = injectiveMoment H reductionPivot1452 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2574).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1452 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1452 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1452 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1099, oldProjection823, oldProjection1007, reductionProjection1451] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1452 (0 : Fin 4)) = canonicalInput18218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1452 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1099 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1452 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18218 hH))).trans (oldProjectionSound1099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1452 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2514 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1452 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1452 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2514 hH))).trans (oldProjectionSound823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1452 (2 : Fin 4)) = canonicalInput4906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1452 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1007 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1452 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4906 hH))).trans (oldProjectionSound1007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1452 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code555).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1452 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1452 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2574).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1452 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2574).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1452 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 720, 1] ![10, 2, 2, 1440] reductionProjection1452 ![oldProjection1099, oldProjection823, oldProjection1007, reductionProjection1451]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1453 : Integer.Sparse (Fin 1613) := [(11, -48), (19, -4), (94, 1), (229, -48), (243, 16), (704, 16), (1251, 1)]

def reductionPivot1453 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 2, 1], ![1, 3, -4, 0], ![2, -2, 2, -2]]

theorem reductionSound1453 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6955).moment H =
      Integer.Sparse.eval reductionProjection1453 (momentVector H) := by
  have heq : reductionPivot1453 = (fun u v => (normalNode6955).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6955).moment H = injectiveMoment H reductionPivot1453 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6955).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6955).entries)).symm
  have hshape : reductionPivot1453 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1453 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1453 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection26, oldProjection135, oldProjection132] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1453 (0 : Fin 3)) = canonicalInput347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1453 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection26 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1453 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection26 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound347 hH))).trans (reductionSound26 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1453 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2637 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1453 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection135 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1453 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection135 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2637 hH))).trans (oldProjectionSound135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1453 (2 : Fin 3)) = canonicalInput5769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1453 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection132 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1453 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5769 hH))).trans (oldProjectionSound132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6955).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1453 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6955).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1453 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection1453 ![reductionProjection26, oldProjection135, oldProjection132]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1454 : Integer.Sparse (Fin 1613) := [(567, 1)]

theorem reductionSound1454 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code567).moment H =
      Integer.Sparse.eval reductionProjection1454 (momentVector H) := by
  have hc : coordinates (567 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code567) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1454, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1455 : Integer.Sparse (Fin 1613) := [(11, 48), (19, 12), (20, -2), (94, -7), (229, 96), (240, 48), (243, -32), (567, -144), (704, -32), (1251, -5)]

def reductionPivot1455 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0]]

theorem reductionSound1455 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode761).moment H =
      Integer.Sparse.eval reductionProjection1455 (momentVector H) := by
  have heq : reductionPivot1455 = (fun u v => (normalNode761).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode761).moment H = injectiveMoment H reductionPivot1455 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode761).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1455 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1455 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1455 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1095, reductionProjection1453, oldProjection1014, reductionProjection1454] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1455 (0 : Fin 4)) = canonicalInput13835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1455 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1095 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1455 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13835 hH))).trans (oldProjectionSound1095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1455 (1 : Fin 4)) = canonicalInput2202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1455 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1453 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1455 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2202 hH))).trans (reductionSound1453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1455 (2 : Fin 4)) = canonicalInput1844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1455 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1455 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1844 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1455 (3 : Fin 4)) = canonicalInput1835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1455 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1455 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1835 hH))).trans (reductionSound1454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode761).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1455 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode761).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1455 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection1455 ![oldProjection1095, reductionProjection1453, oldProjection1014, reductionProjection1454]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1456 : Integer.Sparse (Fin 1613) := [(220, 1)]

theorem reductionSound1456 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code220).moment H =
      Integer.Sparse.eval reductionProjection1456 (momentVector H) := by
  have hc : coordinates (220 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code220) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1456, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1457 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, -15), (190, -360), (220, -360), (698, -40), (1249, -360), (1251, -10), (1323, 120)]

def reductionPivot1457 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, 1, -1, -1]]

theorem reductionSound1457 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode758).moment H =
      Integer.Sparse.eval reductionProjection1457 (momentVector H) := by
  have heq : reductionPivot1457 = (fun u v => (normalNode758).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode758).moment H = injectiveMoment H reductionPivot1457 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode758).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1457 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1457 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1457 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1332, reductionProjection1456, oldProjection714, reductionProjection1449] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1457 (0 : Fin 4)) = canonicalInput13833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1457 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1332 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1457 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13833 hH))).trans (oldProjectionSound1332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1457 (1 : Fin 4)) = canonicalInput2200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1457 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1457 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2200 hH))).trans (reductionSound1456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1457 (2 : Fin 4)) = canonicalInput1842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1457 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection714 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1457 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1842 hH))).trans (oldProjectionSound714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1457 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code190).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1457 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1449 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1457 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode758).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1457 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode758).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1457 (j : Fin 4)))
      2 720 720 2 ![360, 1, 1, 1] ![2, 720, 720, 720] reductionProjection1457 ![oldProjection1332, reductionProjection1456, oldProjection714, reductionProjection1449]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1458 : Integer.Sparse (Fin 1613) := [(0, -9), (11, -240), (19, -120), (20, 10), (76, -240), (79, -480), (81, -480), (94, 125), (190, 1440), (220, 1440), (229, -480), (240, -240), (243, 160), (555, 720), (567, 720), (697, -240), (698, 480), (704, 160), (1050, -240), (1052, -240), (1058, -480), (1226, 160), (1249, 1440), (1250, 60), (1251, 60), (1323, -480)]

def reductionPivot1458 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound1458 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode754).moment H =
      Integer.Sparse.eval reductionProjection1458 (momentVector H) := by
  have heq : reductionPivot1458 = (fun u v => (normalNode754).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode754).moment H = injectiveMoment H reductionPivot1458 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode754).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1458 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1458 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1458 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1452, reductionProjection1298, reductionProjection1455, reductionProjection1457, reductionProjection1457] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1458 (0 : Fin 5)) = canonicalInput5577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5577 hH))).trans (reductionSound1452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1458 (1 : Fin 5)) = canonicalInput1925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1298 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1925 hH))).trans (reductionSound1298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1458 (2 : Fin 5)) = (normalNode761).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1455 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1458 (3 : Fin 5)) = canonicalInput1830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1457 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1457 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1830 hH))).trans (reductionSound1457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1458 (4 : Fin 5)) = (normalNode758).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1457 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1458 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1457 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode754).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1458 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode754).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1458 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 720, 720] ![1, 1, 5, 2, 2] reductionProjection1458 ![reductionProjection1452, reductionProjection1298, reductionProjection1455, reductionProjection1457, reductionProjection1457]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1459 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -40), (20, 20), (78, -480), (79, -480), (82, -1200), (93, 60), (94, 35), (238, -960), (240, -240), (241, 560), (243, 320), (247, 160), (583, 720), (691, -240), (692, -240), (698, 480), (1050, -240), (1052, -240), (1057, -480), (1058, -1440), (1223, -1440), (1226, 160), (1250, 180), (1251, -45)]

def reductionPivot1459 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]

theorem reductionSound1459 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode762).moment H =
      Integer.Sparse.eval reductionProjection1459 (momentVector H) := by
  have heq : reductionPivot1459 = (fun u v => (normalNode762).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode762).moment H = injectiveMoment H reductionPivot1459 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode762).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1459 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1459 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 72, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1459 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection510, reductionProjection1438, reductionProjection1279, reductionProjection1279, reductionProjection1298] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1459 (0 : Fin 5)) = (normalNode266).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection510 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1459 (1 : Fin 5)) = (normalNode749).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1438 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1438 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1438 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1459 (2 : Fin 5)) = (normalNode835).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1279 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1459 (3 : Fin 5)) = canonicalInput1909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1279 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1909 hH))).trans (reductionSound1279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1459 (4 : Fin 5)) = (normalNode874).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1298 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1459 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode762).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1459 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode762).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1459 (j : Fin 5)))
      1 1440 1440 1 ![144, 72, 1440, 1440, 1440] ![10, 20, 1, 1, 1] reductionProjection1459 ![reductionProjection510, reductionProjection1438, reductionProjection1279, reductionProjection1279, reductionProjection1298]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1460 : Integer.Sparse (Fin 1613) := [(619, 1)]

theorem reductionSound1460 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code619).moment H =
      Integer.Sparse.eval reductionProjection1460 (momentVector H) := by
  have hc : coordinates (619 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code619) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1460, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1461 : Integer.Sparse (Fin 1613) := [(82, -1), (228, -1), (229, -1)]

def reductionPivot1461 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 2, -1], ![1, 1, -4, 2], ![2, -2, 2, -2]]

theorem reductionSound1461 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7078).moment H =
      Integer.Sparse.eval reductionProjection1461 (momentVector H) := by
  have heq : reductionPivot1461 = (fun u v => (normalNode7078).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7078).moment H = injectiveMoment H reductionPivot1461 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7078).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7078).entries)).symm
  have hshape : reductionPivot1461 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1461 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1461 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection112, oldProjection135, oldProjection134] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1461 (0 : Fin 3)) = canonicalInput773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1461 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection112 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1461 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound773 hH))).trans (oldProjectionSound112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1461 (1 : Fin 3)) = canonicalInput11659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1461 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection135 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1461 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection135 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11659 hH))).trans (oldProjectionSound135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1461 (2 : Fin 3)) = canonicalInput11688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1461 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection134 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1461 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection134 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11688 hH))).trans (oldProjectionSound134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7078).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1461 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7078).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1461 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1461 ![oldProjection112, oldProjection135, oldProjection134]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1462 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (82, 240), (94, -45), (228, 240), (229, 240), (619, -720), (698, -80), (704, -160), (1058, 240), (1223, 240), (1251, -40), (1321, 240)]

def reductionPivot1462 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 1, -4]]

theorem reductionSound1462 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode885).moment H =
      Integer.Sparse.eval reductionProjection1462 (momentVector H) := by
  have heq : reductionPivot1462 = (fun u v => (normalNode885).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode885).moment H = injectiveMoment H reductionPivot1462 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode885).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1462 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1462 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1462 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1018, reductionProjection1460, reductionProjection1461, oldProjection1073] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1462 (0 : Fin 4)) = canonicalInput1677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1462 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1018 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1462 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1677 hH))).trans (reductionSound1018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1462 (1 : Fin 4)) = canonicalInput2052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1462 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1460 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1462 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2052 hH))).trans (reductionSound1460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1462 (2 : Fin 4)) = canonicalInput2105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1462 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1461 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1462 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1461 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2105 hH))).trans (reductionSound1461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1462 (3 : Fin 4)) = canonicalInput2106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1462 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1462 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2106 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode885).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1462 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode885).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1462 (j : Fin 4)))
      2 1440 1440 2 ![72, 1, 3, 720] ![20, 1440, 480, 2] reductionProjection1462 ![reductionProjection1018, reductionProjection1460, reductionProjection1461, oldProjection1073]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1463 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -140), (20, 20), (82, -960), (85, -480), (87, -480), (93, 60), (94, 70), (228, -480), (229, -480), (238, -480), (240, -240), (241, 240), (243, 240), (247, 160), (619, 720), (628, 720), (698, 400), (704, 160), (1047, -240), (1055, -240), (1057, -240), (1058, -1200), (1060, -240), (1214, -240), (1219, -240), (1223, -960), (1225, 80), (1226, 240), (1227, 160), (1250, 120), (1251, 25), (1321, -240)]

def reductionPivot1463 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]

theorem reductionSound1463 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode763).moment H =
      Integer.Sparse.eval reductionProjection1463 (momentVector H) := by
  have heq : reductionPivot1463 = (fun u v => (normalNode763).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode763).moment H = injectiveMoment H reductionPivot1463 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode763).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1463 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1463 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1463 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection533, reductionProjection1443, reductionProjection1279, reductionProjection1462, reductionProjection1300] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1463 (0 : Fin 5)) = (normalNode269).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection533 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection533 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound533 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1463 (1 : Fin 5)) = (normalNode751).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1443 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1463 (2 : Fin 5)) = canonicalInput1897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1279 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1897 hH))).trans (reductionSound1279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1463 (3 : Fin 5)) = (normalNode885).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1462 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1462 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1463 (4 : Fin 5)) = (normalNode887).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1300 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1463 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode763).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1463 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode763).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1463 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 1440, 72] ![5, 1, 1, 1, 20] reductionProjection1463 ![reductionProjection533, reductionProjection1443, reductionProjection1279, reductionProjection1462, reductionProjection1300]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1464 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -10), (697, 80), (1058, 80), (1250, -20), (1251, 5)]

def reductionPivot1464 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2]]

theorem reductionSound1464 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode849).moment H =
      Integer.Sparse.eval reductionProjection1464 (momentVector H) := by
  have heq : reductionPivot1464 = (fun u v => (normalNode849).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode849).moment H = injectiveMoment H reductionPivot1464 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode849).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1464 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1464 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1464 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1222, oldProjection279, reductionProjection776, oldProjection1253] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1464 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1211 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1464 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1464 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1211 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1464 (1 : Fin 4)) = canonicalInput1943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1464 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection279 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1464 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1943 hH))).trans (oldProjectionSound279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1464 (2 : Fin 4)) = canonicalInput1971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1464 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection776 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1464 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1971 hH))).trans (reductionSound776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1464 (3 : Fin 4)) = canonicalInput1978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1464 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1464 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1978 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode849).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1464 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode849).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1464 (j : Fin 4)))
      2 480 1440 6 ![720, 240, 720, 720] ![2, 6, 2, 2] reductionProjection1464 ![oldProjection1222, oldProjection279, reductionProjection776, oldProjection1253]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1465 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -60), (37, -240), (55, -240), (79, -240), (93, 60), (94, 45), (190, 720), (240, -240), (553, 720), (690, -480), (696, -480), (697, -720), (698, 240), (1050, -480), (1052, -240), (1058, -720), (1059, 160), (1226, 80), (1250, 180), (1251, -20), (1257, 720)]

def reductionPivot1465 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 1, -2, -1]]

theorem reductionSound1465 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode764).moment H =
      Integer.Sparse.eval reductionProjection1465 (momentVector H) := by
  have heq : reductionPivot1465 = (fun u v => (normalNode764).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode764).moment H = injectiveMoment H reductionPivot1465 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode764).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1465 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1465 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 480, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1465 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection537, reductionProjection1450, reductionProjection776, reductionProjection1464, oldProjection1522] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1465 (0 : Fin 5)) = (normalNode272).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection537 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection537 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1465 (1 : Fin 5)) = (normalNode753).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1465 (2 : Fin 5)) = canonicalInput1900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection776 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1900 hH))).trans (reductionSound776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1465 (3 : Fin 5)) = canonicalInput1915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1464 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1915 hH))).trans (reductionSound1464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1465 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1522⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1522 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1465 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1522 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode764).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1465 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode764).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1465 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 480, 1440] ![1, 1, 2, 3, 1] reductionProjection1465 ![reductionProjection537, reductionProjection1450, reductionProjection776, reductionProjection1464, oldProjection1522]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1466 : Integer.Sparse (Fin 1613) := [(570, 1)]

theorem reductionSound1466 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code570).moment H =
      Integer.Sparse.eval reductionProjection1466 (momentVector H) := by
  have hc : coordinates (570 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code570) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1466, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1467 : Integer.Sparse (Fin 1613) := [(11, 48), (19, 12), (20, -4), (72, 48), (94, 1), (229, 48), (243, -16), (570, -144), (704, -32), (1040, 48), (1251, -3), (1321, 48)]

def reductionPivot1467 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 3, 1, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound1467 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode906).moment H =
      Integer.Sparse.eval reductionProjection1467 (momentVector H) := by
  have heq : reductionPivot1467 = (fun u v => (normalNode906).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode906).moment H = injectiveMoment H reductionPivot1467 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode906).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1467 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1467 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1467 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1019, oldProjection1012, reductionProjection1453, reductionProjection1466] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1467 (0 : Fin 4)) = canonicalInput1756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1467 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1019 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1467 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1756 hH))).trans (oldProjectionSound1019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1467 (1 : Fin 4)) = canonicalInput2192.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1467 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1467 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2192 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1467 (2 : Fin 4)) = canonicalInput2194.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1467 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1453 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1467 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2194 hH))).trans (reductionSound1453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1467 (3 : Fin 4)) = canonicalInput2195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1467 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1467 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2195 hH))).trans (reductionSound1466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode906).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1467 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode906).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1467 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection1467 ![oldProjection1019, oldProjection1012, reductionProjection1453, reductionProjection1466]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1468 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -10), (11, -360), (19, -110), (20, 15), (72, -240), (79, -240), (83, -240), (93, 30), (94, -10), (229, -480), (240, -120), (243, 240), (567, 360), (570, 720), (698, 80), (704, 240), (1040, -240), (1044, -120), (1045, -120), (1050, -120), (1052, -120), (1058, -240), (1060, -240), (1225, 80), (1226, 80), (1250, 30), (1251, 20), (1321, -240)]

def reductionPivot1468 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound1468 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode765).moment H =
      Integer.Sparse.eval reductionProjection1468 (momentVector H) := by
  have heq : reductionPivot1468 = (fun u v => (normalNode765).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode765).moment H = injectiveMoment H reductionPivot1468 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode765).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1468 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1468 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1468 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection540, reductionProjection1455, reductionProjection1298, reductionProjection1467, reductionProjection1467] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1468 (0 : Fin 5)) = (normalNode274).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection540 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1468 (1 : Fin 5)) = (normalNode761).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1455 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1468 (2 : Fin 5)) = canonicalInput1925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1298 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1925 hH))).trans (reductionSound1298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1468 (3 : Fin 5)) = (normalNode906).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1467 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1468 (4 : Fin 5)) = canonicalInput1928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1467 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1468 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1928 hH))).trans (reductionSound1467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode765).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1468 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode765).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1468 (j : Fin 5)))
      1 720 1440 2 ![144, 288, 1440, 288, 288] ![10, 5, 1, 5, 5] reductionProjection1468 ![reductionProjection540, reductionProjection1455, reductionProjection1298, reductionProjection1467, reductionProjection1467]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1469 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -44), (93, 60), (94, 28), (241, 16), (690, -96), (691, -48), (694, -96), (697, -96), (698, 16), (1050, -96), (1055, -96), (1058, -96), (1250, 72), (1251, -3)]

def reductionPivot1469 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, -1, -2]]

theorem reductionSound1469 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode766).moment H =
      Integer.Sparse.eval reductionProjection1469 (momentVector H) := by
  have heq : reductionPivot1469 = (fun u v => (normalNode766).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode766).moment H = injectiveMoment H reductionPivot1469 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode766).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1469 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1469 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 480, 480, 480, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1469 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection541, oldProjection2340, reductionProjection1464, reductionProjection1464, oldProjection1521] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1469 (0 : Fin 5)) = (normalNode275).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection541 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1469 (1 : Fin 5)) = canonicalInput1854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2340 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1854 hH))).trans (oldProjectionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1469 (2 : Fin 5)) = canonicalInput1955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1464 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1955 hH))).trans (reductionSound1464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1469 (3 : Fin 5)) = canonicalInput1972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1464 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1972 hH))).trans (reductionSound1464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1469 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1301 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1521 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1469 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1301 hH))).trans (oldProjectionSound1521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode766).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1469 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode766).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1469 (j : Fin 5)))
      1 288 1440 5 ![1440, 480, 480, 480, 1440] ![1, 3, 3, 3, 1] reductionProjection1469 ![reductionProjection541, oldProjection2340, reductionProjection1464, reductionProjection1464, oldProjection1521]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1470 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 16), (20, -1), (94, -16), (1250, -60), (1251, 11), (1321, 48), (1389, 48)]

def reductionPivot1470 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound1470 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5790).moment H =
      Integer.Sparse.eval reductionProjection1470 (momentVector H) := by
  have heq : reductionPivot1470 = (fun u v => (normalNode5790).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5790).moment H = injectiveMoment H reductionPivot1470 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5790).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1470 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1470 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1470 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1216, oldProjection1253, oldProjection1253, oldProjection1331] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1470 (0 : Fin 4)) = canonicalInput9921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1470 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1216 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1470 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9921 hH))).trans (oldProjectionSound1216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1470 (1 : Fin 4)) = canonicalInput11872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1470 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1470 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11872 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1470 (2 : Fin 4)) = canonicalInput11932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1470 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1470 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11932 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1470 (3 : Fin 4)) = canonicalInput11934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1470 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1470 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11934 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5790).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1470 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5790).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1470 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 720, 720] ![2, 2, 2, 2] reductionProjection1470 ![oldProjection1216, oldProjection1253, oldProjection1253, oldProjection1331]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1471 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -44), (20, 3), (93, 48), (94, 34), (247, 16), (694, -96), (697, -96), (698, 16), (699, -48), (1055, -96), (1058, -96), (1227, 16), (1250, 120), (1251, -28), (1319, -144), (1321, -96), (1388, -96), (1389, -96)]

def reductionPivot1471 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]

theorem reductionSound1471 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode767).moment H =
      Integer.Sparse.eval reductionProjection1471 (momentVector H) := by
  have heq : reductionPivot1471 = (fun u v => (normalNode767).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode767).moment H = injectiveMoment H reductionPivot1471 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode767).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1471 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1471 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 480, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1471 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection543, oldProjection2342, reductionProjection1464, reductionProjection1470, oldProjection1520] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1471 (0 : Fin 5)) = (normalNode278).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection543 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1471 (1 : Fin 5)) = canonicalInput1855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2342 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1855 hH))).trans (oldProjectionSound2342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1471 (2 : Fin 5)) = canonicalInput1956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1464 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1956 hH))).trans (reductionSound1464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1471 (3 : Fin 5)) = canonicalInput1974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1470 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1974 hH))).trans (reductionSound1470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1471 (4 : Fin 5)) = canonicalInput1977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1520 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1471 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1977 hH))).trans (oldProjectionSound1520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode767).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1471 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode767).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1471 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 480, 288, 288] ![1, 1, 3, 5, 5] reductionProjection1471 ![reductionProjection543, oldProjection2342, reductionProjection1464, reductionProjection1470, oldProjection1520]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

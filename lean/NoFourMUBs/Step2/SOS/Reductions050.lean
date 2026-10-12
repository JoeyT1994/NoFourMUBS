import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical024
import NoFourMUBs.Step2.SOS.Canonical025
import NoFourMUBs.Step2.SOS.Canonical026
import NoFourMUBs.Step2.SOS.Canonical030
import NoFourMUBs.Step2.SOS.Canonical031
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical035
import NoFourMUBs.Step2.SOS.Canonical080
import NoFourMUBs.Step2.SOS.Canonical088
import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical135
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions049
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical116
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1600 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -10), (56, -120), (79, -240), (82, -120), (90, 40), (94, 25), (169, 360), (206, 360), (241, 80), (638, 360), (697, -240), (698, 360), (700, 120), (1050, -360), (1052, -360), (1055, -120), (1058, -360), (1059, 160), (1223, -120), (1226, 80), (1250, 60), (1251, -30)]

def reductionPivot1600 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, 0, 0, -2]]

theorem reductionSound1600 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode843).moment H =
      Integer.Sparse.eval reductionProjection1600 (momentVector H) := by
  have heq : reductionPivot1600 = (fun u v => (normalNode843).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode843).moment H = injectiveMoment H reductionPivot1600 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode843).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1600 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1600 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1600 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1501, oldProjection831, reductionProjection1599, oldProjection1522, oldProjection1519] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1600 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1501⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1501 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1600 (1 : Fin 5)) = canonicalInput1937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1937 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1600 (2 : Fin 5)) = (normalNode909).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1599 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1600 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1298 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1522 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1522 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1298 hH))).trans (oldProjectionSound1522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1600 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1299 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1519 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1600 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1299 hH))).trans (oldProjectionSound1519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode843).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1600 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode843).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1600 (j : Fin 5)))
      1 720 1440 2 ![720, 720, 1440, 1440, 1440] ![2, 2, 1, 1, 1] reductionProjection1600 ![oldProjection1501, oldProjection831, reductionProjection1599, oldProjection1522, oldProjection1519]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1601 : Integer.Sparse (Fin 1613) := [(15, 3), (56, 3), (82, 6), (87, 6), (88, -1), (89, 3), (90, -2), (243, -1), (698, -3), (1058, 3), (1226, -4), (1227, -1)]

def reductionPivot1601 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -3, 1]]

theorem reductionSound1601 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode894).moment H =
      Integer.Sparse.eval reductionProjection1601 (momentVector H) := by
  have heq : reductionPivot1601 = (fun u v => (normalNode894).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode894).moment H = injectiveMoment H reductionPivot1601 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode894).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1601 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1601 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1601 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection819, reductionProjection1167, reductionProjection513, reductionProjection1518] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1601 (0 : Fin 4)) = canonicalInput1699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1601 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection819 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1601 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1699 hH))).trans (reductionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1601 (1 : Fin 4)) = canonicalInput2111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1601 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1167 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1601 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2111 hH))).trans (reductionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1601 (2 : Fin 4)) = canonicalInput2135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1601 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1601 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2135 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1601 (3 : Fin 4)) = canonicalInput2136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1601 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1518 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1601 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2136 hH))).trans (reductionSound1518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode894).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1601 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode894).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1601 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection1601 ![reductionProjection819, reductionProjection1167, reductionProjection513, reductionProjection1518]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1602 : Integer.Sparse (Fin 1613) := [(87, 6), (179, -9), (216, -9), (698, -2), (1058, 6), (1226, -2), (1227, -2)]

def reductionPivot1602 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound1602 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode899).moment H =
      Integer.Sparse.eval reductionProjection1602 (momentVector H) := by
  have heq : reductionPivot1602 = (fun u v => (normalNode899).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode899).moment H = injectiveMoment H reductionPivot1602 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode899).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1602 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1602 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1602 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection818, reductionProjection513, reductionProjection513, reductionProjection1554] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1602 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code179).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1602 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection818 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1602 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1602 (1 : Fin 4)) = canonicalInput2135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1602 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1602 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2135 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1602 (2 : Fin 4)) = canonicalInput2152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1602 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1602 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2152 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1602 (3 : Fin 4)) = canonicalInput2153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1602 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1554 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1602 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1554 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2153 hH))).trans (reductionSound1554 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode899).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1602 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode899).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1602 (j : Fin 4)))
      2 18 18 2 ![1, 9, 9, 1] ![18, 2, 2, 18] reductionProjection1602 ![reductionProjection818, reductionProjection513, reductionProjection513, reductionProjection1554]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1603 : Integer.Sparse (Fin 1613) := [(0, -1), (15, -120), (19, -10), (56, -120), (82, -240), (87, -480), (88, 40), (89, -240), (90, 80), (179, 360), (216, 360), (243, 80), (697, -120), (698, 360), (704, 40), (1055, -240), (1058, -480), (1219, -360), (1223, -240), (1226, 280), (1227, 240), (1250, 30), (1251, -35)]

def reductionPivot1603 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound1603 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode844).moment H =
      Integer.Sparse.eval reductionProjection1603 (momentVector H) := by
  have heq : reductionPivot1603 = (fun u v => (normalNode844).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode844).moment H = injectiveMoment H reductionPivot1603 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode844).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1603 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1603 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 9, 18, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1603 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection805, reductionProjection513, reductionProjection1601, reductionProjection1602, reductionProjection1386] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1603 (0 : Fin 5)) = (normalNode656).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection805 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1603 (1 : Fin 5)) = canonicalInput1938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection513 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1938 hH))).trans (reductionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1603 (2 : Fin 5)) = canonicalInput1964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1601 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1964 hH))).trans (reductionSound1601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1603 (3 : Fin 5)) = canonicalInput1968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1602 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1968 hH))).trans (reductionSound1602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1603 (4 : Fin 5)) = canonicalInput1969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1603 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1969 hH))).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode844).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1603 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode844).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1603 (j : Fin 5)))
      1 720 1440 2 ![1440, 9, 18, 18, 1440] ![1, 160, 80, 80, 1] reductionProjection1603 ![reductionProjection805, reductionProjection513, reductionProjection1601, reductionProjection1602, reductionProjection1386]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1604 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (56, -240), (82, -240), (87, -480), (90, 80), (94, 65), (174, 720), (211, 720), (247, 160), (616, 720), (697, -480), (698, 560), (700, 80), (1055, -720), (1058, -720), (1219, -720), (1223, -240), (1226, 240), (1227, 400), (1250, 120), (1251, -70), (1388, -240)]

def reductionPivot1604 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound1604 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode845).moment H =
      Integer.Sparse.eval reductionProjection1604 (momentVector H) := by
  have heq : reductionPivot1604 = (fun u v => (normalNode845).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode845).moment H = injectiveMoment H reductionPivot1604 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode845).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1604 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1604 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1604 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1502, oldProjection828, reductionProjection1282, reductionProjection1386, reductionProjection1290] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1604 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1502 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1604 (1 : Fin 5)) = canonicalInput1939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1939 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1604 (2 : Fin 5)) = (normalNode910).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1282 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1604 (3 : Fin 5)) = canonicalInput1969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1969 hH))).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1604 (4 : Fin 5)) = canonicalInput1970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1290 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1604 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1970 hH))).trans (reductionSound1290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode845).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1604 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode845).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1604 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 1440, 288] ![1, 2, 1, 1, 5] reductionProjection1604 ![oldProjection1502, oldProjection828, reductionProjection1282, reductionProjection1386, reductionProjection1290]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1605 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -8), (87, -48), (94, 8), (247, 24), (697, -48), (698, 48), (1055, -96), (1058, -96), (1219, -72), (1226, 16), (1227, 48), (1250, 24), (1251, -17), (1388, -48)]

def reductionPivot1605 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound1605 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode847).moment H =
      Integer.Sparse.eval reductionProjection1605 (momentVector H) := by
  have heq : reductionPivot1605 = (fun u v => (normalNode847).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode847).moment H = injectiveMoment H reductionPivot1605 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode847).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1605 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1605 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 720, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1605 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1505, oldProjection1033, reductionProjection1386, reductionProjection1386, reductionProjection1294] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1605 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1505⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1505 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1605 (1 : Fin 5)) = canonicalInput1941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1033 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1033 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1941 hH))).trans (oldProjectionSound1033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1605 (2 : Fin 5)) = canonicalInput1969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1969 hH))).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1605 (3 : Fin 5)) = canonicalInput1975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1975 hH))).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1605 (4 : Fin 5)) = canonicalInput1976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1294 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1605 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1976 hH))).trans (reductionSound1294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode847).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1605 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode847).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1605 (j : Fin 5)))
      1 144 1440 10 ![72, 720, 1440, 1440, 720] ![20, 2, 1, 1, 2] reductionProjection1605 ![oldProjection1505, oldProjection1033, reductionProjection1386, reductionProjection1386, reductionProjection1294]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1606 : Integer.Sparse (Fin 1613) := [(0, 13), (19, -80), (94, 180), (247, 480), (616, 720), (697, -480), (698, 160), (1055, -960), (1058, -480), (1227, 160), (1250, 300), (1251, -85), (1388, -720)]

def reductionPivot1606 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound1606 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode848).moment H =
      Integer.Sparse.eval reductionProjection1606 (momentVector H) := by
  have heq : reductionPivot1606 = (fun u v => (normalNode848).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode848).moment H = injectiveMoment H reductionPivot1606 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode848).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1606 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1606 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 288, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1606 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1506, oldProjection1237, reductionProjection1290, reductionProjection1294, oldProjection1520] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1606 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1506⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1506 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1606 (1 : Fin 5)) = canonicalInput1942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1237 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1942 hH))).trans (oldProjectionSound1237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1606 (2 : Fin 5)) = canonicalInput1970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1290 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1970 hH))).trans (reductionSound1290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1606 (3 : Fin 5)) = canonicalInput1976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1294 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1976 hH))).trans (reductionSound1294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1606 (4 : Fin 5)) = canonicalInput1977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1520 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1606 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1977 hH))).trans (oldProjectionSound1520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode848).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1606 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode848).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1606 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 288, 720, 288] ![1, 10, 5, 2, 5] reductionProjection1606 ![oldProjection1506, oldProjection1237, reductionProjection1290, reductionProjection1294, oldProjection1520]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1607 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 4), (94, -9), (697, 48), (698, -16), (1058, 48), (1250, -36), (1251, 2), (1321, 96), (1323, 48), (1389, 96)]

def reductionPivot1607 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound1607 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode891).moment H =
      Integer.Sparse.eval reductionProjection1607 (momentVector H) := by
  have heq : reductionPivot1607 = (fun u v => (normalNode891).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode891).moment H = injectiveMoment H reductionPivot1607 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode891).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1607 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1607 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1607 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection983, oldProjection1331, oldProjection1253, oldProjection1073] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1607 (0 : Fin 4)) = canonicalInput1696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1607 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection983 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1607 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1696 hH))).trans (oldProjectionSound983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1607 (1 : Fin 4)) = canonicalInput2108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1607 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1607 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2108 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1607 (2 : Fin 4)) = canonicalInput2131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1607 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1607 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2131 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1607 (3 : Fin 4)) = canonicalInput2132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1607 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1607 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2132 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode891).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1607 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode891).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1607 (j : Fin 4)))
      2 288 1440 10 ![3, 720, 720, 720] ![480, 2, 2, 2] reductionProjection1607 ![oldProjection983, oldProjection1331, oldProjection1253, oldProjection1073]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1608 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 480), (94, -5), (218, -720), (229, 240), (683, 240), (697, 240), (1058, 240), (1250, -60), (1251, 10), (1321, 240), (1389, 240)]

def reductionPivot1608 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 2, -1, -2]]

theorem reductionSound1608 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode912).moment H =
      Integer.Sparse.eval reductionProjection1608 (momentVector H) := by
  have heq : reductionPivot1608 = (fun u v => (normalNode912).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode912).moment H = injectiveMoment H reductionPivot1608 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode912).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1608 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1608 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1608 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection721, reductionProjection1422, oldProjection1331, oldProjection728] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1608 (0 : Fin 4)) = canonicalInput2252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1608 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection721 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1608 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2252 hH))).trans (reductionSound721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1608 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code218).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1608 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1422 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1608 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1608 (2 : Fin 4)) = canonicalInput2130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1608 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1608 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2130 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1608 (3 : Fin 4)) = canonicalInput2129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1608 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection728 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1608 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2129 hH))).trans (oldProjectionSound728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode912).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1608 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode912).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1608 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 720, 3] ![480, 1440, 2, 480] reductionProjection1608 ![reductionProjection721, reductionProjection1422, oldProjection1331, oldProjection728]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1609 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -28), (20, 3), (81, -96), (94, 31), (218, 144), (229, -48), (683, -48), (697, -96), (698, 48), (704, 16), (1058, -96), (1103, 144), (1143, 144), (1250, 72), (1251, -1), (1321, -144), (1323, -96), (1389, -144)]

def reductionPivot1609 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]

theorem reductionSound1609 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode850).moment H =
      Integer.Sparse.eval reductionProjection1609 (momentVector H) := by
  have heq : reductionPivot1609 = (fun u v => (normalNode850).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode850).moment H = injectiveMoment H reductionPivot1609 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode850).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1609 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1609 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 288, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1609 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1050, oldProjection1331, reductionProjection1607, reductionProjection1608, reductionProjection1475] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1609 (0 : Fin 5)) = canonicalInput1572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1050 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1572 hH))).trans (reductionSound1050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1609 (1 : Fin 5)) = canonicalInput1944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1944 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1609 (2 : Fin 5)) = canonicalInput1973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1607 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1607 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1973 hH))).trans (reductionSound1607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1609 (3 : Fin 5)) = (normalNode912).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1608 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1609 (4 : Fin 5)) = canonicalInput1984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1475 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1609 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1984 hH))).trans (reductionSound1475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode850).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1609 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode850).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1609 (j : Fin 5)))
      1 288 1440 5 ![288, 720, 288, 1440, 720] ![5, 2, 5, 1, 2] reductionProjection1609 ![reductionProjection1050, oldProjection1331, reductionProjection1607, reductionProjection1608, reductionProjection1475]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1610 : Integer.Sparse (Fin 1613) := [(12, -1), (77, -1), (79, -1)]

def reductionPivot1610 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 0, 2, 1], ![2, -2, -2, 2], ![2, 2, 0, -4]]

theorem reductionSound1610 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6219).moment H =
      Integer.Sparse.eval reductionProjection1610 (momentVector H) := by
  have heq : reductionPivot1610 = (fun u v => (normalNode6219).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6219).moment H = injectiveMoment H reductionPivot1610 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6219).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6219).entries)).symm
  have hshape : reductionPivot1610 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot1610 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1610 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection28, oldProjection104, oldProjection110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1610 (0 : Fin 3)) = canonicalInput22.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1610 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection28 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1610 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection28 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22 hH))).trans (reductionSound28 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1610 (1 : Fin 3)) = canonicalInput567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1610 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1610 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound567 hH))).trans (oldProjectionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1610 (2 : Fin 3)) = canonicalInput578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1610 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1610 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound578 hH))).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6219).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1610 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6219).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot1610 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection1610 ![reductionProjection28, oldProjection104, oldProjection110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1611 : Integer.Sparse (Fin 1613) := [(12, 1), (77, 2), (1050, 1), (1052, 2)]

def reductionPivot1611 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, 0, 1, -3]]

theorem reductionSound1611 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode851).moment H =
      Integer.Sparse.eval reductionProjection1611 (momentVector H) := by
  have heq : reductionPivot1611 = (fun u v => (normalNode851).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode851).moment H = injectiveMoment H reductionPivot1611 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode851).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1611 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1611 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1611 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1041, oldProjection110, reductionProjection1610, reductionProjection886] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1611 (0 : Fin 4)) = canonicalInput1582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1611 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1041 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1611 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1582 hH))).trans (reductionSound1041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1611 (1 : Fin 4)) = canonicalInput1947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1611 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1611 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1947 hH))).trans (oldProjectionSound110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1611 (2 : Fin 4)) = canonicalInput1993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1611 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1610 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1611 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1993 hH))).trans (reductionSound1610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1611 (3 : Fin 4)) = canonicalInput1995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1611 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection886 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1611 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1995 hH))).trans (reductionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode851).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1611 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode851).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1611 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection1611 ![reductionProjection1041, oldProjection110, reductionProjection1610, reductionProjection886]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1612 : Integer.Sparse (Fin 1613) := [(79, 24), (94, -1), (241, -16), (698, -16), (1052, 48), (1055, 24), (1251, 3)]

def reductionPivot1612 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, 0, 0, -2]]

theorem reductionSound1612 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode852).moment H =
      Integer.Sparse.eval reductionProjection1612 (momentVector H) := by
  have heq : reductionPivot1612 = (fun u v => (normalNode852).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode852).moment H = injectiveMoment H reductionPivot1612 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode852).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1612 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1612 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1612 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection808, oldProjection197, reductionProjection886, oldProjection1059] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1612 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1218 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1612 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection808 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1612 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection808 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1218 hH))).trans (oldProjectionSound808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1612 (1 : Fin 4)) = canonicalInput1948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1612 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection197 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1612 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1948 hH))).trans (oldProjectionSound197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1612 (2 : Fin 4)) = canonicalInput1995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1612 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection886 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1612 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1995 hH))).trans (reductionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1612 (3 : Fin 4)) = canonicalInput1998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1612 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1059 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1612 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1998 hH))).trans (oldProjectionSound1059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode852).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1612 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode852).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1612 (j : Fin 4)))
      2 144 144 2 ![144, 1, 3, 144] ![1, 144, 48, 1] reductionProjection1612 ![oldProjection808, oldProjection197, reductionProjection886, oldProjection1059]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1613 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (698, -16), (1050, 24), (1251, 3)]

def reductionPivot1613 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]

theorem reductionSound1613 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode853).moment H =
      Integer.Sparse.eval reductionProjection1613 (momentVector H) := by
  have heq : reductionPivot1613 = (fun u v => (normalNode853).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode853).moment H = injectiveMoment H reductionPivot1613 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode853).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1613 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1613 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1613 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection976, oldProjection202, oldProjection1059, oldProjection1059] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1613 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1220 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1613 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection976 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1613 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1220 hH))).trans (oldProjectionSound976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1613 (1 : Fin 4)) = canonicalInput1949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1613 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1613 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1949 hH))).trans (oldProjectionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1613 (2 : Fin 4)) = canonicalInput1998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1613 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1059 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1613 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1998 hH))).trans (oldProjectionSound1059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1613 (3 : Fin 4)) = canonicalInput2002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1613 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1059 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1613 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2002 hH))).trans (oldProjectionSound1059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode853).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1613 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode853).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1613 (j : Fin 4)))
      2 72 144 4 ![72, 1, 144, 144] ![2, 144, 1, 1] reductionProjection1613 ![oldProjection976, oldProjection202, oldProjection1059, oldProjection1059]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1614 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -120), (20, 15), (72, -480), (76, -480), (94, 15), (243, 400), (697, -240), (698, 480), (700, 240), (704, 80), (1058, -1440), (1116, 720), (1226, 320), (1250, 180), (1321, -720), (1323, -480)]

def reductionPivot1614 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound1614 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode854).moment H =
      Integer.Sparse.eval reductionProjection1614 (momentVector H) := by
  have heq : reductionPivot1614 = (fun u v => (normalNode854).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode854).moment H = injectiveMoment H reductionPivot1614 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode854).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1614 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1614 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1614 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1980, oldProjection1052, reductionProjection1590, reductionProjection1304, reductionProjection1311] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1614 (0 : Fin 5)) = canonicalInput1587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1980 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1587 hH))).trans (oldProjectionSound1980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1614 (1 : Fin 5)) = canonicalInput1951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1052 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1951 hH))).trans (oldProjectionSound1052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1614 (2 : Fin 5)) = canonicalInput2005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1590 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2005 hH))).trans (reductionSound1590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1614 (3 : Fin 5)) = canonicalInput2006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1304 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2006 hH))).trans (reductionSound1304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1614 (4 : Fin 5)) = canonicalInput2007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1311 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1614 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2007 hH))).trans (reductionSound1311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode854).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1614 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode854).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1614 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 1440, 1440] ![1, 2, 1, 1, 1] reductionProjection1614 ![oldProjection1980, oldProjection1052, reductionProjection1590, reductionProjection1304, reductionProjection1311]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1615 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 240), (76, 240), (90, -80), (94, -25), (221, -720), (229, 240), (683, 240), (698, -160), (700, -240), (1058, 240), (1251, -30), (1321, 240)]

def reductionPivot1615 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, 3, -1, -2], ![1, -1, -2, 2], ![1, 0, 0, -1]]

theorem reductionSound1615 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode913).moment H =
      Integer.Sparse.eval reductionProjection1615 (momentVector H) := by
  have heq : reductionPivot1615 = (fun u v => (normalNode913).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode913).moment H = injectiveMoment H reductionPivot1615 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode913).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1615 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1615 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1615 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection826, oldProjection729, oldProjection1073, reductionProjection1432] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1615 (0 : Fin 4)) = canonicalInput2255.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1615 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection826 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1615 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2255 hH))).trans (reductionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1615 (1 : Fin 4)) = canonicalInput2191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1615 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection729 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1615 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2191 hH))).trans (oldProjectionSound729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1615 (2 : Fin 4)) = canonicalInput2188.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1615 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1615 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2188 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1615 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code221).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1615 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1432 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1615 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode913).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1615 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode913).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1615 (j : Fin 4)))
      2 1440 1440 2 ![9, 72, 720, 1] ![160, 20, 2, 1440] reductionProjection1615 ![reductionProjection826, oldProjection729, oldProjection1073, reductionProjection1432]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1616 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -80), (20, 15), (72, -480), (76, -480), (90, 80), (94, -15), (221, 720), (229, -240), (243, 240), (683, -240), (698, 480), (700, 320), (704, 80), (1058, -960), (1089, 720), (1116, 720), (1226, 240), (1250, 120), (1251, 20), (1321, -720), (1323, -480)]

def reductionPivot1616 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound1616 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode855).moment H =
      Integer.Sparse.eval reductionProjection1616 (momentVector H) := by
  have heq : reductionPivot1616 = (fun u v => (normalNode855).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode855).moment H = injectiveMoment H reductionPivot1616 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode855).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1616 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1616 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1616 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2176, oldProjection1073, reductionProjection1304, reductionProjection1615, reductionProjection1480] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1616 (0 : Fin 5)) = canonicalInput1590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2176 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1590 hH))).trans (oldProjectionSound2176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1616 (1 : Fin 5)) = canonicalInput1952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1952 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1616 (2 : Fin 5)) = canonicalInput2006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1304 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2006 hH))).trans (reductionSound1304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1616 (3 : Fin 5)) = (normalNode913).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1615 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1616 (4 : Fin 5)) = canonicalInput2009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1480 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1616 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2009 hH))).trans (reductionSound1480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode855).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1616 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode855).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1616 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 1440, 1440] ![1, 2, 1, 1, 1] reductionProjection1616 ![oldProjection2176, oldProjection1073, reductionProjection1304, reductionProjection1615, reductionProjection1480]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1617 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (1251, -3), (1321, 48), (1323, 48)]

def reductionPivot1617 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]

theorem reductionSound1617 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode856).moment H =
      Integer.Sparse.eval reductionProjection1617 (momentVector H) := by
  have heq : reductionPivot1617 = (fun u v => (normalNode856).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode856).moment H = injectiveMoment H reductionPivot1617 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode856).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1617 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1617 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 24, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1617 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1213, oldProjection274, reductionProjection1215, reductionProjection1218] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1617 (0 : Fin 4)) = canonicalInput1594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1617 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1213 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1617 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1594 hH))).trans (oldProjectionSound1213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1617 (1 : Fin 4)) = canonicalInput1953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1617 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection274 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1617 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1953 hH))).trans (oldProjectionSound274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1617 (2 : Fin 4)) = canonicalInput2014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1617 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1215 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1617 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2014 hH))).trans (reductionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1617 (3 : Fin 4)) = canonicalInput2015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1617 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1218 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1617 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2015 hH))).trans (reductionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode856).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1617 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode856).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1617 (j : Fin 4)))
      2 144 144 2 ![144, 24, 72, 144] ![1, 6, 2, 1] reductionProjection1617 ![oldProjection1213, oldProjection274, reductionProjection1215, reductionProjection1218]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1618 : Integer.Sparse (Fin 1613) := [(0, 1), (87, 60), (94, -5), (247, -40), (1219, 120), (1251, -10), (1388, 60)]

def reductionPivot1618 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound1618 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode857).moment H =
      Integer.Sparse.eval reductionProjection1618 (momentVector H) := by
  have heq : reductionPivot1618 = (fun u v => (normalNode857).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode857).moment H = injectiveMoment H reductionPivot1618 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode857).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1618 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1618 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 3, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1618 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection820, oldProjection202, reductionProjection795, oldProjection1084] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1618 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1225 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1618 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection820 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1618 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1225 hH))).trans (oldProjectionSound820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1618 (1 : Fin 4)) = canonicalInput1954.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1618 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1618 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1954 hH))).trans (oldProjectionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1618 (2 : Fin 4)) = canonicalInput2020.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1618 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection795 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1618 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2020 hH))).trans (reductionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1618 (3 : Fin 4)) = canonicalInput2021.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1618 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1084 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1618 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2021 hH))).trans (oldProjectionSound1084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode857).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1618 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode857).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1618 (j : Fin 4)))
      2 360 360 2 ![360, 1, 3, 360] ![1, 360, 120, 1] reductionProjection1618 ![oldProjection820, oldProjection202, reductionProjection795, oldProjection1084]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1619 : Integer.Sparse (Fin 1613) := [(87, 1), (203, -3), (211, -6), (1055, 1), (1219, 1)]

def reductionPivot1619 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 1, -3, 2], ![1, 0, 1, -2], ![1, 0, 1, -2]]

theorem reductionSound1619 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode915).moment H =
      Integer.Sparse.eval reductionProjection1619 (momentVector H) := by
  have heq : reductionPivot1619 = (fun u v => (normalNode915).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode915).moment H = injectiveMoment H reductionPivot1619 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode915).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1619 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1619 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1619 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection795, reductionProjection1519, reductionProjection1281, reductionProjection1281] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1619 (0 : Fin 4)) = canonicalInput5141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1619 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection795 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1619 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5141 hH))).trans (reductionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1619 (1 : Fin 4)) = canonicalInput2155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1619 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1619 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2155 hH))).trans (reductionSound1519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1619 (2 : Fin 4)) = canonicalInput2032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1619 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1281 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1619 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2032 hH))).trans (reductionSound1281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1619 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code211).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1619 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1281 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1619 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode915).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1619 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode915).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1619 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection1619 ![reductionProjection795, reductionProjection1519, reductionProjection1281, reductionProjection1281]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1620 : Integer.Sparse (Fin 1613) := [(0, 1), (79, 240), (82, 240), (87, 240), (90, -160), (94, -15), (211, -720), (698, -400), (700, -80), (1058, 240), (1226, -240), (1227, -80), (1251, 20)]

def reductionPivot1620 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -2, 2, 2], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound1620 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode919).moment H =
      Integer.Sparse.eval reductionProjection1620 (momentVector H) := by
  have heq : reductionPivot1620 = (fun u v => (normalNode919).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode919).moment H = injectiveMoment H reductionPivot1620 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode919).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1620 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1620 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1620 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection836, oldProjection841, reductionProjection1281, reductionProjection1167] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1620 (0 : Fin 4)) = canonicalInput5688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1620 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection836 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1620 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5688 hH))).trans (oldProjectionSound836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1620 (1 : Fin 4)) = canonicalInput2161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1620 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1620 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2161 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1620 (2 : Fin 4)) = canonicalInput2032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1620 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1281 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1620 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2032 hH))).trans (reductionSound1281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1620 (3 : Fin 4)) = canonicalInput2030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1620 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1167 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1620 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2030 hH))).trans (reductionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode919).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1620 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode919).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1620 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 9] ![2, 10, 1440, 160] reductionProjection1620 ![oldProjection836, oldProjection841, reductionProjection1281, reductionProjection1167]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1621 : Integer.Sparse (Fin 1613) := [(0, -1), (12, -120), (19, -10), (56, -120), (77, -120), (79, -240), (82, -360), (87, -360), (88, 80), (90, 200), (94, 20), (175, 360), (203, 360), (211, 1080), (212, 360), (241, 120), (243, 120), (616, 360), (698, 600), (700, 120), (1055, -240), (1058, -360), (1219, -240), (1223, -120), (1226, 360), (1227, 200), (1251, -45)]

def reductionPivot1621 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound1621 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode858).moment H =
      Integer.Sparse.eval reductionProjection1621 (momentVector H) := by
  have heq : reductionPivot1621 = (fun u v => (normalNode858).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode858).moment H = injectiveMoment H reductionPivot1621 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode858).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1621 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1621 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 6, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1621 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1244, reductionProjection1532, reductionProjection1619, reductionProjection1620, reductionProjection1412] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1621 (0 : Fin 5)) = (normalNode696).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1244 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1621 (1 : Fin 5)) = (normalNode914).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1532 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1621 (2 : Fin 5)) = canonicalInput2037.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1619 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2037 hH))).trans (reductionSound1619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1621 (3 : Fin 5)) = canonicalInput2039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1620 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1620 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2039 hH))).trans (reductionSound1620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1621 (4 : Fin 5)) = (normalNode927).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1412 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1621 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode858).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1621 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode858).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1621 (j : Fin 5)))
      1 720 1440 2 ![1440, 144, 6, 1440, 144] ![1, 10, 240, 1, 10] reductionProjection1621 ![reductionProjection1244, reductionProjection1532, reductionProjection1619, reductionProjection1620, reductionProjection1412]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1622 : Integer.Sparse (Fin 1613) := [(0, -1), (15, -120), (56, -120), (79, -240), (82, -360), (87, -360), (88, 80), (89, -120), (90, 200), (94, 10), (175, 360), (206, 360), (211, 720), (212, 360), (216, 360), (243, 120), (616, 360), (698, 640), (700, 200), (704, 40), (1050, -120), (1052, -120), (1058, -480), (1059, 120), (1223, -120), (1226, 440), (1227, 200), (1251, -45)]

def reductionPivot1622 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound1622 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode860).moment H =
      Integer.Sparse.eval reductionProjection1622 (momentVector H) := by
  have heq : reductionPivot1622 = (fun u v => (normalNode860).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode860).moment H = injectiveMoment H reductionPivot1622 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode860).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1622 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1622 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 18, 36] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1622 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection834, reductionProjection1549, reductionProjection1620, reductionProjection1555, reductionProjection914] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1622 (0 : Fin 5)) = (normalNode699).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1622 (1 : Fin 5)) = (normalNode918).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1549 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1622 (2 : Fin 5)) = canonicalInput2039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1620 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1620 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2039 hH))).trans (reductionSound1620 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1622 (3 : Fin 5)) = canonicalInput2043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1555 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2043 hH))).trans (reductionSound1555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1622 (4 : Fin 5)) = (normalNode930).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection914 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1622 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode860).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1622 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode860).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1622 (j : Fin 5)))
      1 720 1440 2 ![1440, 144, 1440, 18, 36] ![1, 10, 1, 80, 40] reductionProjection1622 ![reductionProjection834, reductionProjection1549, reductionProjection1620, reductionProjection1555, reductionProjection914]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1623 : Integer.Sparse (Fin 1613) := [(0, -3), (87, -720), (169, 720), (174, 720), (179, 720), (206, 720), (211, 720), (214, -1440), (216, 720), (616, 720), (638, 720), (697, -240), (698, 800), (1050, -240), (1055, -240), (1058, -1200), (1059, 160), (1219, -240), (1226, 400), (1227, 480), (1251, -85)]

def reductionPivot1623 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound1623 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode862).moment H =
      Integer.Sparse.eval reductionProjection1623 (momentVector H) := by
  have heq : reductionPivot1623 = (fun u v => (normalNode862).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode862).moment H = injectiveMoment H reductionPivot1623 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode862).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1623 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1623 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 36, 1, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1623 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection893, reductionProjection1555, reductionProjection914, reductionProjection901, reductionProjection896] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1623 (0 : Fin 5)) = (normalNode700).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection893 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1623 (1 : Fin 5)) = (normalNode920).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1555 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1623 (2 : Fin 5)) = (normalNode930).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection914 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1623 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code214).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection901 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection901 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1623 (4 : Fin 5)) = (normalNode932).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection896 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1623 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode862).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1623 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode862).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1623 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 36, 1, 720] ![1, 80, 40, 1440, 2] reductionProjection1623 ![reductionProjection893, reductionProjection1555, reductionProjection914, reductionProjection901, reductionProjection896]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1624 : Integer.Sparse (Fin 1613) := [(15, 3), (82, 6), (87, 3), (88, -2), (90, -2), (207, -9), (243, -2), (698, -2), (1226, -1)]

def reductionPivot1624 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, 1, -3, 2], ![0, 1, 2, -3], ![1, 0, 0, -1]]

theorem reductionSound1624 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode922).moment H =
      Integer.Sparse.eval reductionProjection1624 (momentVector H) := by
  have heq : reductionPivot1624 = (fun u v => (normalNode922).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode922).moment H = injectiveMoment H reductionPivot1624 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode922).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1624 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1624 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1624 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1188, reductionProjection1518, reductionProjection1167, reductionProjection1550] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1624 (0 : Fin 4)) = (normalNode7064).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1624 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1188 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1624 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1624 (1 : Fin 4)) = canonicalInput2207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1624 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1518 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1624 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2207 hH))).trans (reductionSound1518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1624 (2 : Fin 4)) = canonicalInput2033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1624 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1167 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1624 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2033 hH))).trans (reductionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1624 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code207).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1624 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1550 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1624 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode922).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1624 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode922).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1624 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 1] ![2, 2, 2, 18] reductionProjection1624 ![reductionProjection1188, reductionProjection1518, reductionProjection1167, reductionProjection1550]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1625 : Integer.Sparse (Fin 1613) := [(0, -1), (15, -120), (56, -120), (82, -360), (87, -600), (88, 80), (89, -120), (90, 200), (94, 5), (170, 360), (206, 720), (207, 360), (211, 360), (216, 360), (243, 120), (638, 360), (698, 360), (700, 40), (704, 40), (1055, -120), (1058, -480), (1219, -120), (1223, -120), (1226, 400), (1227, 200), (1251, -10)]

def reductionPivot1625 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1625 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode864).moment H =
      Integer.Sparse.eval reductionProjection1625 (momentVector H) := by
  have heq : reductionPivot1625 = (fun u v => (normalNode864).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode864).moment H = injectiveMoment H reductionPivot1625 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode864).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1625 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1625 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 18, 720, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1625 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection838, reductionProjection1624, reductionProjection896, reductionProjection1555, reductionProjection1315] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1625 (0 : Fin 5)) = (normalNode701).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection838 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1625 (1 : Fin 5)) = (normalNode922).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1624 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1624 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1624 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1625 (2 : Fin 5)) = (normalNode932).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection896 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1625 (3 : Fin 5)) = canonicalInput2046.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1555 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2046 hH))).trans (reductionSound1555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1625 (4 : Fin 5)) = canonicalInput2047.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1315 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1625 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2047 hH))).trans (reductionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode864).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1625 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode864).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1625 (j : Fin 5)))
      1 720 720 1 ![144, 18, 720, 18, 18] ![5, 40, 1, 40, 40] reductionProjection1625 ![reductionProjection838, reductionProjection1624, reductionProjection896, reductionProjection1555, reductionProjection1315]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1626 : Integer.Sparse (Fin 1613) := [(0, 1), (174, -720), (211, -720), (616, -720), (698, -80), (1055, 240), (1058, 240), (1227, -80), (1251, 15)]

def reductionPivot1626 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, 0, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound1626 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode869).moment H =
      Integer.Sparse.eval reductionProjection1626 (momentVector H) := by
  have heq : reductionPivot1626 = (fun u v => (normalNode869).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode869).moment H = injectiveMoment H reductionPivot1626 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode869).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1626 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1626 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1626 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection409, reductionProjection1281, oldProjection828, reductionProjection566] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1626 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1626 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection409 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1626 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1626 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code211).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1626 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1281 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1626 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1626 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1306 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1626 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1626 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1306 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1626 (3 : Fin 4)) = canonicalInput2056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1626 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1626 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2056 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode869).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1626 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode869).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1626 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection1626 ![oldProjection409, reductionProjection1281, oldProjection828, reductionProjection566]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1627 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -20), (72, -960), (76, -480), (79, -480), (81, -480), (94, 40), (241, 160), (579, 1440), (698, 1040), (1050, -1440), (1052, -240), (1055, -480), (1058, -960), (1059, 240), (1221, -1440), (1226, 320), (1227, 320), (1250, 120), (1251, -5)]

def reductionPivot1627 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound1627 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode870).moment H =
      Integer.Sparse.eval reductionProjection1627 (momentVector H) := by
  have heq : reductionPivot1627 = (fun u v => (normalNode870).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode870).moment H = injectiveMoment H reductionPivot1627 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode870).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1627 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1627 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1627 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1765, reductionProjection1485, reductionProjection1485, oldProjection2345, oldProjection1523] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1627 (0 : Fin 5)) = canonicalInput1656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1765 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1656 hH))).trans (oldProjectionSound1765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1627 (1 : Fin 5)) = (normalNode923).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1485 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1627 (2 : Fin 5)) = canonicalInput2066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1485 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2066 hH))).trans (reductionSound1485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1627 (3 : Fin 5)) = canonicalInput2072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2345 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2072 hH))).trans (oldProjectionSound2345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1627 (4 : Fin 5)) = canonicalInput2073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1627 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2073 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode870).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1627 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode870).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1627 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 360, 1440] ![1, 1, 1, 4, 1] reductionProjection1627 ![oldProjection1765, reductionProjection1485, reductionProjection1485, oldProjection2345, oldProjection1523]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1628 : Integer.Sparse (Fin 1613) := [(0, 3), (578, -360), (698, -160), (1050, 240), (1058, 240), (1059, -200), (1251, 45)]

def reductionPivot1628 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 2, -1, -1], ![2, -2, 2, -2]]

theorem reductionSound1628 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4450).moment H =
      Integer.Sparse.eval reductionProjection1628 (momentVector H) := by
  have heq : reductionPivot1628 = (fun u v => (normalNode4450).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4450).moment H = injectiveMoment H reductionPivot1628 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4450).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot1628 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1628 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 180] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1628 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection831, oldProjection506, oldProjection831, oldProjection1112] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1628 (0 : Fin 4)) = canonicalInput7656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1628 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1628 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7656 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1628 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3736 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1628 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1628 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3736 hH))).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1628 (2 : Fin 4)) = canonicalInput8655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1628 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1628 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8655 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1628 (3 : Fin 4)) = canonicalInput8658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1628 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1112 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1628 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1112 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8658 hH))).trans (oldProjectionSound1112 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4450).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1628 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4450).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1628 (j : Fin 4)))
      2 720 720 2 ![720, 1, 720, 180] ![1, 720, 1, 4] reductionProjection1628 ![oldProjection831, oldProjection506, oldProjection831, oldProjection1112]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1629 : Integer.Sparse (Fin 1613) := [(0, -6), (94, 55), (241, 160), (243, 80), (508, 720), (578, 2160), (602, 1440), (638, 1440), (639, 1440), (697, -240), (698, 560), (1050, -720), (1055, -480), (1058, -960), (1059, 480), (1226, 80), (1227, 160), (1250, 60), (1251, -195)]

def reductionPivot1629 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -1, 0, -1]]

theorem reductionSound1629 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode871).moment H =
      Integer.Sparse.eval reductionProjection1629 (momentVector H) := by
  have heq : reductionPivot1629 = (fun u v => (normalNode871).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode871).moment H = injectiveMoment H reductionPivot1629 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode871).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1629 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1629 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1629 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2061, reductionProjection1411, reductionProjection1411, oldProjection1523, reductionProjection1628] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1629 (0 : Fin 5)) = canonicalInput1657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2061 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1657 hH))).trans (oldProjectionSound2061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1629 (1 : Fin 5)) = (normalNode924).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1411 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1629 (2 : Fin 5)) = canonicalInput2067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1411 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2067 hH))).trans (reductionSound1411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1629 (3 : Fin 5)) = canonicalInput2073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2073 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1629 (4 : Fin 5)) = canonicalInput2074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1628 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1629 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2074 hH))).trans (reductionSound1628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode871).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1629 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode871).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1629 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 1440, 720] ![1, 720, 720, 1, 2] reductionProjection1629 ![oldProjection2061, reductionProjection1411, reductionProjection1411, oldProjection1523, reductionProjection1628]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1630 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -60), (94, 130), (241, 80), (247, 80), (484, 720), (541, 720), (597, 1440), (610, 1440), (698, 400), (1050, -240), (1055, -960), (1058, -480), (1143, 1440), (1227, 160), (1250, 300), (1251, -175), (1321, -240), (1323, -240), (1388, -240), (1389, -480)]

def reductionPivot1630 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound1630 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode872).moment H =
      Integer.Sparse.eval reductionProjection1630 (momentVector H) := by
  have heq : reductionPivot1630 = (fun u v => (normalNode872).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode872).moment H = injectiveMoment H reductionPivot1630 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode872).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1630 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1630 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1630 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1350, reductionProjection1382, reductionProjection1382, oldProjection1521, oldProjection2346] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1630 (0 : Fin 5)) = canonicalInput1659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1350 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1659 hH))).trans (reductionSound1350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1630 (1 : Fin 5)) = (normalNode926).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1630 (2 : Fin 5)) = canonicalInput2068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2068 hH))).trans (reductionSound1382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1630 (3 : Fin 5)) = canonicalInput2075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1521 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2075 hH))).trans (oldProjectionSound1521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1630 (4 : Fin 5)) = canonicalInput2076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2346 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1630 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2076 hH))).trans (oldProjectionSound2346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode872).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1630 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode872).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1630 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 360] ![1, 1, 1, 1, 4] reductionProjection1630 ![reductionProjection1350, reductionProjection1382, reductionProjection1382, oldProjection1521, oldProjection2346]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1631 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -4), (79, -96), (94, 19), (247, 32), (616, 288), (697, -96), (698, 192), (1050, -96), (1052, -48), (1055, -192), (1058, -288), (1059, 32), (1226, 64), (1227, 128), (1250, 48), (1251, -39), (1388, -96)]

def reductionPivot1631 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound1631 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode873).moment H =
      Integer.Sparse.eval reductionProjection1631 (momentVector H) := by
  have heq : reductionPivot1631 = (fun u v => (normalNode873).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode873).moment H = injectiveMoment H reductionPivot1631 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode873).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1631 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1631 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 144, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1631 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1512, reductionProjection1412, reductionProjection1412, oldProjection1523, oldProjection1524] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1631 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1512⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1631 (1 : Fin 5)) = (normalNode927).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1412 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1631 (2 : Fin 5)) = canonicalInput2069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1412 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2069 hH))).trans (reductionSound1412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1631 (3 : Fin 5)) = canonicalInput2077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1523 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2077 hH))).trans (oldProjectionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1631 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1524⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1524 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1631 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode873).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1631 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode873).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1631 (j : Fin 5)))
      1 288 1440 5 ![1440, 144, 144, 1440, 360] ![1, 10, 10, 1, 4] reductionProjection1631 ![oldProjection1512, reductionProjection1412, reductionProjection1412, oldProjection1523, oldProjection1524]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

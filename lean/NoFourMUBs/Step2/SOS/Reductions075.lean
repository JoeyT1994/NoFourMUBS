import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical019
import NoFourMUBs.Step2.SOS.Canonical020
import NoFourMUBs.Step2.SOS.Canonical041
import NoFourMUBs.Step2.SOS.Canonical042
import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical044
import NoFourMUBs.Step2.SOS.Canonical064
import NoFourMUBs.Step2.SOS.Canonical090
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical127
import NoFourMUBs.Step2.SOS.Canonical204
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
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
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions074
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical114
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical218
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical63
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical82
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical91
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical93
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2400 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -280), (20, 75), (94, 160), (241, 80), (243, 160), (247, 320), (293, 720), (698, 160), (700, 80), (701, 80), (704, 560), (1061, -240), (1219, -240), (1223, -240), (1251, 125)]

def reductionPivot2400 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound2400 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1252).moment H =
      Integer.Sparse.eval reductionProjection2400 (momentVector H) := by
  have heq : reductionPivot2400 = (fun u v => (normalNode1252).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1252).moment H = injectiveMoment H reductionPivot2400 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1252).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2400 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2400 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2400 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1469, reductionProjection2398, oldProjection1176, oldProjection1558, reductionProjection2399] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2400 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1469⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1469 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1469 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2400 (1 : Fin 5)) = (normalNode1300).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2398 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2400 (2 : Fin 5)) = canonicalInput2731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2731 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2400 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1566 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1558 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1566 hH))).trans (oldProjectionSound1558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2400 (4 : Fin 5)) = canonicalInput2739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2399 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2400 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2739 hH))).trans (reductionSound2399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1252).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2400 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1252).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2400 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 720, 288, 1440] ![1, 2, 2, 5, 1] reductionProjection2400 ![oldProjection1469, reductionProjection2398, oldProjection1176, oldProjection1558, reductionProjection2399]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2401 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 80), (94, -55), (228, 240), (241, -80), (247, -240), (291, -720), (294, -720), (704, -80), (1251, -55)]

def reductionPivot2401 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound2401 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1301).moment H =
      Integer.Sparse.eval reductionProjection2401 (momentVector H) := by
  have heq : reductionPivot2401 = (fun u v => (normalNode1301).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1301).moment H = injectiveMoment H reductionPivot2401 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1301).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2401 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2401 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2401 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1100, oldProjection766, oldProjection454, oldProjection452] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2401 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2930 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2401 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2401 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2930 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2401 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1615 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2401 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection766 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2401 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1615 hH))).trans (oldProjectionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2401 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1508 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2401 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2401 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1508 hH))).trans (oldProjectionSound454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2401 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node452⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2401 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection452 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2401 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1301).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2401 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1301).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2401 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 1, 1] ![2, 2, 1440, 1440] reductionProjection2401 ![oldProjection1100, oldProjection766, oldProjection454, oldProjection452]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2402 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 24), (20, -1), (81, 48), (94, -20), (228, 96), (241, -16), (243, -16), (247, -32), (686, 48), (698, -32), (704, -32), (1251, -20)]

def reductionPivot2402 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]

theorem reductionSound2402 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1385).moment H =
      Integer.Sparse.eval reductionProjection2402 (momentVector H) := by
  have heq : reductionPivot2402 = (fun u v => (normalNode1385).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1385).moment H = injectiveMoment H reductionPivot2402 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1385).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2402 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2402 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2402 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1013, oldProjection894, reductionProjection2366, oldProjection1100] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2402 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2045 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2402 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1013 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2402 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2045 hH))).trans (oldProjectionSound1013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2402 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1689 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2402 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2402 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1689 hH))).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2402 (2 : Fin 4)) = canonicalInput2810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2402 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2402 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2810 hH))).trans (reductionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2402 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1666 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2402 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2402 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1666 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1385).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2402 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1385).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2402 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 144, 720] ![2, 2, 10, 2] reductionProjection2402 ![oldProjection1013, oldProjection894, reductionProjection2366, oldProjection1100]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2403 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -340), (20, 15), (38, -240), (81, -240), (94, 210), (228, -720), (241, 320), (243, 80), (247, 480), (291, 720), (294, 720), (686, -240), (697, -240), (698, 160), (704, 240), (1251, 175)]

def reductionPivot2403 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound2403 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1253).moment H =
      Integer.Sparse.eval reductionProjection2403 (momentVector H) := by
  have heq : reductionPivot2403 = (fun u v => (normalNode1253).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1253).moment H = injectiveMoment H reductionPivot2403 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1253).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2403 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2403 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2403 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1470, reductionProjection2401, oldProjection766, reductionProjection2402, oldProjection2401] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2403 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1470⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1470 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2403 (1 : Fin 5)) = (normalNode1301).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2401 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2403 (2 : Fin 5)) = canonicalInput2732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection766 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2732 hH))).trans (oldProjectionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2403 (3 : Fin 5)) = (normalNode1385).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2402 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2403 (4 : Fin 5)) = canonicalInput2740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2401 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2403 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2740 hH))).trans (oldProjectionSound2401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1253).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2403 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1253).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2403 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 288, 720] ![1, 1, 2, 5, 2] reductionProjection2403 ![oldProjection1470, reductionProjection2401, oldProjection766, reductionProjection2402, oldProjection2401]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2404 : Integer.Sparse (Fin 1613) := [(283, -1), (291, -1), (564, -1), (565, -1)]

def reductionPivot2404 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound2404 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1303).moment H =
      Integer.Sparse.eval reductionProjection2404 (momentVector H) := by
  have heq : reductionPivot2404 = (fun u v => (normalNode1303).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1303).moment H = injectiveMoment H reductionPivot2404 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1303).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2404 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2404 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2404 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection505, oldProjection447, oldProjection452, reductionProjection2264] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2404 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3080 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2404 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2404 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3080 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2404 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1640 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2404 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2404 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1640 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2404 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node452⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2404 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection452 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2404 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2404 (3 : Fin 4)) = canonicalInput2662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2404 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2404 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2662 hH))).trans (reductionSound2264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1303).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2404 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1303).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2404 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2404 ![oldProjection505, oldProjection447, oldProjection452, reductionProjection2264]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2405 : Integer.Sparse (Fin 1613) := [(76, -1), (81, -1), (1221, -1)]

def reductionPivot2405 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 2, 1], ![1, 2, 0, -3], ![2, -1, -2, 1]]

theorem reductionSound2405 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6951).moment H =
      Integer.Sparse.eval reductionProjection2405 (momentVector H) := by
  have heq : reductionPivot2405 = (fun u v => (normalNode6951).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6951).moment H = injectiveMoment H reductionPivot2405 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6951).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6951).entries)).symm
  have hshape : reductionPivot2405 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2405 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2405 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection103, oldProjection224, oldProjection111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2405 (0 : Fin 3)) = canonicalInput345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2405 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2405 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound345 hH))).trans (oldProjectionSound103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2405 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2632 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2405 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection224 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2405 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2632 hH))).trans (oldProjectionSound224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2405 (2 : Fin 3)) = canonicalInput5767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2405 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2405 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5767 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6951).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2405 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6951).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2405 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection2405 ![oldProjection103, oldProjection224, oldProjection111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2406 : Integer.Sparse (Fin 1613) := [(324, 1)]

theorem reductionSound2406 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code324).moment H =
      Integer.Sparse.eval reductionProjection2406 (momentVector H) := by
  have hc : coordinates (324 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code324) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2406, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2407 : Integer.Sparse (Fin 1613) := [(13, 1), (76, 2), (81, 2), (228, 1), (324, -3), (686, 2), (1221, 1)]

def reductionPivot2407 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 2, -2, -1]]

theorem reductionSound2407 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode1389).moment H =
      Integer.Sparse.eval reductionProjection2407 (momentVector H) := by
  have heq : reductionPivot2407 = (fun u v => (normalNode1389).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1389).moment H = injectiveMoment H reductionPivot2407 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1389).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2407 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2407 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2407 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2405, reductionProjection2406, reductionProjection2313, oldProjection756] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2407 (0 : Fin 4)) = canonicalInput4124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2407 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2405 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2407 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4124 hH))).trans (reductionSound2405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2407 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code324).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2407 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2406 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2407 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2406 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2407 (2 : Fin 4)) = canonicalInput2820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2407 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2313 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2407 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2313 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2820 hH))).trans (reductionSound2313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2407 (3 : Fin 4)) = canonicalInput2819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2407 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection756 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2407 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2819 hH))).trans (oldProjectionSound756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1389).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2407 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1389).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2407 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection2407 ![reductionProjection2405, reductionProjection2406, reductionProjection2313, oldProjection756]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2408 : Integer.Sparse (Fin 1613) := [(0, -8), (13, -240), (19, -140), (20, 5), (38, -240), (76, -480), (81, -1200), (94, 175), (228, -960), (231, -240), (241, 80), (243, 80), (247, 160), (283, 1440), (291, 720), (324, 720), (326, 720), (327, 720), (564, 720), (565, 720), (686, -720), (697, -240), (698, 400), (704, 240), (1221, -240), (1251, 130), (1323, -240), (1389, -480)]

def reductionPivot2408 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound2408 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1255).moment H =
      Integer.Sparse.eval reductionProjection2408 (momentVector H) := by
  have heq : reductionPivot2408 = (fun u v => (normalNode1255).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1255).moment H = injectiveMoment H reductionPivot2408 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1255).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2408 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2408 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1440, 6, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2408 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1923, reductionProjection2404, oldProjection1586, reductionProjection2407, oldProjection1592] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2408 (0 : Fin 5)) = canonicalInput1263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1923 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1263 hH))).trans (oldProjectionSound1923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2408 (1 : Fin 5)) = (normalNode1303).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2404 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2408 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1586⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2408 (3 : Fin 5)) = (normalNode1389).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2407 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2408 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1592⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1592 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2408 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1592 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1255).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2408 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1255).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2408 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1440, 6, 288] ![1, 720, 1, 240, 5] reductionProjection2408 ![oldProjection1923, reductionProjection2404, oldProjection1586, reductionProjection2407, oldProjection1592]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2409 : Integer.Sparse (Fin 1613) := [(286, 1)]

theorem reductionSound2409 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code286).moment H =
      Integer.Sparse.eval reductionProjection2409 (momentVector H) := by
  have hc : coordinates (286 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code286) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2409, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2410 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -80), (94, 85), (228, -360), (241, 200), (243, 80), (247, 160), (283, 360), (286, -720), (291, 360), (294, 360), (326, 360), (548, 360), (549, 360), (564, 360), (565, 360), (698, 320), (704, 120), (1223, -120), (1226, 80), (1227, 80), (1251, 20)]

def reductionPivot2410 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound2410 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1257).moment H =
      Integer.Sparse.eval reductionProjection2410 (momentVector H) := by
  have heq : reductionPivot2410 = (fun u v => (normalNode1257).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1257).moment H = injectiveMoment H reductionPivot2410 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1257).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2410 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2410 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 288, 2, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2410 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1911, reductionProjection2409, oldProjection1592, reductionProjection2404, oldProjection1576] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2410 (0 : Fin 5)) = canonicalInput1266.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1911 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1911 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1266 hH))).trans (oldProjectionSound1911 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2410 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code286).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2409 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2410 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1592⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1592 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1592 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2410 (3 : Fin 5)) = canonicalInput2744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2404 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2744 hH))).trans (reductionSound2404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2410 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1595 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1576 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2410 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1595 hH))).trans (oldProjectionSound1576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1257).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2410 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1257).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2410 (j : Fin 5)))
      1 720 1440 2 ![1440, 1, 288, 2, 72] ![1, 1440, 5, 720, 20] reductionProjection2410 ![oldProjection1911, reductionProjection2409, oldProjection1592, reductionProjection2404, oldProjection1576]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2411 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -3), (243, -12), (289, -36), (698, -12), (704, -16), (1223, 12), (1251, -3)]

def reductionPivot2411 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 2, 1, -3], ![1, 0, -1, 0]]

theorem reductionSound2411 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1307).moment H =
      Integer.Sparse.eval reductionProjection2411 (momentVector H) := by
  have heq : reductionPivot2411 = (fun u v => (normalNode1307).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1307).moment H = injectiveMoment H reductionPivot2411 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1307).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2411 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2411 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2411 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection897, oldProjection1080, oldProjection1278, oldProjection451] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2411 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node897⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2411 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection897 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2411 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2411 (1 : Fin 4)) = canonicalInput2858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2411 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1080 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2411 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2858 hH))).trans (oldProjectionSound1080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2411 (2 : Fin 4)) = canonicalInput2664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2411 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1278 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2411 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2664 hH))).trans (oldProjectionSound1278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2411 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2411 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2411 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1307).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2411 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1307).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2411 (j : Fin 4)))
      2 72 144 4 ![144, 72, 144, 1] ![1, 2, 1, 144] reductionProjection2411 ![oldProjection897, oldProjection1080, oldProjection1278, oldProjection451]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2412 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 140), (20, -20), (94, -35), (243, -160), (244, -80), (698, -160), (700, -240), (701, -80), (704, -160), (1059, -80), (1251, -35)]

def reductionPivot2412 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, -1, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound2412 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6496).moment H =
      Integer.Sparse.eval reductionProjection2412 (momentVector H) := by
  have heq : reductionPivot2412 = (fun u v => (normalNode6496).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6496).moment H = injectiveMoment H reductionPivot2412 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6496).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2412 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2412 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2412 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1041, oldProjection1042, oldProjection1042, oldProjection961] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2412 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5707 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2412 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1041 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2412 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5707 hH))).trans (oldProjectionSound1041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2412 (1 : Fin 4)) = canonicalInput13102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2412 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2412 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13102 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2412 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5621 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2412 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2412 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5621 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2412 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5620 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2412 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection961 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2412 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection961 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5620 hH))).trans (oldProjectionSound961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6496).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2412 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6496).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2412 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 720, 144] ![4, 2, 2, 10] reductionProjection2412 ![oldProjection1041, oldProjection1042, oldProjection1042, oldProjection961]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2413 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -140), (20, 45), (94, 75), (241, 80), (243, 440), (244, 40), (289, 360), (698, 440), (700, 200), (701, 40), (704, 560), (1052, -120), (1053, -120), (1059, 40), (1061, -240), (1223, -120), (1251, 50)]

def reductionPivot2413 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound2413 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1258).moment H =
      Integer.Sparse.eval reductionProjection2413 (momentVector H) := by
  have heq : reductionPivot2413 = (fun u v => (normalNode1258).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1258).moment H = injectiveMoment H reductionPivot2413 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1258).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2413 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2413 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2413 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1467, reductionProjection2411, reductionProjection2412, oldProjection1605, oldProjection1605] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2413 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1075 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1467 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1075 hH))).trans (oldProjectionSound1467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2413 (1 : Fin 5)) = (normalNode1307).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2411 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2413 (2 : Fin 5)) = canonicalInput2742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2412 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2742 hH))).trans (reductionSound2412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2413 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1605⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1605 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2413 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1607 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1605 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2413 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1607 hH))).trans (oldProjectionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1258).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2413 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1258).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2413 (j : Fin 5)))
      1 720 1440 2 ![288, 72, 1440, 1440, 1440] ![5, 20, 1, 1, 1] reductionProjection2413 ![oldProjection1467, reductionProjection2411, reductionProjection2412, oldProjection1605, oldProjection1605]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2414 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -3), (241, -16), (243, -48), (244, -16), (289, -144), (698, -48), (700, -64), (701, -16), (704, -32), (1052, 48), (1053, 48), (1059, -16), (1061, 48), (1251, -3)]

def reductionPivot2414 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, 0, -2, 0]]

theorem reductionSound2414 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1259).moment H =
      Integer.Sparse.eval reductionProjection2414 (momentVector H) := by
  have heq : reductionPivot2414 = (fun u v => (normalNode1259).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1259).moment H = injectiveMoment H reductionPivot2414 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1259).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2414 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2414 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2414 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1180, oldProjection451, oldProjection768, oldProjection1173] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2414 (0 : Fin 4)) = canonicalInput1267.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2414 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1180 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2414 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1267 hH))).trans (oldProjectionSound1180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2414 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2414 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2414 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2414 (2 : Fin 4)) = canonicalInput2743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2414 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection768 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2414 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2743 hH))).trans (oldProjectionSound768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2414 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1608 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2414 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1173 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2414 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1608 hH))).trans (oldProjectionSound1173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1259).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2414 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1259).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2414 (j : Fin 4)))
      2 288 288 2 ![144, 1, 9, 72] ![2, 288, 32, 4] reductionProjection2414 ![oldProjection1180, oldProjection451, oldProjection768, oldProjection1173]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2415 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 140), (20, -20), (94, -75), (247, -80), (293, -720), (698, -80), (700, -80), (701, -80), (704, -160), (1061, 240), (1219, 240), (1251, -65)]

def reductionPivot2415 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound2415 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1263).moment H =
      Integer.Sparse.eval reductionProjection2415 (momentVector H) := by
  have heq : reductionPivot2415 = (fun u v => (normalNode1263).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1263).moment H = injectiveMoment H reductionPivot2415 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1263).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2415 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2415 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2415 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1186, oldProjection453, oldProjection1176, oldProjection767] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2415 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1078 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2415 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1186 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2415 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1078 hH))).trans (oldProjectionSound1186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2415 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2415 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection453 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2415 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2415 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1613 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2415 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1176 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2415 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1613 hH))).trans (oldProjectionSound1176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2415 (3 : Fin 4)) = canonicalInput2751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2415 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection767 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2415 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2751 hH))).trans (oldProjectionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1263).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2415 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1263).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2415 (j : Fin 4)))
      2 1440 1440 2 ![72, 1, 720, 144] ![20, 1440, 2, 10] reductionProjection2415 ![oldProjection1186, oldProjection453, oldProjection1176, oldProjection767]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2416 : Integer.Sparse (Fin 1613) := [(127, -9), (241, -1), (243, -2), (288, -9), (298, -9), (698, 1), (704, -1)]

def reductionPivot2416 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 2, -1, -1], ![2, 0, -1, -1]]

theorem reductionSound2416 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode1266).moment H =
      Integer.Sparse.eval reductionProjection2416 (momentVector H) := by
  have heq : reductionPivot2416 = (fun u v => (normalNode1266).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1266).moment H = injectiveMoment H reductionPivot2416 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1266).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2416 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2416 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2416 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection396, oldProjection456, oldProjection774, oldProjection450] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2416 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node396⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2416 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection396 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2416 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection396 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound396 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2416 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2416 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2416 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2416 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1627 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2416 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection774 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2416 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1627 hH))).trans (oldProjectionSound774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2416 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1634 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2416 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection450 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2416 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1634 hH))).trans (oldProjectionSound450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1266).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2416 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1266).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2416 (j : Fin 4)))
      2 18 18 2 ![1, 1, 9, 1] ![18, 18, 2, 18] reductionProjection2416 ![oldProjection396, oldProjection456, oldProjection774, oldProjection450]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2417 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -20), (130, -360), (241, -80), (243, -80), (303, -360), (698, -160), (704, -80), (1251, 15)]

def reductionPivot2417 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound2417 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1267).moment H =
      Integer.Sparse.eval reductionProjection2417 (momentVector H) := by
  have heq : reductionPivot2417 = (fun u v => (normalNode1267).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1267).moment H = injectiveMoment H reductionPivot2417 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1267).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2417 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2417 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2417 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection398, reductionProjection2266, oldProjection769, oldProjection769] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2417 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node398⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2417 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection398 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2417 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2417 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code303).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2417 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2417 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2417 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1642 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2417 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2417 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1642 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2417 (3 : Fin 4)) = canonicalInput2766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2417 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2417 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2766 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1267).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2417 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1267).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2417 (j : Fin 4)))
      2 720 720 2 ![1, 1, 720, 720] ![720, 720, 1, 1] reductionProjection2417 ![oldProjection398, reductionProjection2266, oldProjection769, oldProjection769]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2418 : Integer.Sparse (Fin 1613) := [(3, -4), (20, 3), (94, -2), (243, 16), (1251, -1)]

def reductionPivot2418 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -3, 4], ![0, -1, 3, -2], ![1, 0, 1, -2]]

theorem reductionSound2418 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9720).moment H =
      Integer.Sparse.eval reductionProjection2418 (momentVector H) := by
  have heq : reductionPivot2418 = (fun u v => (normalNode9720).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9720).moment H = injectiveMoment H reductionPivot2418 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9720).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot2418 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2418 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 16, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2418 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection143, oldProjection52, oldProjection155] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2418 (0 : Fin 3)) = canonicalInput22495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2418 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection143 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2418 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22495 hH))).trans (oldProjectionSound143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2418 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7021 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2418 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection52 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2418 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection52 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7021 hH))).trans (oldProjectionSound52 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2418 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7004 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2418 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2418 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7004 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9720).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2418 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9720).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2418 (j : Fin 3)))
      3 144 144 3 ![48, 16, 48] ![3, 9, 3] reductionProjection2418 ![oldProjection143, oldProjection52, oldProjection155]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2419 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 40), (20, -25), (94, -35), (243, -240), (686, 480), (692, 240), (698, -80), (700, -80), (704, -160), (1251, -35)]

def reductionPivot2419 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound2419 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1433).moment H =
      Integer.Sparse.eval reductionProjection2419 (momentVector H) := by
  have heq : reductionPivot2419 = (fun u v => (normalNode1433).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1433).moment H = injectiveMoment H reductionPivot2419 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1433).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2419 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2419 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2419 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2418, oldProjection1166, oldProjection1170, reductionProjection2366] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2419 (0 : Fin 4)) = canonicalInput6321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2419 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2419 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6321 hH))).trans (reductionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2419 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1714 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2419 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1166 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2419 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1714 hH))).trans (oldProjectionSound1166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2419 (2 : Fin 4)) = canonicalInput2812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2419 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2419 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2812 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2419 (3 : Fin 4)) = canonicalInput2810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2419 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2419 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2810 hH))).trans (reductionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1433).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2419 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1433).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2419 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 720, 144] ![10, 160, 2, 10] reductionProjection2419 ![reductionProjection2418, oldProjection1166, oldProjection1170, reductionProjection2366]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2420 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -220), (20, 30), (38, -480), (94, 90), (108, 80), (243, 240), (247, 320), (332, 720), (686, -480), (692, -240), (698, 80), (700, 240), (704, 160), (1053, -240), (1059, 80), (1251, 85)]

def reductionPivot2420 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound2420 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1268).moment H =
      Integer.Sparse.eval reductionProjection2420 (momentVector H) := by
  have heq : reductionPivot2420 = (fun u v => (normalNode1268).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1268).moment H = injectiveMoment H reductionPivot2420 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1268).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2420 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2420 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2420 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1484, oldProjection1170, oldProjection1170, oldProjection1615, reductionProjection2419] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2420 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1484⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1484 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2420 (1 : Fin 5)) = canonicalInput2717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2717 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2420 (2 : Fin 5)) = canonicalInput2797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2797 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2420 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1615⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1615 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2420 (4 : Fin 5)) = canonicalInput2801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2419 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2420 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2801 hH))).trans (reductionSound2419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1268).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2420 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1268).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2420 (j : Fin 5)))
      1 1440 1440 1 ![720, 720, 720, 1440, 1440] ![2, 2, 2, 1, 1] reductionProjection2420 ![oldProjection1484, oldProjection1170, oldProjection1170, oldProjection1615, reductionProjection2419]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2421 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -28), (20, 10), (38, -96), (94, 19), (241, 16), (243, 80), (247, 16), (686, -96), (698, 64), (700, 48), (701, 32), (704, 144), (1061, -48), (1223, -96), (1225, 16), (1226, 16), (1251, 18)]

def reductionPivot2421 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound2421 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1270).moment H =
      Integer.Sparse.eval reductionProjection2421 (momentVector H) := by
  have heq : reductionPivot2421 = (fun u v => (normalNode1270).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1270).moment H = injectiveMoment H reductionPivot2421 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1270).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2421 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2421 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2421 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1486, oldProjection1171, reductionProjection2399, oldProjection1551, reductionProjection2310] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2421 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2421 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1524 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1524 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2421 (2 : Fin 5)) = canonicalInput2799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2399 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2799 hH))).trans (reductionSound2399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2421 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1655 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1551 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1655 hH))).trans (oldProjectionSound1551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2421 (4 : Fin 5)) = canonicalInput2803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2310 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2421 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2803 hH))).trans (reductionSound2310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1270).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2421 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1270).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2421 (j : Fin 5)))
      1 288 1440 5 ![1440, 144, 1440, 1440, 288] ![1, 10, 1, 1, 5] reductionProjection2421 ![oldProjection1486, oldProjection1171, reductionProjection2399, oldProjection1551, reductionProjection2310]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2422 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (94, -35), (241, -320), (243, -160), (247, -80), (283, -720), (326, -720), (698, -240), (704, -80), (1251, 20)]

def reductionPivot2422 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, -1, 4], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound2422 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1398).moment H =
      Integer.Sparse.eval reductionProjection2422 (momentVector H) := by
  have heq : reductionPivot2422 = (fun u v => (normalNode1398).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1398).moment H = injectiveMoment H reductionPivot2422 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1398).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2422 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2422 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2422 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1113, oldProjection464, oldProjection769, oldProjection447] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2422 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2986 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2422 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2422 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2986 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2422 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node464⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2422 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2422 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2422 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1642 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2422 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2422 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1642 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2422 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1640 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2422 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2422 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1640 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1398).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2422 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1398).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2422 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 720, 1] ![10, 1440, 2, 1440] reductionProjection2422 ![oldProjection1113, oldProjection464, oldProjection769, oldProjection447]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2423 : Integer.Sparse (Fin 1613) := [(283, -1), (324, -1), (326, -1), (327, -1)]

def reductionPivot2423 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 2, -2, -1]]

theorem reductionSound2423 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1278).moment H =
      Integer.Sparse.eval reductionProjection2423 (momentVector H) := by
  have heq : reductionPivot2423 = (fun u v => (normalNode1278).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1278).moment H = injectiveMoment H reductionPivot2423 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1278).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2423 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2423 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2423 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection465, oldProjection447, reductionProjection2406, oldProjection464] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2423 (0 : Fin 4)) = canonicalInput1326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2423 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection465 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2423 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1326 hH))).trans (oldProjectionSound465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2423 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1640 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2423 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2423 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1640 hH))).trans (oldProjectionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2423 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code324).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2423 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2406 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2423 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2406 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2423 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node464⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2423 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2423 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1278).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2423 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1278).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2423 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2423 ![oldProjection465, oldProjection447, reductionProjection2406, oldProjection464]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2424 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -56), (20, 1), (94, 34), (241, 176), (243, 64), (247, 96), (283, 288), (324, 144), (326, 288), (327, 288), (698, 96), (704, 32), (1251, 2)]

def reductionPivot2424 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound2424 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1271).moment H =
      Integer.Sparse.eval reductionProjection2424 (momentVector H) := by
  have heq : reductionPivot2424 = (fun u v => (normalNode1271).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1271).moment H = injectiveMoment H reductionPivot2424 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1271).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot2424 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2424 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2424 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1273, oldProjection464, reductionProjection2422, reductionProjection2423, reductionProjection1968] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2424 (0 : Fin 5)) = canonicalInput1313.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1273 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1313 hH))).trans (reductionSound1273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2424 (1 : Fin 5)) = canonicalInput2719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2719 hH))).trans (oldProjectionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2424 (2 : Fin 5)) = canonicalInput2800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2422 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2800 hH))).trans (reductionSound2422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2424 (3 : Fin 5)) = canonicalInput2804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2423 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2804 hH))).trans (reductionSound2423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2424 (4 : Fin 5)) = canonicalInput2806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1968 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2424 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2806 hH))).trans (reductionSound1968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1271).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2424 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1271).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2424 (j : Fin 5)))
      1 288 1440 5 ![1440, 1, 1440, 2, 1440] ![1, 1440, 1, 720, 1] reductionProjection2424 ![reductionProjection1273, oldProjection464, reductionProjection2422, reductionProjection2423, reductionProjection1968]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2425 : Integer.Sparse (Fin 1613) := [(94, -1), (247, -8), (704, -8), (1251, -1)]

def reductionPivot2425 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]

theorem reductionSound2425 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1273).moment H =
      Integer.Sparse.eval reductionProjection2425 (momentVector H) := by
  have heq : reductionPivot2425 = (fun u v => (normalNode1273).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1273).moment H = injectiveMoment H reductionPivot2425 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1273).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2425 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2425 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2425 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1168, oldProjection253, oldProjection1341, oldProjection1170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2425 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1129 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2425 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1168 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2425 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1129 hH))).trans (oldProjectionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2425 (1 : Fin 4)) = canonicalInput2723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2425 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection253 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2425 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2723 hH))).trans (oldProjectionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2425 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1665 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2425 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2425 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1665 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2425 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1668 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2425 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2425 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1668 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1273).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2425 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1273).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2425 (j : Fin 4)))
      2 72 720 20 ![720, 240, 720, 720] ![1, 3, 1, 1] reductionProjection2425 ![oldProjection1168, oldProjection253, oldProjection1341, oldProjection1170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2426 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (38, 240), (94, -25), (243, -80), (247, -80), (686, 240), (1251, -20)]

def reductionPivot2426 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]

theorem reductionSound2426 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1274).moment H =
      Integer.Sparse.eval reductionProjection2426 (momentVector H) := by
  have heq : reductionPivot2426 = (fun u v => (normalNode1274).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1274).moment H = injectiveMoment H reductionPivot2426 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1274).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2426 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2426 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2426 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection996, oldProjection246, reductionProjection2366, oldProjection1170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2426 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1131 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2426 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection996 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2426 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1131 hH))).trans (oldProjectionSound996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2426 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1528 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2426 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2426 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1528 hH))).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2426 (2 : Fin 4)) = canonicalInput2810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2426 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2426 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2810 hH))).trans (reductionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2426 (3 : Fin 4)) = canonicalInput2812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2426 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2426 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2812 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1274).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2426 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1274).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2426 (j : Fin 4)))
      2 1440 1440 2 ![144, 48, 144, 720] ![10, 30, 10, 2] reductionProjection2426 ![oldProjection996, oldProjection246, reductionProjection2366, oldProjection1170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2427 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (43, -24), (94, 1), (244, 8), (246, 8), (701, 8), (704, 8)]

def reductionPivot2427 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![-1, 4, -2, -1], ![4, -4, 1, -1]]

theorem reductionSound2427 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode6514).moment H =
      Integer.Sparse.eval reductionProjection2427 (momentVector H) := by
  have heq : reductionPivot2427 = (fun u v => (normalNode6514).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6514).moment H = injectiveMoment H reductionPivot2427 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6514).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6514).entries)).symm
  have hshape : reductionPivot2427 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2427 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2427 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection258, oldProjection156, oldProjection190] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2427 (0 : Fin 3)) = canonicalInput487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2427 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2427 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound487 hH))).trans (reductionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2427 (1 : Fin 3)) = canonicalInput8130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2427 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection156 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2427 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8130 hH))).trans (oldProjectionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2427 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3654 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2427 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection190 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2427 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3654 hH))).trans (oldProjectionSound190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6514).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2427 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6514).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2427 (j : Fin 3)))
      3 72 144 6 ![1, 48, 48] ![144, 3, 3] reductionProjection2427 ![reductionProjection258, oldProjection156, oldProjection190]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2428 : Integer.Sparse (Fin 1613) := [(43, 24), (61, 24), (94, -1), (244, -8), (246, -8), (1061, 24), (1251, -1)]

def reductionPivot2428 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, -1, 0], ![1, 0, 3, -4], ![1, 1, -2, 0]]

theorem reductionSound2428 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1275).moment H =
      Integer.Sparse.eval reductionProjection2428 (momentVector H) := by
  have heq : reductionPivot2428 = (fun u v => (normalNode1275).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1275).moment H = injectiveMoment H reductionPivot2428 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1275).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2428 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2428 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2428 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection813, oldProjection190, reductionProjection2427, oldProjection981] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2428 (0 : Fin 4)) = canonicalInput1321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2428 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection813 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2428 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1321 hH))).trans (oldProjectionSound813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2428 (1 : Fin 4)) = canonicalInput2724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2428 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection190 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2428 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2724 hH))).trans (oldProjectionSound190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2428 (2 : Fin 4)) = canonicalInput2811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2428 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2427 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2428 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2811 hH))).trans (reductionSound2427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2428 (3 : Fin 4)) = canonicalInput2813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2428 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection981 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2428 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2813 hH))).trans (oldProjectionSound981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1275).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2428 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1275).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2428 (j : Fin 4)))
      2 144 144 2 ![144, 48, 72, 72] ![1, 3, 2, 2] reductionProjection2428 ![oldProjection813, oldProjection190, reductionProjection2427, oldProjection981]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2429 : Integer.Sparse (Fin 1613) := [(19, 6), (20, -1), (38, 12), (94, -3), (686, 12), (698, -8), (700, -12), (701, -8), (704, -20), (1061, 12), (1251, -2)]

def reductionPivot2429 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]

theorem reductionSound2429 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode1277).moment H =
      Integer.Sparse.eval reductionProjection2429 (momentVector H) := by
  have heq : reductionPivot2429 = (fun u v => (normalNode1277).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1277).moment H = injectiveMoment H reductionPivot2429 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1277).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2429 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2429 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2429 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection997, oldProjection767, oldProjection1097, oldProjection1171] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2429 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1144 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2429 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2429 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1144 hH))).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2429 (1 : Fin 4)) = canonicalInput2750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2429 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection767 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2429 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2750 hH))).trans (oldProjectionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2429 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1690 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2429 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2429 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1690 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2429 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1694 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2429 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1171 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2429 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1694 hH))).trans (oldProjectionSound1171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1277).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2429 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1277).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2429 (j : Fin 4)))
      2 72 144 4 ![72, 144, 144, 144] ![2, 1, 1, 1] reductionProjection2429 ![oldProjection997, oldProjection767, oldProjection1097, oldProjection1171]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2430 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 160), (20, -15), (38, 240), (42, -80), (94, -55), (243, -320), (247, -80), (698, -160), (700, -80), (704, -480), (1251, -85)]

def reductionPivot2430 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound2430 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1280).moment H =
      Integer.Sparse.eval reductionProjection2430 (momentVector H) := by
  have heq : reductionPivot2430 = (fun u v => (normalNode1280).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1280).moment H = injectiveMoment H reductionPivot2430 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1280).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2430 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2430 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2430 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection996, oldProjection779, oldProjection1080, oldProjection1042] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2430 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1157 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2430 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection996 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2430 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1157 hH))).trans (oldProjectionSound996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2430 (1 : Fin 4)) = canonicalInput2777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2430 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection779 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2430 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2777 hH))).trans (oldProjectionSound779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2430 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1705 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2430 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1080 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2430 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1705 hH))).trans (oldProjectionSound1080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2430 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1707 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2430 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2430 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1707 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1280).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2430 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1280).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2430 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 72, 720] ![10, 10, 20, 2] reductionProjection2430 ![oldProjection996, oldProjection779, oldProjection1080, oldProjection1042]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2431 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -15), (38, 240), (42, -80), (94, -25), (243, -160), (330, -720), (698, -160), (700, -240), (701, -80), (704, -160), (1061, 240), (1251, -35)]

def reductionPivot2431 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, -1, 4], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound2431 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1281).moment H =
      Integer.Sparse.eval reductionProjection2431 (momentVector H) := by
  have heq : reductionPivot2431 = (fun u v => (normalNode1281).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1281).moment H = injectiveMoment H reductionPivot2431 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1281).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot2431 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2431 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2431 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection997, oldProjection780, oldProjection467, oldProjection1042] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2431 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1158 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2431 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2431 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1158 hH))).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2431 (1 : Fin 4)) = canonicalInput2778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2431 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2431 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2778 hH))).trans (oldProjectionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2431 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2431 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2431 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2431 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1708 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2431 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1042 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2431 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1708 hH))).trans (oldProjectionSound1042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1281).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2431 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1281).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2431 (j : Fin 4)))
      2 1440 1440 2 ![72, 144, 1, 720] ![20, 10, 1440, 2] reductionProjection2431 ![oldProjection997, oldProjection780, oldProjection467, oldProjection1042]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

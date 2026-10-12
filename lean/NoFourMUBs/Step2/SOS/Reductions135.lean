import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical024
import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical062
import NoFourMUBs.Step2.SOS.Canonical063
import NoFourMUBs.Step2.SOS.Canonical064
import NoFourMUBs.Step2.SOS.Canonical065
import NoFourMUBs.Step2.SOS.Canonical066
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical081
import NoFourMUBs.Step2.SOS.Canonical082
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical117
import NoFourMUBs.Step2.SOS.Canonical211
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions134
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical106
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical177
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical253
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical56
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical58
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical59
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical60
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical63
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical64
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical65
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical77
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection4320 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -40), (20, 5), (42, 80), (56, -240), (76, -480), (81, -240), (84, -360), (90, 80), (94, 45), (243, 80), (428, 360), (432, 720), (682, -480), (683, -240), (695, -120), (697, -480), (698, 360), (700, 280), (701, 40), (704, 160), (1058, -240), (1059, 80), (1226, 80), (1250, 60), (1251, 20), (1321, -240), (1323, -240), (1389, -240)]

def reductionPivot4320 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -3, -1]]

theorem reductionSound4320 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1764).moment H =
      Integer.Sparse.eval reductionProjection4320 (momentVector H) := by
  have heq : reductionPivot4320 = (fun u v => (normalNode1764).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1764).moment H = injectiveMoment H reductionPivot4320 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1764).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4320 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4320 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 144, 144, 72, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4320 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1220, reductionProjection4317, reductionProjection4317, reductionProjection4319, oldProjection1674] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4320 (0 : Fin 5)) = (normalNode645).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1220 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4320 (1 : Fin 5)) = (normalNode1848).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4320 (2 : Fin 5)) = canonicalInput3985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3985 hH))).trans (reductionSound4317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4320 (3 : Fin 5)) = (normalNode2008).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4319 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4320 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1674 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4320 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1764).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4320 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1764).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4320 (j : Fin 5)))
      1 720 720 1 ![144, 144, 144, 72, 720] ![5, 5, 5, 10, 1] reductionProjection4320 ![reductionProjection1220, reductionProjection4317, reductionProjection4317, reductionProjection4319, oldProjection1674]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4321 : Integer.Sparse (Fin 1613) := [(0, 3), (56, 240), (81, 480), (90, -80), (94, -15), (697, 240), (698, -400), (1058, 480), (1226, -160), (1227, -240), (1251, 10), (1389, 240)]

def reductionPivot4321 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound4321 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1851).moment H =
      Integer.Sparse.eval reductionProjection4321 (momentVector H) := by
  have heq : reductionPivot4321 = (fun u v => (normalNode1851).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1851).moment H = injectiveMoment H reductionPivot4321 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1851).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4321 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4321 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4321 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1276, reductionProjection4126, oldProjection944, oldProjection1277] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4321 (0 : Fin 4)) = canonicalInput4898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4321 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4321 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4898 hH))).trans (oldProjectionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4321 (1 : Fin 4)) = canonicalInput3871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4321 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4321 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3871 hH))).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4321 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1794 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4321 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection944 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4321 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1794 hH))).trans (oldProjectionSound944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4321 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1793 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4321 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4321 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1793 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1851).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4321 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1851).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4321 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 720, 720] ![2, 160, 2, 2] reductionProjection4321 ![oldProjection1276, reductionProjection4126, oldProjection944, oldProjection1277]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4322 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -80), (56, -480), (81, -1440), (90, 160), (94, 145), (695, -240), (697, -960), (698, 1360), (700, 320), (1058, -960), (1059, 320), (1226, 320), (1227, 480), (1250, 240), (1251, -260), (1389, -960)]

def reductionPivot4322 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound4322 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1765).moment H =
      Integer.Sparse.eval reductionProjection4322 (momentVector H) := by
  have heq : reductionPivot4322 = (fun u v => (normalNode1765).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1765).moment H = injectiveMoment H reductionPivot4322 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1765).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4322 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4322 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4322 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection781, reductionProjection4321, reductionProjection4321, oldProjection1674, oldProjection2419] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4322 (0 : Fin 5)) = canonicalInput1562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection781 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1562 hH))).trans (reductionSound781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4322 (1 : Fin 5)) = (normalNode1851).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4321 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4322 (2 : Fin 5)) = canonicalInput3986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4321 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3986 hH))).trans (reductionSound4321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4322 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1674 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4322 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1885 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2419 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4322 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1885 hH))).trans (oldProjectionSound2419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1765).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4322 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1765).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4322 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 720, 1440] ![1, 1, 1, 2, 1] reductionProjection4322 ![reductionProjection781, reductionProjection4321, reductionProjection4321, oldProjection1674, oldProjection2419]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4323 : Integer.Sparse (Fin 1613) := [(0, 3), (56, 240), (58, 240), (81, 480), (94, -25), (431, -720), (697, 240), (698, -160), (700, -80), (1058, 240), (1227, -80)]

def reductionPivot4323 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]

theorem reductionSound4323 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1782).moment H =
      Integer.Sparse.eval reductionProjection4323 (momentVector H) := by
  have heq : reductionPivot4323 = (fun u v => (normalNode1782).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1782).moment H = injectiveMoment H reductionPivot4323 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1782).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4323 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4323 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4323 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection784, reductionProjection2388, reductionProjection2390, oldProjection801] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4323 (0 : Fin 4)) = canonicalInput1597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4323 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection784 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4323 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1597 hH))).trans (reductionSound784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4323 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code431).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4323 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2388 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4323 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2388 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4323 (2 : Fin 4)) = canonicalInput4024.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4323 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2390 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4323 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4024 hH))).trans (reductionSound2390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4323 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1938 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4323 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection801 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4323 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1938 hH))).trans (oldProjectionSound801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1782).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4323 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1782).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4323 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 3, 720] ![480, 1440, 480, 2] reductionProjection4323 ![reductionProjection784, reductionProjection2388, reductionProjection2390, oldProjection801]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4324 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (56, -480), (58, -360), (81, -960), (94, 75), (420, 360), (431, 720), (695, -120), (697, -480), (698, 480), (700, 240), (1058, -480), (1059, 120), (1227, 160), (1250, 60), (1251, -40), (1389, -240)]

def reductionPivot4324 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]

theorem reductionSound4324 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1766).moment H =
      Integer.Sparse.eval reductionProjection4324 (momentVector H) := by
  have heq : reductionPivot4324 = (fun u v => (normalNode1766).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1766).moment H = injectiveMoment H reductionPivot4324 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1766).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4324 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4324 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4324 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection785, reductionProjection4323, reductionProjection4323, reductionProjection2552, oldProjection2420] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4324 (0 : Fin 5)) = canonicalInput1563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1563 hH))).trans (reductionSound785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4324 (1 : Fin 5)) = canonicalInput3842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4323 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3842 hH))).trans (reductionSound4323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4324 (2 : Fin 5)) = canonicalInput3987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4323 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3987 hH))).trans (reductionSound4323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4324 (3 : Fin 5)) = (normalNode2009).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2552 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4324 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1886 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2420 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4324 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2420 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1886 hH))).trans (oldProjectionSound2420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1766).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4324 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1766).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4324 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1440, 720, 1440] ![1, 1, 1, 2, 1] reductionProjection4324 ![reductionProjection785, reductionProjection4323, reductionProjection4323, reductionProjection2552, oldProjection2420]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4325 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -40), (94, 35), (241, 240), (426, 720), (697, -240), (698, 160), (700, 160), (1055, -240), (1058, -240), (1059, 240), (1226, 160), (1227, 160), (1250, 60), (1251, 40)]

def reductionPivot4325 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1]]

theorem reductionSound4325 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1767).moment H =
      Integer.Sparse.eval reductionProjection4325 (momentVector H) := by
  have heq : reductionPivot4325 = (fun u v => (normalNode1767).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1767).moment H = injectiveMoment H reductionPivot4325 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1767).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4325 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4325 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4325 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1504, oldProjection1647, oldProjection974, oldProjection2422, oldProjection2742] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4325 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1504⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1504 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4325 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1647 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4325 (2 : Fin 5)) = canonicalInput3988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3988 hH))).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4325 (3 : Fin 5)) = canonicalInput4002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2422 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4002 hH))).trans (oldProjectionSound2422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4325 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1896 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2742 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4325 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1896 hH))).trans (oldProjectionSound2742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1767).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4325 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1767).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4325 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 720, 1440, 720] ![5, 1, 2, 1, 2] reductionProjection4325 ![oldProjection1504, oldProjection1647, oldProjection974, oldProjection2422, oldProjection2742]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4326 : Integer.Sparse (Fin 1613) := [(94, -1), (395, -144), (423, -144), (698, -16), (775, -144), (1052, 48), (1221, 48), (1226, -16), (1251, 3)]

def reductionPivot4326 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![2, -1, 1, -2]]

theorem reductionSound4326 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1859).moment H =
      Integer.Sparse.eval reductionProjection4326 (momentVector H) := by
  have heq : reductionPivot4326 = (fun u v => (normalNode1859).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1859).moment H = injectiveMoment H reductionPivot4326 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1859).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4326 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4326 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4326 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection588, oldProjection1223, reductionProjection4078, oldProjection472] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4326 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4326 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4326 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4326 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1919 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4326 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1223 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4326 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1919 hH))).trans (oldProjectionSound1223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4326 (2 : Fin 4)) = canonicalInput3848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4326 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4326 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3848 hH))).trans (reductionSound4078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4326 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node472⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4326 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection472 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4326 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1859).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4326 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1859).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4326 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection4326 ![oldProjection588, oldProjection1223, reductionProjection4078, oldProjection472]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4327 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -20), (53, -240), (72, -480), (73, -240), (76, -480), (79, -480), (94, -55), (241, 80), (395, 720), (423, 720), (691, -240), (698, 320), (775, 720), (1050, -720), (1052, -1200), (1058, -240), (1221, -720), (1226, 240), (1251, 45)]

def reductionPivot4327 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, -1, 1, -2]]

theorem reductionSound4327 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1768).moment H =
      Integer.Sparse.eval reductionProjection4327 (momentVector H) := by
  have heq : reductionPivot4327 = (fun u v => (normalNode1768).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1768).moment H = injectiveMoment H reductionPivot4327 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1768).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4327 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4327 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 144, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4327 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1328, reductionProjection4326, oldProjection1223, oldProjection1680, reductionProjection1489] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4327 (0 : Fin 5)) = (normalNode661).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1328 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1328 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4327 (1 : Fin 5)) = (normalNode1859).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4326 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4327 (2 : Fin 5)) = canonicalInput3990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1223 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3990 hH))).trans (oldProjectionSound1223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4327 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1680⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1680 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4327 (4 : Fin 5)) = canonicalInput4004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1489 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4327 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1489 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4004 hH))).trans (reductionSound1489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1768).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4327 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1768).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4327 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 144, 1440, 288] ![10, 5, 10, 1, 5] reductionProjection4327 ![reductionProjection1328, reductionProjection4326, oldProjection1223, oldProjection1680, reductionProjection1489]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4328 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -30), (247, 80), (433, 360), (698, 280), (700, 40), (1055, -120), (1058, -120), (1219, -120), (1226, 80), (1227, 80), (1250, 30), (1251, -35)]

def reductionPivot4328 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound4328 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1769).moment H =
      Integer.Sparse.eval reductionProjection4328 (momentVector H) := by
  have heq : reductionPivot4328 = (fun u v => (normalNode1769).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1769).moment H = injectiveMoment H reductionPivot4328 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1769).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4328 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4328 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 144, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4328 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1505, oldProjection1648, oldProjection1202, oldProjection2748, oldProjection2425] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4328 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1505⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1505 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4328 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1648 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4328 (2 : Fin 5)) = canonicalInput3993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1202 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3993 hH))).trans (oldProjectionSound1202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4328 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1899 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2748 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1899 hH))).trans (oldProjectionSound2748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4328 (4 : Fin 5)) = canonicalInput4006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2425 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4328 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4006 hH))).trans (oldProjectionSound2425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1769).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4328 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1769).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4328 (j : Fin 5)))
      1 720 1440 2 ![72, 144, 720, 1440, 1440] ![20, 10, 2, 1, 1] reductionProjection4328 ![oldProjection1505, oldProjection1648, oldProjection1202, oldProjection2748, oldProjection2425]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4329 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 48), (94, -8), (431, -144), (433, -144), (697, 48), (698, -32), (700, -16), (1227, -16), (1251, -1)]

def reductionPivot4329 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound4329 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode1861).moment H =
      Integer.Sparse.eval reductionProjection4329 (momentVector H) := by
  have heq : reductionPivot4329 = (fun u v => (normalNode1861).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1861).moment H = injectiveMoment H reductionPivot4329 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1861).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4329 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4329 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4329 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1007, oldProjection801, oldProjection476, reductionProjection2388] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4329 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3083 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4329 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1007 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4329 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3083 hH))).trans (oldProjectionSound1007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4329 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1938 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4329 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection801 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4329 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1938 hH))).trans (oldProjectionSound801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4329 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1797 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4329 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4329 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1797 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4329 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code431).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4329 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2388 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4329 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2388 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1861).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4329 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1861).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4329 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 1, 1] ![2, 2, 1440, 1440] reductionProjection4329 ![oldProjection1007, oldProjection801, oldProjection476, reductionProjection2388]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4330 : Integer.Sparse (Fin 1613) := [(0, 3), (58, 120), (81, 360), (94, -30), (698, -240), (700, -120), (704, -40), (1059, -80), (1227, -40), (1251, -5)]

def reductionPivot4330 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound4330 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2027).moment H =
      Integer.Sparse.eval reductionProjection4330 (momentVector H) := by
  have heq : reductionPivot4330 = (fun u v => (normalNode2027).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2027).moment H = injectiveMoment H reductionPivot4330 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2027).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4330 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4330 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 36, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4330 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection842, oldProjection1098, oldProjection809, oldProjection1013] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4330 (0 : Fin 4)) = canonicalInput5212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4330 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection842 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4330 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5212 hH))).trans (oldProjectionSound842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4330 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2070 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4330 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4330 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2070 hH))).trans (oldProjectionSound1098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4330 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2046 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4330 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection809 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4330 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2046 hH))).trans (oldProjectionSound809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4330 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2045 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4330 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1013 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4330 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2045 hH))).trans (oldProjectionSound1013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2027).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4330 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2027).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4330 (j : Fin 4)))
      2 720 720 2 ![360, 720, 36, 720] ![2, 1, 20, 1] reductionProjection4330 ![oldProjection842, oldProjection1098, oldProjection809, oldProjection1013]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4331 : Integer.Sparse (Fin 1613) := [(0, -1), (56, -60), (58, -60), (81, -240), (94, 15), (247, 20), (431, 180), (433, 180), (697, -180), (698, 180), (700, 80), (704, 20), (1055, -60), (1058, -60), (1059, 40), (1219, -120), (1227, 60)]

def reductionPivot4331 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound4331 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode1770).moment H =
      Integer.Sparse.eval reductionProjection4331 (momentVector H) := by
  have heq : reductionPivot4331 = (fun u v => (normalNode1770).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1770).moment H = injectiveMoment H reductionPivot4331 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1770).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4331 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4331 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4331 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1082, reductionProjection4329, oldProjection801, reductionProjection4330, oldProjection2425] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4331 (0 : Fin 5)) = (normalNode663).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1082 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4331 (1 : Fin 5)) = (normalNode1861).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4329 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4331 (2 : Fin 5)) = canonicalInput3994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection801 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3994 hH))).trans (oldProjectionSound801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4331 (3 : Fin 5)) = (normalNode2027).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4330 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4330 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4331 (4 : Fin 5)) = canonicalInput4007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2425 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4331 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4007 hH))).trans (oldProjectionSound2425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1770).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4331 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1770).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4331 (j : Fin 5)))
      1 360 1440 4 ![1440, 288, 720, 720, 1440] ![1, 5, 2, 2, 1] reductionProjection4331 ![reductionProjection1082, reductionProjection4329, oldProjection801, reductionProjection4330, oldProjection2425]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4332 : Integer.Sparse (Fin 1613) := [(56, 1), (81, 1), (420, -3), (428, -3), (695, 1), (698, -1), (700, -1), (1059, -1)]

def reductionPivot4332 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, 0, -3, 1]]

theorem reductionSound4332 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode1862).moment H =
      Integer.Sparse.eval reductionProjection4332 (momentVector H) := by
  have heq : reductionPivot4332 = (fun u v => (normalNode1862).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1862).moment H = injectiveMoment H reductionPivot4332 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1862).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4332 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4332 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4332 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1235, reductionProjection783, reductionProjection4307, reductionProjection2377] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4332 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3416 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4332 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4332 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3416 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4332 (1 : Fin 4)) = canonicalInput4038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4332 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection783 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4332 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4038 hH))).trans (reductionSound783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4332 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code428).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4332 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4332 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4332 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code420).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4332 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2377 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4332 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1862).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4332 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1862).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4332 (j : Fin 4)))
      2 6 18 6 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection4332 ![oldProjection1235, reductionProjection783, reductionProjection4307, reductionProjection2377]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4333 : Integer.Sparse (Fin 1613) := [(42, 1), (60, 1), (701, 1)]

def reductionPivot4333 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, 0, 3], ![0, 0, 3, -3], ![0, 2, -3, 1]]

theorem reductionSound4333 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6793).moment H =
      Integer.Sparse.eval reductionProjection4333 (momentVector H) := by
  have heq : reductionPivot4333 = (fun u v => (normalNode6793).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6793).moment H = injectiveMoment H reductionPivot4333 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6793).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot4333 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4333 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4333 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection37, oldProjection88, oldProjection93] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4333 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8097 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4333 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection37 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4333 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection37 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8097 hH))).trans (oldProjectionSound37 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4333 (1 : Fin 3)) = canonicalInput13549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4333 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection88 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4333 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection88 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13549 hH))).trans (oldProjectionSound88 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4333 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5699 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4333 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection93 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4333 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5699 hH))).trans (oldProjectionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6793).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4333 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6793).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4333 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection4333 ![oldProjection37, oldProjection88, oldProjection93]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4334 : Integer.Sparse (Fin 1613) := [(42, -1), (56, 3), (60, -1), (90, -1), (695, 3), (698, -1), (700, -6), (701, -1), (1059, -1)]

def reductionPivot4334 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 0, 2, -2], ![0, 2, -3, 1], ![1, 0, 0, -1]]

theorem reductionSound4334 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6768).moment H =
      Integer.Sparse.eval reductionProjection4334 (momentVector H) := by
  have heq : reductionPivot4334 = (fun u v => (normalNode6768).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6768).moment H = injectiveMoment H reductionPivot4334 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6768).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4334 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4334 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4334 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection843, reductionProjection4333, oldProjection806, reductionProjection783] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4334 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node843⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4334 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection843 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4334 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4334 (1 : Fin 4)) = (normalNode6793).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4334 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4333 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4334 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4334 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node806⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4334 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection806 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4334 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4334 (3 : Fin 4)) = (normalNode6784).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4334 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection783 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4334 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6768).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4334 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6768).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4334 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection4334 ![oldProjection843, reductionProjection4333, oldProjection806, reductionProjection783]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4335 : Integer.Sparse (Fin 1613) := [(0, -9), (38, -240), (42, 160), (56, -960), (60, 80), (77, -240), (79, -240), (81, -480), (90, 320), (94, 40), (163, 720), (420, 720), (428, 720), (486, 720), (695, -720), (697, -240), (698, 1520), (700, 1760), (701, 160), (1052, -240), (1058, -240), (1059, 1120), (1226, 160), (1227, 80), (1251, -135)]

def reductionPivot4335 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 0, -3, 1]]

theorem reductionSound4335 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1771).moment H =
      Integer.Sparse.eval reductionProjection4335 (momentVector H) := by
  have heq : reductionPivot4335 = (fun u v => (normalNode1771).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1771).moment H = injectiveMoment H reductionPivot4335 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1771).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4335 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4335 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 6, 1440, 18, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4335 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1044, reductionProjection4332, reductionProjection4310, reductionProjection4334, oldProjection1684] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4335 (0 : Fin 5)) = (normalNode664).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1044 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1044 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4335 (1 : Fin 5)) = (normalNode1862).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4332 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4335 (2 : Fin 5)) = canonicalInput3997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4310 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3997 hH))).trans (reductionSound4310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4335 (3 : Fin 5)) = canonicalInput4008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4334 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4008 hH))).trans (reductionSound4334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4335 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1684⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1684 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4335 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1771).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4335 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1771).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4335 (j : Fin 5)))
      1 1440 1440 1 ![1440, 6, 1440, 18, 288] ![1, 240, 1, 80, 5] reductionProjection4335 ![reductionProjection1044, reductionProjection4332, reductionProjection4310, reductionProjection4334, oldProjection1684]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4336 : Integer.Sparse (Fin 1613) := [(420, -1), (431, -1), (432, -1), (433, -1)]

def reductionPivot4336 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]

theorem reductionSound4336 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1863).moment H =
      Integer.Sparse.eval reductionProjection4336 (momentVector H) := by
  have heq : reductionPivot4336 = (fun u v => (normalNode1863).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1863).moment H = injectiveMoment H reductionPivot4336 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1863).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot4336 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4336 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4336 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection476, reductionProjection2377, reductionProjection2388, reductionProjection150] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4336 (0 : Fin 4)) = canonicalInput7538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4336 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4336 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7538 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4336 (1 : Fin 4)) = canonicalInput4044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4336 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2377 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4336 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4044 hH))).trans (reductionSound2377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4336 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code431).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4336 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2388 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4336 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2388 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4336 (3 : Fin 4)) = canonicalInput3857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4336 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4336 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3857 hH))).trans (reductionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1863).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4336 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1863).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4336 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection4336 ![oldProjection476, reductionProjection2377, reductionProjection2388, reductionProjection150]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4337 : Integer.Sparse (Fin 1613) := [(58, -1), (84, -1), (1052, -1)]

def reductionPivot4337 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 3, 0], ![1, 2, 0, -3], ![2, -1, -3, 2]]

theorem reductionSound4337 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6953).moment H =
      Integer.Sparse.eval reductionProjection4337 (momentVector H) := by
  have heq : reductionPivot4337 = (fun u v => (normalNode6953).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6953).moment H = injectiveMoment H reductionPivot4337 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6953).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6953).entries)).symm
  have hshape : reductionPivot4337 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot4337 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4337 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection146, oldProjection198, oldProjection98] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4337 (0 : Fin 3)) = canonicalInput361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4337 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection146 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4337 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound361 hH))).trans (reductionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4337 (1 : Fin 3)) = canonicalInput5904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4337 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4337 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5904 hH))).trans (oldProjectionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4337 (2 : Fin 3)) = canonicalInput5917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4337 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection98 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4337 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection98 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5917 hH))).trans (oldProjectionSound98 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6953).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4337 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6953).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot4337 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection4337 ![reductionProjection146, oldProjection198, oldProjection98]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4338 : Integer.Sparse (Fin 1613) := [(58, 48), (76, 48), (81, 96), (84, 48), (94, -1), (487, -144), (682, 48), (698, -16), (1052, 48), (1221, 48), (1226, -16), (1251, 3)]

def reductionPivot4338 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 2, -3, 0]]

theorem reductionSound4338 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2029).moment H =
      Integer.Sparse.eval reductionProjection4338 (momentVector H) := by
  have heq : reductionPivot4338 = (fun u v => (normalNode2029).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2029).moment H = injectiveMoment H reductionPivot4338 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2029).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4338 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4338 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4338 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection824, reductionProjection4077, reductionProjection4337, reductionProjection2405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4338 (0 : Fin 4)) = canonicalInput5237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4338 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4338 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5237 hH))).trans (oldProjectionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4338 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code487).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4338 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4077 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4338 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4077 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4338 (2 : Fin 4)) = canonicalInput4125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4338 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4337 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4338 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4125 hH))).trans (reductionSound4337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4338 (3 : Fin 4)) = canonicalInput4124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4338 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2405 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4338 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4124 hH))).trans (reductionSound2405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2029).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4338 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2029).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4338 (j : Fin 4)))
      2 288 288 2 ![144, 1, 3, 3] ![2, 288, 96, 96] reductionProjection4338 ![oldProjection824, reductionProjection4077, reductionProjection4337, reductionProjection2405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4339 : Integer.Sparse (Fin 1613) := [(0, -2), (56, -120), (58, -240), (76, -120), (81, -960), (84, -120), (94, 45), (420, 720), (431, 360), (432, 360), (433, 360), (487, 360), (489, 360), (490, 360), (682, -120), (683, -120), (697, -120), (698, 320), (700, 40), (1052, -120), (1058, -120), (1059, 40), (1221, -120), (1226, 40), (1227, 80), (1251, -5), (1321, -120), (1323, -120), (1389, -480)]

def reductionPivot4339 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]

theorem reductionSound4339 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode1772).moment H =
      Integer.Sparse.eval reductionProjection4339 (momentVector H) := by
  have heq : reductionPivot4339 = (fun u v => (normalNode1772).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1772).moment H = injectiveMoment H reductionPivot4339 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1772).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4339 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4339 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4339 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1329, reductionProjection4336, reductionProjection2552, reductionProjection4338, oldProjection1685] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4339 (0 : Fin 5)) = (normalNode665).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1329 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4339 (1 : Fin 5)) = (normalNode1863).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4336 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4339 (2 : Fin 5)) = (normalNode2009).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2552 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4339 (3 : Fin 5)) = (normalNode2029).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4338 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4339 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1685 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4339 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1772).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4339 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1772).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4339 (j : Fin 5)))
      1 720 1440 2 ![1440, 2, 720, 288, 1440] ![1, 720, 2, 5, 1] reductionProjection4339 ![reductionProjection1329, reductionProjection4336, reductionProjection2552, reductionProjection4338, oldProjection1685]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4340 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (94, -15), (420, -720), (433, -720), (489, -720), (698, -80), (1251, -20), (1389, 240)]

def reductionPivot4340 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound4340 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1865).moment H =
      Integer.Sparse.eval reductionProjection4340 (momentVector H) := by
  have heq : reductionPivot4340 = (fun u v => (normalNode1865).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1865).moment H = injectiveMoment H reductionPivot4340 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1865).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4340 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4340 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4340 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection943, oldProjection490, oldProjection476, reductionProjection2377] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4340 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4340 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection943 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4340 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4340 (1 : Fin 4)) = canonicalInput4225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4340 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection490 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4340 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4225 hH))).trans (oldProjectionSound490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4340 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1797 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4340 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4340 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1797 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4340 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code420).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4340 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2377 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4340 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1865).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4340 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1865).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4340 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection4340 ![oldProjection943, oldProjection490, oldProjection476, reductionProjection2377]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4341 : Integer.Sparse (Fin 1613) := [(0, 8), (60, -80), (94, -35), (698, -560), (700, -640), (1059, -400), (1227, -80), (1251, 65)]

def reductionPivot4341 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound4341 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6766).moment H =
      Integer.Sparse.eval reductionProjection4341 (momentVector H) := by
  have heq : reductionPivot4341 = (fun u v => (normalNode6766).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6766).moment H = injectiveMoment H reductionPivot4341 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6766).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4341 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4341 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4341 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection853, oldProjection810, oldProjection802, oldProjection805] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4341 (0 : Fin 4)) = canonicalInput13897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4341 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection853 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4341 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13897 hH))).trans (oldProjectionSound853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4341 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node810⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4341 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection810 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4341 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4341 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5691 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4341 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection802 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4341 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5691 hH))).trans (oldProjectionSound802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4341 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node805⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4341 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection805 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4341 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6766).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4341 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6766).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4341 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 360, 720] ![2, 10, 4, 2] reductionProjection4341 ![oldProjection853, oldProjection810, oldProjection802, oldProjection805]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4342 : Integer.Sparse (Fin 1613) := [(0, -1), (56, -24), (60, 8), (81, -24), (94, 15), (247, 8), (420, 72), (433, 72), (489, 144), (697, -48), (698, 160), (700, 120), (1055, -24), (1058, -24), (1059, 72), (1219, -48), (1227, 40), (1251, -20), (1389, -24)]

def reductionPivot4342 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound4342 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode1773).moment H =
      Integer.Sparse.eval reductionProjection4342 (momentVector H) := by
  have heq : reductionPivot4342 = (fun u v => (normalNode1773).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1773).moment H = injectiveMoment H reductionPivot4342 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1773).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4342 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4342 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4342 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1082, reductionProjection4340, reductionProjection4341, oldProjection1686, oldProjection2424] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4342 (0 : Fin 5)) = canonicalInput1577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1082 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1577 hH))).trans (reductionSound1082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4342 (1 : Fin 5)) = (normalNode1865).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4340 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4342 (2 : Fin 5)) = canonicalInput3999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4341 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3999 hH))).trans (reductionSound4341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4342 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1686⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1686 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4342 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1915 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2424 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4342 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1915 hH))).trans (oldProjectionSound2424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1773).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4342 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1773).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4342 (j : Fin 5)))
      1 144 1440 10 ![1440, 1440, 1440, 360, 1440] ![1, 1, 1, 4, 1] reductionProjection4342 ![reductionProjection1082, reductionProjection4340, reductionProjection4341, oldProjection1686, oldProjection2424]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4343 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 240), (94, -15), (421, -720), (431, -720), (503, -720), (697, 240), (1251, -5)]

def reductionPivot4343 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 2, -3, 1], ![1, 0, 1, -2]]

theorem reductionSound4343 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1866).moment H =
      Integer.Sparse.eval reductionProjection4343 (momentVector H) := by
  have heq : reductionPivot4343 = (fun u v => (normalNode1866).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1866).moment H = injectiveMoment H reductionPivot4343 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1866).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot4343 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4343 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4343 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1007, reductionProjection1078, reductionProjection2388, reductionProjection4080] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4343 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4343 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1007 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4343 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4343 (1 : Fin 4)) = canonicalInput4228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4343 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4343 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4228 hH))).trans (reductionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4343 (2 : Fin 4)) = canonicalInput3859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4343 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2388 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4343 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2388 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3859 hH))).trans (reductionSound2388 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4343 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code421).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4343 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4080 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4343 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1866).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4343 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1866).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4343 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection4343 ![oldProjection1007, reductionProjection1078, reductionProjection2388, reductionProjection4080]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4344 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 20), (94, -25), (241, -80), (243, -80), (247, -80), (698, -320), (700, -80), (1055, 240), (1219, 240), (1226, -80), (1227, -160), (1251, 65)]

def reductionPivot4344 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 0, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -2, 1]]

theorem reductionSound4344 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6777).moment H =
      Integer.Sparse.eval reductionProjection4344 (momentVector H) := by
  have heq : reductionPivot4344 = (fun u v => (normalNode6777).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6777).moment H = injectiveMoment H reductionPivot4344 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6777).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4344 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4344 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4344 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection838, oldProjection820, oldProjection819, oldProjection1202] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4344 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5789 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4344 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4344 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5789 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4344 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node820⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4344 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection820 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4344 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4344 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node819⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4344 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection819 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4344 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4344 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5714 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4344 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1202 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4344 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5714 hH))).trans (oldProjectionSound1202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6777).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4344 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6777).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4344 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 720, 720] ![2, 4, 2, 2] reductionProjection4344 ![oldProjection838, oldProjection820, oldProjection819, oldProjection1202]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4345 : Integer.Sparse (Fin 1613) := [(433, -1), (502, -1), (503, -1), (565, -1)]

def reductionPivot4345 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 2, -3, 1], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound4345 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2034).moment H =
      Integer.Sparse.eval reductionProjection4345 (momentVector H) := by
  have heq : reductionPivot4345 = (fun u v => (normalNode2034).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2034).moment H = injectiveMoment H reductionPivot4345 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2034).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4345 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4345 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4345 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection505, oldProjection476, reductionProjection1078, oldProjection494] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4345 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2482 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4345 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4345 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2482 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4345 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2100 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4345 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4345 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2100 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4345 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code503).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4345 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4345 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4345 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node494⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4345 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection494 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4345 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2034).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4345 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2034).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4345 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection4345 ![oldProjection505, oldProjection476, reductionProjection1078, oldProjection494]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4346 : Integer.Sparse (Fin 1613) := [(0, 2), (40, 240), (58, 240), (76, 240), (81, 480), (94, -25), (503, -720), (698, -160), (700, -80), (704, -80), (1052, 240), (1059, -80), (1251, -15)]

def reductionPivot4346 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 2, -3, 1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound4346 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2035).moment H =
      Integer.Sparse.eval reductionProjection4346 (momentVector H) := by
  have heq : reductionPivot4346 = (fun u v => (normalNode2035).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2035).moment H = injectiveMoment H reductionPivot4346 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2035).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4346 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4346 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4346 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection823, oldProjection1190, reductionProjection4137, reductionProjection1078] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4346 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2483 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4346 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4346 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2483 hH))).trans (oldProjectionSound823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4346 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2101 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4346 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1190 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4346 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2101 hH))).trans (oldProjectionSound1190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4346 (2 : Fin 4)) = canonicalInput4163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4346 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4137 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4346 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4163 hH))).trans (reductionSound4137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4346 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code503).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4346 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4346 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2035).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4346 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2035).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4346 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 72, 1] ![2, 2, 20, 1440] reductionProjection4346 ![oldProjection823, oldProjection1190, reductionProjection4137, reductionProjection1078]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4347 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (40, -240), (56, -240), (58, -240), (76, -240), (77, -240), (79, -240), (81, -720), (90, 80), (94, 70), (163, 720), (241, 80), (243, 80), (247, 80), (421, 720), (431, 720), (433, 720), (502, 720), (503, 2160), (565, 720), (697, -480), (698, 720), (700, 240), (704, 80), (1052, -480), (1055, -240), (1058, -240), (1059, 160), (1219, -240), (1226, 160), (1227, 160), (1251, -75)]

def reductionPivot4347 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound4347 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1775).moment H =
      Integer.Sparse.eval reductionProjection4347 (momentVector H) := by
  have heq : reductionPivot4347 = (fun u v => (normalNode1775).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1775).moment H = injectiveMoment H reductionPivot4347 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1775).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4347 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4347 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4347 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1044, reductionProjection4343, reductionProjection4344, reductionProjection4345, reductionProjection4346] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4347 (0 : Fin 5)) = canonicalInput1581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1044 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1044 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1581 hH))).trans (reductionSound1044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4347 (1 : Fin 5)) = (normalNode1866).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4343 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4347 (2 : Fin 5)) = canonicalInput4001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4344 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4001 hH))).trans (reductionSound4344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4347 (3 : Fin 5)) = (normalNode2034).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4345 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4347 (4 : Fin 5)) = canonicalInput4013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4346 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4347 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4013 hH))).trans (reductionSound4346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1775).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4347 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1775).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4347 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 2, 1440] ![1, 1, 1, 720, 1] reductionProjection4347 ![reductionProjection1044, reductionProjection4343, reductionProjection4344, reductionProjection4345, reductionProjection4346]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4348 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -20), (81, -960), (94, 25), (241, 80), (423, 720), (433, 1440), (697, -480), (698, 1040), (1050, -240), (1052, -1200), (1058, -240), (1059, 480), (1221, -480), (1226, 160), (1227, 320), (1250, 60), (1251, -245), (1389, -480)]

def reductionPivot4348 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound4348 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1776).moment H =
      Integer.Sparse.eval reductionProjection4348 (momentVector H) := by
  have heq : reductionPivot4348 = (fun u v => (normalNode1776).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1776).moment H = injectiveMoment H reductionPivot4348 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1776).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4348 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4348 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4348 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1507, oldProjection1654, oldProjection2708, oldProjection1688, oldProjection1688] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4348 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1217 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1507 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1217 hH))).trans (oldProjectionSound1507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4348 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4348 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1901 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2708 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2708 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1901 hH))).trans (oldProjectionSound2708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4348 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4348 (4 : Fin 5)) = canonicalInput4015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4348 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4015 hH))).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1776).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4348 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1776).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4348 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 720, 720] ![1, 1, 2, 2, 2] reductionProjection4348 ![oldProjection1507, oldProjection1654, oldProjection2708, oldProjection1688, oldProjection1688]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4349 : Integer.Sparse (Fin 1613) := [(424, 1)]

theorem reductionSound4349 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code424).moment H =
      Integer.Sparse.eval reductionProjection4349 (momentVector H) := by
  have hc : coordinates (424 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code424) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection4349, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection4350 : Integer.Sparse (Fin 1613) := [(444, -1), (559, -1), (563, -1), (565, -1)]

def reductionPivot4350 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 0, 3], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 1, -2, 0]]

theorem reductionSound4350 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2038).moment H =
      Integer.Sparse.eval reductionProjection4350 (momentVector H) := by
  have heq : reductionPivot4350 = (fun u v => (normalNode2038).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2038).moment H = injectiveMoment H reductionPivot4350 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2038).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot4350 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot4350 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4350 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1046, oldProjection504, reductionProjection1408, oldProjection505] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4350 (0 : Fin 4)) = canonicalInput5288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4350 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4350 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5288 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4350 (1 : Fin 4)) = canonicalInput4183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4350 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection504 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4350 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4183 hH))).trans (oldProjectionSound504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4350 (2 : Fin 4)) = canonicalInput4181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4350 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4350 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4181 hH))).trans (reductionSound1408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4350 (3 : Fin 4)) = canonicalInput4180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4350 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4350 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4180 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2038).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4350 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2038).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot4350 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection4350 ![reductionProjection1046, oldProjection504, reductionProjection1408, oldProjection505]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection4351 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -480), (94, 85), (424, -1440), (444, 720), (478, 720), (489, 720), (546, 720), (547, 720), (549, 720), (559, 720), (563, 720), (565, 720), (698, 640), (700, 80), (1059, 80), (1226, 240), (1227, 480), (1251, -110), (1389, -480)]

def reductionPivot4351 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound4351 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1777).moment H =
      Integer.Sparse.eval reductionProjection4351 (momentVector H) := by
  have heq : reductionPivot4351 = (fun u v => (normalNode1777).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1777).moment H = injectiveMoment H reductionPivot4351 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1777).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot4351 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot4351 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1, 1440, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4351 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1331, reductionProjection4349, oldProjection1685, reductionProjection4350, oldProjection1690] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot4351 (0 : Fin 5)) = (normalNode668).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1331 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4351 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code424).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4349 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4351 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1685 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4351 (3 : Fin 5)) = (normalNode2038).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4350 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot4351 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1690 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot4351 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1777).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4351 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1777).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot4351 (j : Fin 5)))
      1 1440 1440 1 ![2, 1, 1440, 2, 288] ![720, 1440, 1, 720, 5] reductionProjection4351 ![reductionProjection1331, reductionProjection4349, oldProjection1685, reductionProjection4350, oldProjection1690]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

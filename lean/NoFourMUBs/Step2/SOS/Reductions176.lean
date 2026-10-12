import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical077
import NoFourMUBs.Step2.SOS.Canonical078
import NoFourMUBs.Step2.SOS.Canonical080
import NoFourMUBs.Step2.SOS.Canonical082
import NoFourMUBs.Step2.SOS.Canonical083
import NoFourMUBs.Step2.SOS.Canonical087
import NoFourMUBs.Step2.SOS.Canonical117
import NoFourMUBs.Step2.SOS.Canonical121
import NoFourMUBs.Step2.SOS.Canonical133
import NoFourMUBs.Step2.SOS.Canonical134
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions115
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions164
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical106
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical107
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical109
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical116
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical181
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical56
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical68
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical69
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical71
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical72
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical74
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection5632 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -15), (228, 240), (241, -80), (247, -160), (291, -720), (554, -720), (628, -720), (1251, -20)]

def reductionPivot5632 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -4, 2], ![1, 0, 1, -2]]

theorem reductionSound5632 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2572).moment H =
      Integer.Sparse.eval reductionProjection5632 (momentVector H) := by
  have heq : reductionPivot5632 = (fun u v => (normalNode2572).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2572).moment H = injectiveMoment H reductionPivot5632 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2572).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5632 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5632 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5632 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1100, reductionProjection1442, oldProjection452, reductionProjection2214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5632 (0 : Fin 4)) = canonicalInput18217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5632 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5632 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18217 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5632 (1 : Fin 4)) = canonicalInput5351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5632 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5632 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5351 hH))).trans (reductionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5632 (2 : Fin 4)) = canonicalInput4905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5632 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection452 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5632 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4905 hH))).trans (oldProjectionSound452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5632 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code554).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5632 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2214 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5632 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2572).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5632 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2572).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5632 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5632 ![oldProjection1100, reductionProjection1442, oldProjection452, reductionProjection2214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5633 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -240), (20, 10), (38, -240), (76, -240), (81, -480), (94, 145), (228, -960), (231, -240), (232, -240), (241, 400), (243, 160), (247, 480), (291, 1440), (545, 720), (554, 1440), (555, 720), (567, 720), (628, 1440), (686, -480), (697, -240), (698, 160), (704, 160), (1251, 130)]

def reductionPivot5633 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -4, 2], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound5633 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2548).moment H =
      Integer.Sparse.eval reductionProjection5633 (momentVector H) := by
  have heq : reductionPivot5633 = (fun u v => (normalNode2548).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2548).moment H = injectiveMoment H reductionPivot5633 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2548).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5633 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5633 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5633 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1735, reductionProjection5631, reductionProjection1452, reductionProjection5632, reductionProjection5632] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5633 (0 : Fin 5)) = canonicalInput5600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1735 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5600 hH))).trans (oldProjectionSound1735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5633 (1 : Fin 5)) = (normalNode2583).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5631 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5633 (2 : Fin 5)) = (normalNode2574).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5633 (3 : Fin 5)) = canonicalInput4882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4882 hH))).trans (reductionSound5632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5633 (4 : Fin 5)) = (normalNode2572).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5633 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2548).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5633 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2548).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5633 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1440, 1440] ![1, 5, 1, 1, 1] reductionProjection5633 ![oldProjection1735, reductionProjection5631, reductionProjection1452, reductionProjection5632, reductionProjection5632]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5634 : Integer.Sparse (Fin 1613) := [(548, -1), (564, -1), (565, -1), (570, -1)]

def reductionPivot5634 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, 1, -4, 2], ![1, 1, 0, -2]]

theorem reductionSound5634 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2551).moment H =
      Integer.Sparse.eval reductionProjection5634 (momentVector H) := by
  have heq : reductionPivot5634 = (fun u v => (normalNode2551).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2551).moment H = injectiveMoment H reductionPivot5634 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2551).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5634 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5634 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5634 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection501, reductionProjection1466, oldProjection505, reductionProjection2264] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5634 (0 : Fin 4)) = canonicalInput5603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5634 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5634 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5603 hH))).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5634 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code570).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5634 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5634 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5634 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5634 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5634 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5634 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code564).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5634 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5634 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2551).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5634 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2551).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5634 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection5634 ![oldProjection501, reductionProjection1466, oldProjection505, reductionProjection2264]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5635 : Integer.Sparse (Fin 1613) := [(0, -3), (81, -240), (94, 15), (433, 720), (551, -1440), (553, 720), (555, 720), (559, 720), (602, 720), (668, 720), (698, 640), (761, 720), (865, 720), (869, 720), (1050, -480), (1059, 480), (1221, -960), (1226, 80), (1227, 160), (1251, -130), (1389, -240)]

def reductionPivot5635 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 0, -1]]

theorem reductionSound5635 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2552).moment H =
      Integer.Sparse.eval reductionProjection5635 (momentVector H) := by
  have heq : reductionPivot5635 = (fun u v => (normalNode2552).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2552).moment H = injectiveMoment H reductionPivot5635 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2552).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot5635 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5635 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 2, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5635 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2909, oldProjection1781, reductionProjection5551, reductionProjection5092, reductionProjection3550] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5635 (0 : Fin 5)) = canonicalInput7511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2909 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7511 hH))).trans (reductionSound2909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5635 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1781 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5635 (2 : Fin 5)) = canonicalInput4883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5551 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4883 hH))).trans (reductionSound5551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5635 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code551).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5092 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5092 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5635 (4 : Fin 5)) = (normalNode2554).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3550 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5635 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2552).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5635 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2552).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5635 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 2, 1, 1440] ![1, 1, 720, 1440, 1] reductionProjection5635 ![reductionProjection2909, oldProjection1781, reductionProjection5551, reductionProjection5092, reductionProjection3550]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5636 : Integer.Sparse (Fin 1613) := [(0, 11), (76, -120), (81, -240), (94, 50), (241, 40), (553, 720), (555, 360), (611, 720), (669, 720), (697, -120), (698, 440), (1050, -120), (1059, 160), (1221, -120), (1226, 80), (1227, 160), (1251, -125), (1389, -240)]

def reductionPivot5636 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound5636 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2553).moment H =
      Integer.Sparse.eval reductionProjection5636 (momentVector H) := by
  have heq : reductionPivot5636 = (fun u v => (normalNode2553).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2553).moment H = injectiveMoment H reductionPivot5636 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2553).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot5636 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5636 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5636 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2824, oldProjection2450, reductionProjection1452, reductionProjection1110, reductionProjection1110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5636 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3410 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2824 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3410 hH))).trans (oldProjectionSound2824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5636 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2319 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2319 hH))).trans (oldProjectionSound2450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5636 (2 : Fin 5)) = (normalNode2574).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5636 (3 : Fin 5)) = canonicalInput4870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1110 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4870 hH))).trans (reductionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5636 (4 : Fin 5)) = (normalNode2557).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1110 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5636 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2553).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5636 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2553).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5636 (j : Fin 5)))
      1 720 1440 2 ![72, 1440, 1440, 1440, 1440] ![20, 1, 1, 1, 1] reductionProjection5636 ![oldProjection2824, oldProjection2450, reductionProjection1452, reductionProjection1110, reductionProjection1110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5637 : Integer.Sparse (Fin 1613) := [(553, -3), (563, -3), (608, -3), (682, 1), (1221, 1), (1389, 1)]

def reductionPivot5637 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, 2, -1, -2]]

theorem reductionSound5637 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode2555).moment H =
      Integer.Sparse.eval reductionProjection5637 (momentVector H) := by
  have heq : reductionPivot5637 = (fun u v => (normalNode2555).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2555).moment H = injectiveMoment H reductionPivot5637 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2555).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5637 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5637 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5637 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection822, reductionProjection5248, reductionProjection1046, oldProjection503] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5637 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node822⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5637 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection822 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5637 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5637 (1 : Fin 4)) = canonicalInput5330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5637 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5248 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5637 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5330 hH))).trans (reductionSound5248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5637 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code563).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5637 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5637 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5637 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node503⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5637 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5637 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2555).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5637 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2555).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5637 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection5637 ![oldProjection822, reductionProjection5248, reductionProjection1046, oldProjection503]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5638 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -10), (1227, -40), (1251, 35), (1389, 120)]

def reductionPivot5638 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 0, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -1, 0, 0]]

theorem reductionSound5638 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9099).moment H =
      Integer.Sparse.eval reductionProjection5638 (momentVector H) := by
  have heq : reductionPivot5638 = (fun u v => (normalNode9099).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9099).moment H = injectiveMoment H reductionPivot5638 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9099).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5638 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5638 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![180, 48, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5638 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1126, oldProjection1242, oldProjection1079, oldProjection1078] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5638 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5638 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1126 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5638 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5638 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6537 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5638 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1242 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5638 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1242 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6537 hH))).trans (oldProjectionSound1242 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5638 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1079⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5638 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1079 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5638 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1079 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5638 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5638 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1078 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5638 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9099).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5638 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9099).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5638 (j : Fin 4)))
      2 720 720 2 ![180, 48, 360, 720] ![4, 15, 2, 1] reductionProjection5638 ![oldProjection1126, oldProjection1242, oldProjection1079, oldProjection1078]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5639 : Integer.Sparse (Fin 1613) := [(0, 3), (81, -96), (90, 16), (94, 8), (559, 144), (563, 288), (602, 144), (669, 288), (697, -48), (698, 208), (700, 48), (1059, 112), (1221, -48), (1226, 16), (1227, 128), (1251, -59), (1389, -144)]

def reductionPivot5639 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]

theorem reductionSound5639 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2560).moment H =
      Integer.Sparse.eval reductionProjection5639 (momentVector H) := by
  have heq : reductionPivot5639 = (fun u v => (normalNode2560).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2560).moment H = injectiveMoment H reductionPivot5639 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2560).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5639 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5639 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5639 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5638, oldProjection2451, reductionProjection5263, oldProjection1834, reductionProjection2014] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5639 (0 : Fin 5)) = canonicalInput8517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5638 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5638 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8517 hH))).trans (reductionSound5638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5639 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2372 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2451 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2372 hH))).trans (oldProjectionSound2451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5639 (2 : Fin 5)) = (normalNode2577).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5263 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5639 (3 : Fin 5)) = canonicalInput4878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4878 hH))).trans (oldProjectionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5639 (4 : Fin 5)) = (normalNode2568).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2014 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5639 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2560).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5639 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2560).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5639 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 720, 1440, 1440] ![2, 1, 2, 1, 1] reductionProjection5639 ![reductionProjection5638, oldProjection2451, reductionProjection5263, oldProjection1834, reductionProjection2014]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5640 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (81, 240), (94, -15), (555, -720), (565, -720), (631, -720), (698, -80), (1251, -20)]

def reductionPivot5640 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -3, 1], ![1, 1, 0, -2]]

theorem reductionSound5640 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2573).moment H =
      Integer.Sparse.eval reductionProjection5640 (momentVector H) := by
  have heq : reductionPivot5640 = (fun u v => (normalNode2573).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2573).moment H = injectiveMoment H reductionPivot5640 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2573).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5640 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5640 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5640 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection823, reductionProjection4679, oldProjection505, reductionProjection1451] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5640 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node823⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5640 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5640 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5640 (1 : Fin 4)) = canonicalInput5331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5640 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5640 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5331 hH))).trans (reductionSound4679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5640 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5640 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5640 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5640 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code555).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5640 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5640 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2573).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5640 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2573).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5640 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5640 ![oldProjection823, reductionProjection4679, oldProjection505, reductionProjection1451]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5641 : Integer.Sparse (Fin 1613) := [(0, -4), (72, -120), (76, -360), (81, -600), (90, 80), (94, 45), (433, 360), (555, 720), (559, 360), (565, 360), (631, 360), (682, -120), (697, -240), (698, 440), (700, 200), (704, 40), (761, 360), (1058, -120), (1059, 80), (1226, 120), (1227, 40), (1251, -15)]

def reductionPivot5641 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound5641 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2563).moment H =
      Integer.Sparse.eval reductionProjection5641 (momentVector H) := by
  have heq : reductionPivot5641 = (fun u v => (normalNode2563).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2563).moment H = injectiveMoment H reductionPivot5641 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2563).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5641 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5641 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 720, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5641 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1648, oldProjection1814, reductionProjection2898, reductionProjection1452, reductionProjection5640] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5641 (0 : Fin 5)) = canonicalInput8520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1648 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8520 hH))).trans (oldProjectionSound1648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5641 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1814⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1814 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5641 (2 : Fin 5)) = canonicalInput4890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2898 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4890 hH))).trans (reductionSound2898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5641 (3 : Fin 5)) = (normalNode2574).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1452 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5641 (4 : Fin 5)) = (normalNode2573).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5640 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5641 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2563).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5641 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2563).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5641 (j : Fin 5)))
      1 720 1440 2 ![144, 720, 720, 1440, 1440] ![10, 2, 2, 1, 1] reductionProjection5641 ![oldProjection1648, oldProjection1814, reductionProjection2898, reductionProjection1452, reductionProjection5640]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5642 : Integer.Sparse (Fin 1613) := [(571, 1)]

theorem reductionSound5642 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code571).moment H =
      Integer.Sparse.eval reductionProjection5642 (momentVector H) := by
  have hc : coordinates (571 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code571) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5642, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5643 : Integer.Sparse (Fin 1613) := [(26, -16), (76, 48), (88, -32), (94, 3), (105, -16), (241, -32), (571, -144), (698, -32), (700, -16), (1226, -32), (1251, -1)]

def reductionPivot5643 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, -1, 2, -3]]

theorem reductionSound5643 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2584).moment H =
      Integer.Sparse.eval reductionProjection5643 (momentVector H) := by
  have heq : reductionPivot5643 = (fun u v => (normalNode2584).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2584).moment H = injectiveMoment H reductionPivot5643 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2584).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5643 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5643 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5643 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4621, reductionProjection1574, reductionProjection5642, reductionProjection5274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5643 (0 : Fin 4)) = canonicalInput8547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5643 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4621 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5643 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8547 hH))).trans (reductionSound4621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5643 (1 : Fin 4)) = canonicalInput5138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5643 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1574 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5643 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1574 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5138 hH))).trans (reductionSound1574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5643 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code571).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5643 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5642 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5643 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5643 (3 : Fin 4)) = canonicalInput4915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5643 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5274 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5643 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4915 hH))).trans (reductionSound5274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2584).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5643 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2584).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5643 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 9] ![2, 32, 288, 32] reductionProjection5643 ![reductionProjection4621, reductionProjection1574, reductionProjection5642, reductionProjection5274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5644 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (26, 80), (76, -720), (88, 320), (94, 50), (104, 80), (105, 160), (156, 720), (241, 400), (243, 720), (571, 720), (577, 1440), (578, 720), (698, 720), (700, 80), (1052, -240), (1059, 80), (1221, -240), (1226, 640), (1227, 160), (1251, -195)]

def reductionPivot5644 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 2, -3]]

theorem reductionSound5644 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2585).moment H =
      Integer.Sparse.eval reductionProjection5644 (momentVector H) := by
  have heq : reductionPivot5644 = (fun u v => (normalNode2585).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2585).moment H = injectiveMoment H reductionPivot5644 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2585).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5644 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5644 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5644 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1491, reductionProjection5643, reductionProjection1575, reductionProjection1575, oldProjection1756] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5644 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1805 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1491 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1805 hH))).trans (oldProjectionSound1491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5644 (1 : Fin 5)) = (normalNode2584).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5643 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5644 (2 : Fin 5)) = (normalNode2602).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1575 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5644 (3 : Fin 5)) = canonicalInput4922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1575 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4922 hH))).trans (reductionSound1575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5644 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1756⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5644 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2585).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5644 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2585).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5644 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 288, 288, 1440] ![5, 5, 5, 5, 1] reductionProjection5644 ![oldProjection1491, reductionProjection5643, reductionProjection1575, reductionProjection1575, oldProjection1756]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5645 : Integer.Sparse (Fin 1613) := [(72, 1), (579, -3), (1050, 1), (1221, 1)]

def reductionPivot5645 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 0, 2, -2], ![1, 2, -1, -2]]

theorem reductionSound5645 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode2596).moment H =
      Integer.Sparse.eval reductionProjection5645 (momentVector H) := by
  have heq : reductionPivot5645 = (fun u v => (normalNode2596).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2596).moment H = injectiveMoment H reductionPivot5645 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2596).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5645 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5645 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5645 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection825, reductionProjection1376, reductionProjection1376, oldProjection825] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5645 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node825⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5645 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5645 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5645 (1 : Fin 4)) = canonicalInput5336.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5645 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5645 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5336 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5645 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code579).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5645 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5645 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5645 (3 : Fin 4)) = canonicalInput4918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5645 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5645 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4918 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2596).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5645 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2596).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5645 (j : Fin 4)))
      2 3 3 2 ![3, 1, 1, 3] ![1, 3, 3, 1] reductionProjection5645 ![oldProjection825, reductionProjection1376, reductionProjection1376, oldProjection825]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5646 : Integer.Sparse (Fin 1613) := [(0, -7), (72, -240), (81, -360), (94, 25), (228, -120), (241, 80), (243, 80), (465, 720), (579, 1080), (590, 720), (698, 480), (700, 240), (1050, -240), (1059, 240), (1221, -240), (1251, -40), (1389, -480)]

def reductionPivot5646 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -1, -2]]

theorem reductionSound5646 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2586).moment H =
      Integer.Sparse.eval reductionProjection5646 (momentVector H) := by
  have heq : reductionPivot5646 = (fun u v => (normalNode2586).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2586).moment H = injectiveMoment H reductionPivot5646 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2586).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5646 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5646 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 720, 3, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5646 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5527, reductionProjection5497, reductionProjection5645, reductionProjection5505, oldProjection1666] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5646 (0 : Fin 5)) = canonicalInput5616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5527 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5527 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5616 hH))).trans (reductionSound5527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5646 (1 : Fin 5)) = (normalNode2655).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5497 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5646 (2 : Fin 5)) = (normalNode2596).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5645 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5646 (3 : Fin 5)) = (normalNode2595).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5505 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5646 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2207 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1666 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5646 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1666 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2207 hH))).trans (oldProjectionSound1666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2586).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5646 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2586).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5646 (j : Fin 5)))
      1 720 1440 2 ![360, 720, 3, 1440, 1440] ![4, 2, 480, 1, 1] reductionProjection5646 ![reductionProjection5527, reductionProjection5497, reductionProjection5645, reductionProjection5505, oldProjection1666]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5647 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (241, -80), (578, -720), (593, -720), (698, -160), (1050, 480), (1055, 240), (1058, 240), (1059, -80), (1251, 30)]

def reductionPivot5647 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![2, -1, 1, -2]]

theorem reductionSound5647 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2605).moment H =
      Integer.Sparse.eval reductionProjection5647 (momentVector H) := by
  have heq : reductionPivot5647 = (fun u v => (normalNode2605).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2605).moment H = injectiveMoment H reductionPivot5647 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2605).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5647 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5647 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5647 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1059, reductionProjection1322, oldProjection506, oldProjection831] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5647 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3436 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5647 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1059 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5647 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3436 hH))).trans (oldProjectionSound1059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5647 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code593).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5647 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5647 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5647 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node506⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5647 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5647 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5647 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2218 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5647 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5647 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2218 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2605).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5647 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2605).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5647 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 1, 720] ![10, 1440, 1440, 2] reductionProjection5647 ![oldProjection1059, reductionProjection1322, oldProjection506, oldProjection831]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5648 : Integer.Sparse (Fin 1613) := [(0, -7), (76, -240), (81, -240), (88, 80), (90, 80), (94, 30), (241, 240), (243, 320), (577, 720), (578, 1440), (586, 720), (593, 720), (698, 880), (700, 240), (1050, -480), (1055, -240), (1058, -240), (1059, 240), (1221, -720), (1226, 480), (1227, 400), (1251, -115)]

def reductionPivot5648 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound5648 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2587).moment H =
      Integer.Sparse.eval reductionProjection5648 (momentVector H) := by
  have heq : reductionPivot5648 = (fun u v => (normalNode2587).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2587).moment H = injectiveMoment H reductionPivot5648 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2587).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5648 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5648 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5648 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1810, reductionProjection3829, oldProjection1756, reductionProjection5647, reductionProjection1575] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5648 (0 : Fin 5)) = canonicalInput5617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1810 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5617 hH))).trans (oldProjectionSound1810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5648 (1 : Fin 5)) = (normalNode2687).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3829 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5648 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1756⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5648 (3 : Fin 5)) = (normalNode2605).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5647 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5648 (4 : Fin 5)) = (normalNode2602).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1575 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5648 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2587).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5648 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2587).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5648 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 1440, 1440, 288] ![1, 80, 1, 1, 5] reductionProjection5648 ![oldProjection1810, reductionProjection3829, oldProjection1756, reductionProjection5647, reductionProjection1575]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5649 : Integer.Sparse (Fin 1613) := [(0, 2), (81, -60), (94, 5), (228, -60), (241, 60), (243, 60), (465, 180), (610, 180), (616, 180), (698, 460), (700, 60), (1050, -60), (1055, -180), (1058, -240), (1059, 120), (1226, 100), (1227, 260), (1251, -95)]

def reductionPivot5649 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound5649 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode2588).moment H =
      Integer.Sparse.eval reductionProjection5649 (momentVector H) := by
  have heq : reductionPivot5649 = (fun u v => (normalNode2588).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2588).moment H = injectiveMoment H reductionPivot5649 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2588).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5649 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5649 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5649 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1844, reductionProjection2123, reductionProjection2138, oldProjection1759, oldProjection1758] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5649 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1844 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5649 (1 : Fin 5)) = canonicalInput4993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2123 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4993 hH))).trans (reductionSound2123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5649 (2 : Fin 5)) = (normalNode2613).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2138 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5649 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1759⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5649 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1758⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1758 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5649 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2588).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5649 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2588).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5649 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 1440, 360, 1440] ![1, 1, 1, 4, 1] reductionProjection5649 ![oldProjection1844, reductionProjection2123, reductionProjection2138, oldProjection1759, oldProjection1758]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5650 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (94, -15), (241, -80), (579, -720), (611, -720), (698, -320), (1221, 240), (1226, -160), (1227, -80), (1251, 60)]

def reductionPivot5650 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, -1, 2, -2], ![1, 1, -1, -1]]

theorem reductionSound5650 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2611).moment H =
      Integer.Sparse.eval reductionProjection5650 (momentVector H) := by
  have heq : reductionPivot5650 = (fun u v => (normalNode2611).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2611).moment H = injectiveMoment H reductionPivot5650 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2611).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5650 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5650 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5650 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1111, reductionProjection1109, oldProjection829, reductionProjection1376] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5650 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3743 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5650 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5650 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3743 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5650 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code611).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5650 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1109 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5650 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5650 (2 : Fin 4)) = canonicalInput4936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5650 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection829 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5650 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4936 hH))).trans (oldProjectionSound829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5650 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code579).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5650 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5650 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2611).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5650 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2611).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5650 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 72, 1] ![2, 1440, 20, 1440] reductionProjection5650 ![oldProjection1111, reductionProjection1109, oldProjection829, reductionProjection1376]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5651 : Integer.Sparse (Fin 1613) := [(0, 11), (76, -240), (81, -240), (94, 65), (241, 80), (465, 720), (574, -1440), (579, 720), (590, 720), (610, 720), (611, 720), (617, 720), (698, 1120), (1055, -240), (1058, -240), (1059, 400), (1221, -240), (1226, 160), (1227, 560), (1251, -350), (1389, -480)]

def reductionPivot5651 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound5651 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2589).moment H =
      Integer.Sparse.eval reductionProjection5651 (momentVector H) := by
  have heq : reductionPivot5651 = (fun u v => (normalNode2589).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2589).moment H = injectiveMoment H reductionPivot5651 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2589).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5651 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5651 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5651 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1811, oldProjection1771, reductionProjection2180, reductionProjection5650, oldProjection1759] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5651 (0 : Fin 5)) = canonicalInput5621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1811 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5621 hH))).trans (oldProjectionSound1811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5651 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1771⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1771 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5651 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code574).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2180 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5651 (3 : Fin 5)) = (normalNode2611).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5650 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5651 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1759⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5651 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2589).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5651 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2589).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5651 (j : Fin 5)))
      1 1440 1440 1 ![720, 720, 1, 1440, 360] ![2, 2, 1440, 1, 4] reductionProjection5651 ![oldProjection1811, oldProjection1771, reductionProjection2180, reductionProjection5650, oldProjection1759]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5652 : Integer.Sparse (Fin 1613) := [(0, 1), (79, 240), (94, -5), (579, -720), (616, -720), (698, -160), (1050, 240), (1058, 480), (1059, -80), (1226, -80), (1251, 30)]

def reductionPivot5652 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, 1, 0, -2]]

theorem reductionSound5652 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2775).moment H =
      Integer.Sparse.eval reductionProjection5652 (momentVector H) := by
  have heq : reductionPivot5652 = (fun u v => (normalNode2775).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2775).moment H = injectiveMoment H reductionPivot5652 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2775).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5652 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5652 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5652 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection831, reductionProjection566, oldProjection841, reductionProjection1376] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5652 (0 : Fin 4)) = canonicalInput7785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5652 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5652 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7785 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5652 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code616).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5652 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5652 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5652 (2 : Fin 4)) = canonicalInput5128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5652 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5652 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5128 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5652 (3 : Fin 4)) = canonicalInput5126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5652 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5652 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5126 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2775).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5652 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2775).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5652 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 144, 1] ![2, 1440, 10, 1440] reductionProjection5652 ![oldProjection831, reductionProjection566, oldProjection841, reductionProjection1376]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5653 : Integer.Sparse (Fin 1613) := [(575, 1)]

theorem reductionSound5653 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code575).moment H =
      Integer.Sparse.eval reductionProjection5653 (momentVector H) := by
  have hc : coordinates (575 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code575) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5653, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5654 : Integer.Sparse (Fin 1613) := [(19, 2), (77, 24), (94, -1), (175, -72), (241, -8), (243, -8), (580, -72), (698, -8), (1052, 24), (1223, 48), (1226, -8), (1251, 1)]

def reductionPivot5654 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, -1, 3, -3], ![1, 1, -2, 0]]

theorem reductionSound5654 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2612).moment H =
      Integer.Sparse.eval reductionProjection5654 (momentVector H) := by
  have heq : reductionPivot5654 = (fun u v => (normalNode2612).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2612).moment H = injectiveMoment H reductionPivot5654 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2612).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5654 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5654 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5654 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1035, reductionProjection833, oldProjection830, reductionProjection1247] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5654 (0 : Fin 4)) = canonicalInput8598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5654 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1035 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5654 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8598 hH))).trans (oldProjectionSound1035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5654 (1 : Fin 4)) = canonicalInput5164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5654 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection833 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5654 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5164 hH))).trans (reductionSound833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5654 (2 : Fin 4)) = canonicalInput4937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5654 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection830 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5654 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4937 hH))).trans (oldProjectionSound830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5654 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code580).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5654 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1247 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5654 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2612).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5654 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2612).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5654 (j : Fin 4)))
      2 144 144 2 ![144, 1, 144, 1] ![1, 144, 1, 144] reductionProjection5654 ![oldProjection1035, reductionProjection833, oldProjection830, reductionProjection1247]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5655 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -5), (76, -60), (77, -60), (79, -60), (81, -180), (90, 20), (94, 10), (175, 180), (241, 40), (243, 20), (575, -360), (579, 360), (580, 180), (611, 180), (616, 180), (698, 280), (700, 20), (1050, -60), (1052, -60), (1058, -120), (1059, 60), (1221, -60), (1223, -120), (1226, 120), (1227, 100), (1251, -40), (1389, -60)]

def reductionPivot5655 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound5655 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode2590).moment H =
      Integer.Sparse.eval reductionProjection5655 (momentVector H) := by
  have heq : reductionPivot5655 = (fun u v => (normalNode2590).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2590).moment H = injectiveMoment H reductionPivot5655 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2590).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5655 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5655 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5655 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5652, reductionProjection3711, reductionProjection5653, reductionProjection5654, reductionProjection5650] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5655 (0 : Fin 5)) = canonicalInput5622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5652 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5622 hH))).trans (reductionSound5652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5655 (1 : Fin 5)) = (normalNode2706).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3711 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3711 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5655 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code575).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5653 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5655 (3 : Fin 5)) = (normalNode2612).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5654 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5655 (4 : Fin 5)) = (normalNode2611).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5650 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5655 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2590).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5655 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2590).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5655 (j : Fin 5)))
      1 360 1440 4 ![1440, 720, 1, 144, 1440] ![1, 2, 1440, 10, 1] reductionProjection5655 ![reductionProjection5652, reductionProjection3711, reductionProjection5653, reductionProjection5654, reductionProjection5650]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5656 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (577, -720), (579, -720), (636, -720), (698, -160), (1221, 240), (1226, -80), (1227, -80), (1251, 30)]

def reductionPivot5656 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 2, -2]]

theorem reductionSound5656 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2618).moment H =
      Integer.Sparse.eval reductionProjection5656 (momentVector H) := by
  have heq : reductionPivot5656 = (fun u v => (normalNode2618).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2618).moment H = injectiveMoment H reductionPivot5656 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2618).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot5656 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5656 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5656 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1111, reductionProjection1136, reductionProjection1376, reductionProjection1252] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5656 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5656 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5656 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5656 (1 : Fin 4)) = canonicalInput5363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5656 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5656 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5363 hH))).trans (reductionSound1136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5656 (2 : Fin 4)) = canonicalInput4941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5656 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5656 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4941 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5656 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code577).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5656 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1252 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5656 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2618).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5656 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2618).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5656 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5656 ![oldProjection1111, reductionProjection1136, reductionProjection1376, reductionProjection1252]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5657 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 35), (465, 720), (576, -1440), (577, 720), (578, 720), (579, 720), (586, 720), (590, 720), (602, 720), (635, 720), (636, 720), (698, 880), (1059, 320), (1221, -480), (1226, 160), (1227, 560), (1251, -260), (1389, -480)]

def reductionPivot5657 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound5657 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2591).moment H =
      Integer.Sparse.eval reductionProjection5657 (momentVector H) := by
  have heq : reductionPivot5657 = (fun u v => (normalNode2591).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2591).moment H = injectiveMoment H reductionPivot5657 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2591).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5657 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5657 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 360, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5657 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1816, oldProjection1774, oldProjection1761, reductionProjection5656, reductionProjection2189] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5657 (0 : Fin 5)) = canonicalInput5626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1816 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5626 hH))).trans (oldProjectionSound1816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5657 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1774 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5657 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1761⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1761 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5657 (3 : Fin 5)) = (normalNode2618).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5656 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5656 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5657 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code576).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2189 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5657 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2591).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5657 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2591).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5657 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 360, 1440, 1] ![1, 1, 4, 1, 1440] reductionProjection5657 ![oldProjection1816, oldProjection1774, oldProjection1761, reductionProjection5656, reductionProjection2189]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5658 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (577, -720), (578, -720), (586, -720), (698, -160), (1221, 240), (1226, -80), (1227, -80), (1251, 30)]

def reductionPivot5658 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 2, -1, -1], ![2, -1, 1, -2]]

theorem reductionSound5658 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2592).moment H =
      Integer.Sparse.eval reductionProjection5658 (momentVector H) := by
  have heq : reductionPivot5658 = (fun u v => (normalNode2592).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2592).moment H = injectiveMoment H reductionPivot5658 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2592).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5658 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5658 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5658 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection507, oldProjection1111, oldProjection506, reductionProjection1252] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5658 (0 : Fin 4)) = canonicalInput5627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5658 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection507 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5658 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5627 hH))).trans (oldProjectionSound507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5658 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2272 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5658 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5658 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2272 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5658 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node506⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5658 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5658 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5658 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code577).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5658 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1252 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5658 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2592).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5658 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2592).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5658 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection5658 ![oldProjection507, oldProjection1111, oldProjection506, reductionProjection1252]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5659 : Integer.Sparse (Fin 1613) := [(0, 1), (508, -360), (578, -360), (674, -360), (698, 40), (1059, -40), (1227, -40), (1251, 15)]

def reductionPivot5659 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 2, 0, -2], ![2, -1, 0, -1]]

theorem reductionSound5659 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2593).moment H =
      Integer.Sparse.eval reductionProjection5659 (momentVector H) := by
  have heq : reductionPivot5659 = (fun u v => (normalNode2593).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2593).moment H = injectiveMoment H reductionPivot5659 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2593).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5659 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5659 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 360, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5659 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection523, oldProjection1281, oldProjection496, oldProjection506] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5659 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node523⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5659 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection523 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5659 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5659 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2277 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5659 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1281 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5659 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2277 hH))).trans (oldProjectionSound1281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5659 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2224 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5659 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection496 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5659 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2224 hH))).trans (oldProjectionSound496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5659 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node506⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5659 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5659 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2593).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5659 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2593).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5659 (j : Fin 4)))
      2 720 720 2 ![1, 360, 1, 1] ![720, 2, 720, 720] reductionProjection5659 ![oldProjection523, oldProjection1281, oldProjection496, oldProjection506]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5660 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (94, -10), (508, -720), (543, -720), (559, -720), (698, -160), (700, -80), (1059, -80), (1251, 5)]

def reductionPivot5660 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 2, 1, -3], ![2, -1, -1, 0]]

theorem reductionSound5660 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2594).moment H =
      Integer.Sparse.eval reductionProjection5660 (momentVector H) := by
  have heq : reductionPivot5660 = (fun u v => (normalNode2594).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2594).moment H = injectiveMoment H reductionPivot5660 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2594).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5660 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5660 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5660 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection504, oldProjection1098, oldProjection498, oldProjection496] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5660 (0 : Fin 4)) = canonicalInput5628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5660 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection504 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5660 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5628 hH))).trans (oldProjectionSound504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5660 (1 : Fin 4)) = canonicalInput5000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5660 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5660 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5000 hH))).trans (oldProjectionSound1098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5660 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2226 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5660 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection498 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5660 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2226 hH))).trans (oldProjectionSound498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5660 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2224 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5660 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection496 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5660 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2224 hH))).trans (oldProjectionSound496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2594).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5660 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2594).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5660 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection5660 ![oldProjection504, oldProjection1098, oldProjection498, oldProjection496]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5661 : Integer.Sparse (Fin 1613) := [(91, 2), (232, -3), (243, 2), (244, 1), (1225, 1)]

def reductionPivot5661 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 2, -2], ![0, 3, -4, 1], ![2, -4, 2, 0]]

theorem reductionSound5661 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9136).moment H =
      Integer.Sparse.eval reductionProjection5661 (momentVector H) := by
  have heq : reductionPivot5661 = (fun u v => (normalNode9136).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9136).moment H = injectiveMoment H reductionPivot5661 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9136).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9136).entries)).symm
  have hshape : reductionPivot5661 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5661 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5661 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection138, reductionProjection1699, oldProjection137] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5661 (0 : Fin 3)) = canonicalInput11674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5661 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection138 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5661 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11674 hH))).trans (oldProjectionSound138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5661 (1 : Fin 3)) = canonicalInput23386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5661 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1699 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5661 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23386 hH))).trans (reductionSound1699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5661 (2 : Fin 3)) = canonicalInput23421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5661 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection137 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5661 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23421 hH))).trans (oldProjectionSound137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9136).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5661 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9136).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5661 (j : Fin 3)))
      3 9 9 3 ![3, 1, 3] ![3, 9, 3] reductionProjection5661 ![oldProjection138, reductionProjection1699, oldProjection137]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5662 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (88, 16), (91, 16), (94, -2), (241, 16), (243, 48), (1225, 16), (1251, 1)]

def reductionPivot5662 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 1, 2], ![0, 1, 3, -4], ![1, 0, -3, 2]]

theorem reductionSound5662 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7075).moment H =
      Integer.Sparse.eval reductionProjection5662 (momentVector H) := by
  have heq : reductionPivot5662 = (fun u v => (normalNode7075).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7075).moment H = injectiveMoment H reductionPivot5662 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7075).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot5662 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5662 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5662 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection155, oldProjection102, oldProjection137] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5662 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6555 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5662 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection155 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5662 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6555 hH))).trans (oldProjectionSound155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5662 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5801 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5662 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection102 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5662 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5801 hH))).trans (oldProjectionSound102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5662 (2 : Fin 3)) = canonicalInput13928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5662 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection137 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5662 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13928 hH))).trans (oldProjectionSound137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7075).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5662 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7075).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5662 (j : Fin 3)))
      3 144 144 3 ![48, 3, 3] ![3, 48, 48] reductionProjection5662 ![oldProjection155, oldProjection102, oldProjection137]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5663 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (88, -32), (91, -24), (94, 2), (105, -8), (232, 24), (241, -24), (243, -56), (244, -8), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot5663 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound5663 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2788).moment H =
      Integer.Sparse.eval reductionProjection5663 (momentVector H) := by
  have heq : reductionPivot5663 = (fun u v => (normalNode2788).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2788).moment H = injectiveMoment H reductionPivot5663 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2788).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5663 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5663 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5663 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1300, reductionProjection5661, reductionProjection5662, oldProjection1125] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5663 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3517 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5663 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1300 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5663 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3517 hH))).trans (oldProjectionSound1300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5663 (1 : Fin 4)) = canonicalInput5271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5663 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5661 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5663 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5271 hH))).trans (reductionSound5661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5663 (2 : Fin 4)) = canonicalInput5139.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5663 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5662 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5663 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5662 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5139 hH))).trans (reductionSound5662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5663 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2388 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5663 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1125 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5663 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2388 hH))).trans (oldProjectionSound1125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2788).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5663 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2788).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5663 (j : Fin 4)))
      2 144 144 2 ![144, 9, 144, 9] ![1, 16, 1, 16] reductionProjection5663 ![oldProjection1300, reductionProjection5661, reductionProjection5662, oldProjection1125]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical023
import NoFourMUBs.Step2.SOS.Canonical024
import NoFourMUBs.Step2.SOS.Canonical025
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical075
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical077
import NoFourMUBs.Step2.SOS.Canonical078
import NoFourMUBs.Step2.SOS.Canonical079
import NoFourMUBs.Step2.SOS.Canonical080
import NoFourMUBs.Step2.SOS.Canonical082
import NoFourMUBs.Step2.SOS.Canonical088
import NoFourMUBs.Step2.SOS.Canonical089
import NoFourMUBs.Step2.SOS.Canonical220
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes027
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
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions164
import NoFourMUBs.Step2.SOS.Reductions166
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions168
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical68
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical72
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical73
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical74
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical77
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical78
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection5408 : Integer.Sparse (Fin 1613) := [(0, 43), (19, -40), (94, 100), (247, 240), (549, 720), (669, 720), (698, 320), (1055, -720), (1219, -240), (1226, 80), (1227, 320), (1251, -175), (1388, -720)]

def reductionPivot5408 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]

theorem reductionSound5408 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2356).moment H =
      Integer.Sparse.eval reductionProjection5408 (momentVector H) := by
  have heq : reductionPivot5408 = (fun u v => (normalNode2356).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2356).moment H = injectiveMoment H reductionPivot5408 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2356).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5408 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5408 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5408 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1240, reductionProjection4807, reductionProjection5406, reductionProjection5407, oldProjection2438] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5408 (0 : Fin 5)) = (normalNode603).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1240 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5408 (1 : Fin 5)) = (normalNode2307).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4807 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5408 (2 : Fin 5)) = canonicalInput4949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5406 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5406 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4949 hH))).trans (reductionSound5406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5408 (3 : Fin 5)) = canonicalInput4975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5407 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4975 hH))).trans (reductionSound5407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5408 (4 : Fin 5)) = canonicalInput4977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2438 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5408 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2438 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4977 hH))).trans (oldProjectionSound2438 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2356).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5408 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2356).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5408 (j : Fin 5)))
      1 1440 1440 1 ![720, 720, 1440, 1440, 288] ![2, 2, 1, 1, 5] reductionProjection5408 ![reductionProjection1240, reductionProjection4807, reductionProjection5406, reductionProjection5407, oldProjection2438]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5409 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (426, -720), (666, -720), (668, -720), (698, -80), (1055, 240), (1227, -80), (1251, 40)]

def reductionPivot5409 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]

theorem reductionSound5409 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2538).moment H =
      Integer.Sparse.eval reductionProjection5409 (momentVector H) := by
  have heq : reductionPivot5409 = (fun u v => (normalNode2538).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2538).moment H = injectiveMoment H reductionPivot5409 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2538).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5409 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5409 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5409 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection473, oldProjection1309, oldProjection521, oldProjection520] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5409 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5409 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5409 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5409 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2201 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5409 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5409 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2201 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5409 (2 : Fin 4)) = canonicalInput4886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5409 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection521 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5409 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4886 hH))).trans (oldProjectionSound521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5409 (3 : Fin 4)) = canonicalInput4888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5409 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection520 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5409 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4888 hH))).trans (oldProjectionSound520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2538).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5409 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2538).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5409 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection5409 ![oldProjection473, oldProjection1309, oldProjection521, oldProjection520]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5410 : Integer.Sparse (Fin 1613) := [(81, 48), (94, -5), (698, -32), (700, -32), (1059, -16), (1221, 48), (1251, 7)]

def reductionPivot5410 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 1, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]

theorem reductionSound5410 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7000).moment H =
      Integer.Sparse.eval reductionProjection5410 (momentVector H) := by
  have heq : reductionPivot5410 = (fun u v => (normalNode7000).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7000).moment H = injectiveMoment H reductionPivot5410 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7000).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5410 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5410 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5410 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection807, oldProjection1265, oldProjection854, oldProjection844] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5410 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node807⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5410 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection807 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5410 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5410 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5769 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5410 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1265 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5410 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5769 hH))).trans (oldProjectionSound1265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5410 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5773 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5410 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection854 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5410 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5773 hH))).trans (oldProjectionSound854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5410 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5410 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection844 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5410 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7000).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5410 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7000).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5410 (j : Fin 4)))
      2 288 1440 10 ![720, 240, 720, 720] ![2, 6, 2, 2] reductionProjection5410 ![oldProjection807, oldProjection1265, oldProjection854, oldProjection844]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5411 : Integer.Sparse (Fin 1613) := [(0, 3), (461, -720), (586, -720), (674, -720), (698, -240), (1059, -80), (1227, -160), (1251, 45)]

def reductionPivot5411 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![2, -1, -1, 0]]

theorem reductionSound5411 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2662).moment H =
      Integer.Sparse.eval reductionProjection5411 (momentVector H) := by
  have heq : reductionPivot5411 = (fun u v => (normalNode2662).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2662).moment H = injectiveMoment H reductionPivot5411 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2662).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5411 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5411 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5411 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection481, oldProjection1058, oldProjection523, oldProjection507] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5411 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node481⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5411 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection481 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5411 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5411 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2349 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5411 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1058 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5411 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2349 hH))).trans (oldProjectionSound1058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5411 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2378 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5411 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection523 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5411 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2378 hH))).trans (oldProjectionSound523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5411 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node507⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5411 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection507 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5411 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2662).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5411 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2662).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5411 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection5411 ![oldProjection481, oldProjection1058, oldProjection523, oldProjection507]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5412 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -120), (94, 20), (127, 360), (241, 80), (426, 360), (461, 360), (462, 720), (540, -720), (586, 360), (666, 360), (668, 360), (674, 360), (698, 320), (700, 80), (1055, -240), (1059, 80), (1221, -120), (1227, 120), (1251, -75)]

def reductionPivot5412 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 2, -1, -1], ![2, 0, -1, -1]]

theorem reductionSound5412 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2357).moment H =
      Integer.Sparse.eval reductionProjection5412 (momentVector H) := by
  have heq : reductionPivot5412 = (fun u v => (normalNode2357).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2357).moment H = injectiveMoment H reductionPivot5412 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2357).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5412 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5412 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5412 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1243, reductionProjection5323, reductionProjection5409, reductionProjection5410, reductionProjection5411] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5412 (0 : Fin 5)) = (normalNode606).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1243 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5412 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code540).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5323 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5412 (2 : Fin 5)) = canonicalInput4951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5409 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4951 hH))).trans (reductionSound5409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5412 (3 : Fin 5)) = canonicalInput4978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5410 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4978 hH))).trans (reductionSound5410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5412 (4 : Fin 5)) = (normalNode2662).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5411 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5412 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2357).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5412 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2357).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5412 (j : Fin 5)))
      1 720 1440 2 ![144, 1, 1440, 288, 1440] ![10, 1440, 1, 5, 1] reductionProjection5412 ![reductionProjection1243, reductionProjection5323, reductionProjection5409, reductionProjection5410, reductionProjection5411]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5413 : Integer.Sparse (Fin 1613) := [(0, 26), (19, -80), (94, 135), (174, 720), (241, 80), (247, 240), (546, 720), (610, 720), (697, -240), (698, 560), (1055, -960), (1058, -480), (1226, 80), (1227, 480), (1250, 60), (1251, -195), (1388, -240), (1389, -240)]

def reductionPivot5413 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound5413 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2358).moment H =
      Integer.Sparse.eval reductionProjection5413 (momentVector H) := by
  have heq : reductionPivot5413 = (fun u v => (normalNode2358).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2358).moment H = injectiveMoment H reductionPivot5413 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2358).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5413 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5413 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5413 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1201, reductionProjection5316, reductionProjection3095, reductionProjection3301, oldProjection2445] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5413 (0 : Fin 5)) = (normalNode623).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1201 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5413 (1 : Fin 5)) = (normalNode2316).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5316 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5413 (2 : Fin 5)) = canonicalInput4959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3095 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4959 hH))).trans (reductionSound3095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5413 (3 : Fin 5)) = (normalNode2699).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3301 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5413 (4 : Fin 5)) = canonicalInput4990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2445 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5413 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4990 hH))).trans (oldProjectionSound2445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2358).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5413 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2358).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5413 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 1440, 1440, 1440] ![5, 2, 1, 1, 1] reductionProjection5413 ![reductionProjection1201, reductionProjection5316, reductionProjection3095, reductionProjection3301, oldProjection2445]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5414 : Integer.Sparse (Fin 1613) := [(0, 1), (38, 240), (56, 240), (81, 480), (90, -80), (94, -10), (547, -720), (697, 240), (698, -240), (700, -80), (1226, -80), (1227, -80), (1251, 5), (1389, 240)]

def reductionPivot5414 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 2, -2, -1]]

theorem reductionSound5414 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2360).moment H =
      Integer.Sparse.eval reductionProjection5414 (momentVector H) := by
  have heq : reductionPivot5414 = (fun u v => (normalNode2360).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2360).moment H = injectiveMoment H reductionPivot5414 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2360).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5414 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5414 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5414 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5269, reductionProjection1083, reductionProjection2079, oldProjection836] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5414 (0 : Fin 4)) = canonicalInput1530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5414 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5269 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5414 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1530 hH))).trans (reductionSound5269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5414 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code547).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5414 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5414 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5414 (2 : Fin 4)) = canonicalInput5006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5414 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2079 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5414 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2079 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5006 hH))).trans (reductionSound2079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5414 (3 : Fin 4)) = canonicalInput5008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5414 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection836 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5414 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5008 hH))).trans (oldProjectionSound836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2360).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5414 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2360).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5414 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 3, 720] ![480, 1440, 480, 2] reductionProjection5414 ![reductionProjection5269, reductionProjection1083, reductionProjection2079, oldProjection836]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5415 : Integer.Sparse (Fin 1613) := [(0, 1), (88, -80), (89, 240), (90, -80), (94, -10), (243, -160), (548, -720), (698, -400), (700, -80), (704, -80), (1061, 240), (1219, 240), (1226, -240), (1227, -160), (1251, 5)]

def reductionPivot5415 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 1, 2, -4]]

theorem reductionSound5415 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2361).moment H =
      Integer.Sparse.eval reductionProjection5415 (momentVector H) := by
  have heq : reductionPivot5415 = (fun u v => (normalNode2361).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2361).moment H = injectiveMoment H reductionPivot5415 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2361).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5415 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5415 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5415 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4298, oldProjection501, oldProjection834, oldProjection836] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5415 (0 : Fin 4)) = canonicalInput1531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5415 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4298 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5415 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1531 hH))).trans (reductionSound4298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5415 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5415 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5415 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5415 (2 : Fin 4)) = canonicalInput5007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5415 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection834 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5415 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5007 hH))).trans (oldProjectionSound834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5415 (3 : Fin 4)) = canonicalInput5010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5415 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection836 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5415 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5010 hH))).trans (oldProjectionSound836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2361).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5415 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2361).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5415 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 9, 720] ![480, 1440, 160, 2] reductionProjection5415 ![reductionProjection4298, oldProjection501, oldProjection834, oldProjection836]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5416 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -30), (94, 15), (695, -60), (697, -240), (698, 160), (700, 80), (1059, 100), (1250, 120), (1251, 15)]

def reductionPivot5416 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -2, -1]]

theorem reductionSound5416 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode2362).moment H =
      Integer.Sparse.eval reductionProjection5416 (momentVector H) := by
  have heq : reductionPivot5416 = (fun u v => (normalNode2362).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2362).moment H = injectiveMoment H reductionPivot5416 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2362).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5416 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5416 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5416 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection781, oldProjection1737, oldProjection1737, reductionProjection5394, oldProjection2455] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5416 (0 : Fin 5)) = (normalNode635).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection781 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5416 (1 : Fin 5)) = canonicalInput4819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4819 hH))).trans (oldProjectionSound1737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5416 (2 : Fin 5)) = canonicalInput5039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5039 hH))).trans (oldProjectionSound1737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5416 (3 : Fin 5)) = canonicalInput5054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5394 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5054 hH))).trans (reductionSound5394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5416 (4 : Fin 5)) = canonicalInput5055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2455 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5416 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5055 hH))).trans (oldProjectionSound2455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2362).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5416 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2362).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5416 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 1440, 720, 1440] ![1, 1, 1, 2, 1] reductionProjection5416 ![reductionProjection781, oldProjection1737, oldProjection1737, reductionProjection5394, oldProjection2455]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5417 : Integer.Sparse (Fin 1613) := [(0, -8), (81, -240), (94, 75), (241, 480), (462, 720), (586, 720), (666, 1440), (698, 1840), (700, 80), (1050, -960), (1052, -240), (1055, -960), (1059, 480), (1221, -480), (1226, 80), (1227, 560), (1251, -185)]

def reductionPivot5417 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]

theorem reductionSound5417 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2363).moment H =
      Integer.Sparse.eval reductionProjection5417 (momentVector H) := by
  have heq : reductionPivot5417 = (fun u v => (normalNode2363).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2363).moment H = injectiveMoment H reductionPivot5417 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2363).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5417 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5417 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5417 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection792, oldProjection1839, oldProjection1839, oldProjection2455, reductionProjection3067] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5417 (0 : Fin 5)) = canonicalInput1559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection792 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection792 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1559 hH))).trans (reductionSound792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5417 (1 : Fin 5)) = canonicalInput4821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1839 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4821 hH))).trans (oldProjectionSound1839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5417 (2 : Fin 5)) = canonicalInput5040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1839 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5040 hH))).trans (oldProjectionSound1839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5417 (3 : Fin 5)) = canonicalInput5055.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2455 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5055 hH))).trans (oldProjectionSound2455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5417 (4 : Fin 5)) = (normalNode2737).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3067 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5417 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2363).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5417 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2363).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5417 (j : Fin 5)))
      1 1440 1440 1 ![72, 1440, 1440, 1440, 288] ![20, 1, 1, 1, 5] reductionProjection5417 ![reductionProjection792, oldProjection1839, oldProjection1839, oldProjection2455, reductionProjection3067]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5418 : Integer.Sparse (Fin 1613) := [(777, 1)]

theorem reductionSound5418 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code777).moment H =
      Integer.Sparse.eval reductionProjection5418 (momentVector H) := by
  have hc : coordinates (777 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code777) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5418, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5419 : Integer.Sparse (Fin 1613) := [(94, -1), (682, 6), (697, 24), (698, -6), (700, -2), (704, -8), (777, -18), (1251, -1)]

def reductionPivot5419 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 3, -3, -1]]

theorem reductionSound5419 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode2740).moment H =
      Integer.Sparse.eval reductionProjection5419 (momentVector H) := by
  have heq : reductionPivot5419 = (fun u v => (normalNode2740).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2740).moment H = injectiveMoment H reductionPivot5419 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2740).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5419 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5419 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 1, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5419 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1209, reductionProjection5418, oldProjection947, oldProjection1248] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5419 (0 : Fin 4)) = canonicalInput5677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5419 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1209 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5419 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5677 hH))).trans (oldProjectionSound1209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5419 (1 : Fin 4)) = canonicalInput5125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5419 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5418 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5419 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5125 hH))).trans (reductionSound5418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5419 (2 : Fin 4)) = canonicalInput5099.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5419 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5419 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5099 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5419 (3 : Fin 4)) = canonicalInput5098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5419 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1248 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5419 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5098 hH))).trans (oldProjectionSound1248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2740).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5419 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2740).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5419 (j : Fin 4)))
      2 36 72 4 ![36, 1, 72, 72] ![2, 72, 1, 1] reductionProjection5419 ![oldProjection1209, reductionProjection5418, oldProjection947, oldProjection1248]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5420 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -80), (20, 10), (81, -240), (94, 95), (682, -600), (683, -240), (695, -120), (697, -960), (698, 440), (700, 200), (701, 40), (704, 320), (777, 360), (1059, 80), (1250, 120), (1251, 25), (1321, -480), (1323, -240), (1389, -480)]

def reductionPivot5420 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -3, -1]]

theorem reductionSound5420 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2364).moment H =
      Integer.Sparse.eval reductionProjection5420 (momentVector H) := by
  have heq : reductionPivot5420 = (fun u v => (normalNode2364).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2364).moment H = injectiveMoment H reductionPivot5420 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2364).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5420 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5420 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 1440, 36, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5420 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1220, reductionProjection5358, reductionProjection5358, reductionProjection5419, oldProjection1674] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5420 (0 : Fin 5)) = (normalNode645).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1220 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5420 (1 : Fin 5)) = canonicalInput4824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5358 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4824 hH))).trans (reductionSound5358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5420 (2 : Fin 5)) = canonicalInput5041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5358 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5041 hH))).trans (reductionSound5358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5420 (3 : Fin 5)) = (normalNode2740).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5419 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5420 (4 : Fin 5)) = canonicalInput5058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1674 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5420 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5058 hH))).trans (oldProjectionSound1674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2364).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5420 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2364).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5420 (j : Fin 5)))
      1 720 1440 2 ![144, 1440, 1440, 36, 720] ![10, 1, 1, 40, 2] reductionProjection5420 ![reductionProjection1220, reductionProjection5358, reductionProjection5358, reductionProjection5419, oldProjection1674]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5421 : Integer.Sparse (Fin 1613) := [(0, 12), (19, -60), (94, 135), (590, 360), (695, -120), (697, -480), (698, 320), (700, 80), (1059, 120), (1227, 160), (1250, 240), (1251, -245), (1389, -840)]

def reductionPivot5421 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound5421 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2365).moment H =
      Integer.Sparse.eval reductionProjection5421 (momentVector H) := by
  have heq : reductionPivot5421 = (fun u v => (normalNode2365).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2365).moment H = injectiveMoment H reductionPivot5421 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2365).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5421 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5421 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5421 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection781, oldProjection1738, oldProjection1738, reductionProjection3103, oldProjection2454] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5421 (0 : Fin 5)) = canonicalInput1562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection781 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1562 hH))).trans (reductionSound781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5421 (1 : Fin 5)) = canonicalInput4825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1738 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1738 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4825 hH))).trans (oldProjectionSound1738 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5421 (2 : Fin 5)) = canonicalInput5042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1738 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1738 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5042 hH))).trans (oldProjectionSound1738 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5421 (3 : Fin 5)) = (normalNode2741).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3103 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5421 (4 : Fin 5)) = canonicalInput5060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2454 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5421 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5060 hH))).trans (oldProjectionSound2454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2365).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5421 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2365).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5421 (j : Fin 5)))
      1 720 1440 2 ![1440, 720, 720, 144, 1440] ![1, 2, 2, 10, 1] reductionProjection5421 ![reductionProjection781, oldProjection1738, oldProjection1738, reductionProjection3103, oldProjection2454]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5422 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (94, 10), (169, 720), (241, 160), (243, 80), (602, 720), (698, 880), (700, 80), (1050, -720), (1052, -240), (1058, -720), (1059, 320), (1221, -480), (1223, -240), (1226, 240), (1227, 240), (1251, -55)]

def reductionPivot5422 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, 0, 0, -2]]

theorem reductionSound5422 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2366).moment H =
      Integer.Sparse.eval reductionProjection5422 (momentVector H) := by
  have heq : reductionPivot5422 = (fun u v => (normalNode2366).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2366).moment H = injectiveMoment H reductionPivot5422 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2366).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5422 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5422 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5422 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1501, oldProjection1744, oldProjection2431, oldProjection840, oldProjection1781] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5422 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1501⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1501 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5422 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1744⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1744 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5422 (2 : Fin 5)) = canonicalInput5043.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2431 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5043 hH))).trans (oldProjectionSound2431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5422 (3 : Fin 5)) = canonicalInput5062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection840 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5062 hH))).trans (oldProjectionSound840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5422 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1781 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5422 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2366).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5422 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2366).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5422 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 360, 1440] ![2, 1, 1, 4, 1] reductionProjection5422 ![oldProjection1501, oldProjection1744, oldProjection2431, oldProjection840, oldProjection1781]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5423 : Integer.Sparse (Fin 1613) := [(0, -3), (56, -240), (81, -720), (90, 80), (94, 70), (490, 720), (618, 720), (682, -480), (683, -240), (697, -480), (698, 800), (704, 80), (919, 720), (1058, -480), (1226, 400), (1227, 560), (1251, -55), (1321, -480), (1323, -240), (1389, -720)]

def reductionPivot5423 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]

theorem reductionSound5423 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2368).moment H =
      Integer.Sparse.eval reductionProjection5423 (momentVector H) := by
  have heq : reductionPivot5423 = (fun u v => (normalNode2368).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2368).moment H = injectiveMoment H reductionPivot5423 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2368).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5423 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5423 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5423 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1329, reductionProjection5382, oldProjection943, reductionProjection4445, oldProjection1794] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5423 (0 : Fin 5)) = (normalNode665).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1329 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5423 (1 : Fin 5)) = canonicalInput4833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5382 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4833 hH))).trans (reductionSound5382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5423 (2 : Fin 5)) = canonicalInput5052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection943 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5052 hH))).trans (oldProjectionSound943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5423 (3 : Fin 5)) = canonicalInput5079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4445 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5079 hH))).trans (reductionSound4445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5423 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1794⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1794 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5423 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2368).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5423 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2368).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5423 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 720, 1440] ![1, 1, 2, 2, 1] reductionProjection5423 ![reductionProjection1329, reductionProjection5382, oldProjection943, reductionProjection4445, oldProjection1794]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5424 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (81, -240), (94, 60), (174, 720), (228, -240), (247, 80), (616, 720), (698, 1120), (1055, -480), (1058, -480), (1059, 160), (1219, -240), (1223, -240), (1226, 400), (1227, 560), (1251, -155)]

def reductionPivot5424 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound5424 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2369).moment H =
      Integer.Sparse.eval reductionProjection5424 (momentVector H) := by
  have heq : reductionPivot5424 = (fun u v => (normalNode2369).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2369).moment H = injectiveMoment H reductionPivot5424 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2369).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5424 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5424 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5424 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1502, reductionProjection2010, oldProjection838, reductionProjection3397, oldProjection2447] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5424 (0 : Fin 5)) = canonicalInput1573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1502 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1573 hH))).trans (oldProjectionSound1502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5424 (1 : Fin 5)) = (normalNode2507).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2010 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5424 (2 : Fin 5)) = canonicalInput5053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5053 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5424 (3 : Fin 5)) = (normalNode2753).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3397 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5424 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2334 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2447 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5424 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2334 hH))).trans (oldProjectionSound2447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2369).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5424 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2369).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5424 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 1440] ![1, 1, 2, 1, 1] reductionProjection5424 ![oldProjection1502, reductionProjection2010, oldProjection838, reductionProjection3397, oldProjection2447]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5425 : Integer.Sparse (Fin 1613) := [(629, 1)]

theorem reductionSound5425 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code629).moment H =
      Integer.Sparse.eval reductionProjection5425 (momentVector H) := by
  have hc : coordinates (629 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code629) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5425, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5426 : Integer.Sparse (Fin 1613) := [(629, -1), (630, -1), (640, -1), (919, -1)]

def reductionPivot5426 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 2, -3, 1], ![1, -2, 0, 1], ![1, 1, 1, -3]]

theorem reductionSound5426 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2760).moment H =
      Integer.Sparse.eval reductionProjection5426 (momentVector H) := by
  have heq : reductionPivot5426 = (fun u v => (normalNode2760).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2760).moment H = injectiveMoment H reductionPivot5426 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2760).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5426 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5426 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5426 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection352, oldProjection612, reductionProjection299, reductionProjection5425] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5426 (0 : Fin 4)) = canonicalInput5720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5426 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection352 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5426 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5720 hH))).trans (reductionSound352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5426 (1 : Fin 4)) = canonicalInput5279.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5426 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection612 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5426 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5279 hH))).trans (oldProjectionSound612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5426 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code630).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5426 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection299 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5426 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5426 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code629).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5426 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5425 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5426 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2760).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5426 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2760).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5426 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection5426 ![reductionProjection352, oldProjection612, reductionProjection299, reductionProjection5425]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5427 : Integer.Sparse (Fin 1613) := [(0, -2), (42, 80), (76, -480), (77, -240), (79, -480), (81, -240), (87, -480), (88, 400), (89, -240), (90, 800), (91, 80), (94, 15), (180, 720), (241, 80), (243, 320), (565, 720), (596, 720), (629, 720), (630, 1440), (640, 720), (698, 1440), (700, 320), (919, 720), (1052, -240), (1059, 80), (1219, -240), (1221, -240), (1226, 1280), (1227, 480), (1251, -75)]

def reductionPivot5427 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound5427 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2370).moment H =
      Integer.Sparse.eval reductionProjection5427 (momentVector H) := by
  have heq : reductionPivot5427 = (fun u v => (normalNode2370).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2370).moment H = injectiveMoment H reductionPivot5427 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2370).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5427 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5427 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 288, 288, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5427 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1330, reductionProjection5138, oldProjection1779, reductionProjection5426, oldProjection1797] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5427 (0 : Fin 5)) = (normalNode667).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1330 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1330 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5427 (1 : Fin 5)) = (normalNode2516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5138 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5427 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1779⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1779 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5427 (3 : Fin 5)) = (normalNode2760).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5426 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5426 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5427 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1797⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1797 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5427 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2370).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5427 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2370).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5427 (j : Fin 5)))
      1 1440 1440 1 ![18, 288, 288, 2, 1440] ![80, 5, 5, 720, 1] reductionProjection5427 ![reductionProjection1330, reductionProjection5138, oldProjection1779, reductionProjection5426, oldProjection1797]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5428 : Integer.Sparse (Fin 1613) := [(0, 33), (19, -40), (94, 175), (241, 240), (635, 720), (697, -240), (698, 1200), (1055, -480), (1059, 160), (1227, 880), (1250, 120), (1251, -470), (1389, -720)]

def reductionPivot5428 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound5428 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2372).moment H =
      Integer.Sparse.eval reductionProjection5428 (momentVector H) := by
  have heq : reductionPivot5428 = (fun u v => (normalNode2372).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2372).moment H = injectiveMoment H reductionPivot5428 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2372).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5428 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5428 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5428 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1504, oldProjection1751, oldProjection2449, oldProjection1801, oldProjection1793] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5428 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1219 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1504 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1219 hH))).trans (oldProjectionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5428 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2200 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2200 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5428 (2 : Fin 5)) = canonicalInput5071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5071 hH))).trans (oldProjectionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5428 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1801⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1801 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1801 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1801 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5428 (4 : Fin 5)) = canonicalInput5087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1793 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5428 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5087 hH))).trans (oldProjectionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2372).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5428 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2372).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5428 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 1440, 1440, 288] ![5, 2, 1, 1, 5] reductionProjection5428 ![oldProjection1504, oldProjection1751, oldProjection2449, oldProjection1801, oldProjection1793]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5429 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (81, -720), (94, 85), (169, 720), (228, -240), (241, 80), (602, 1440), (638, 720), (698, 1760), (1050, -480), (1052, -240), (1058, -480), (1059, 720), (1221, -480), (1223, -240), (1226, 480), (1227, 480), (1251, -240)]

def reductionPivot5429 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound5429 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2374).moment H =
      Integer.Sparse.eval reductionProjection5429 (momentVector H) := by
  have heq : reductionPivot5429 = (fun u v => (normalNode2374).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2374).moment H = injectiveMoment H reductionPivot5429 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2374).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5429 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5429 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5429 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1501, oldProjection1753, oldProjection2447, oldProjection1802, oldProjection1804] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5429 (0 : Fin 5)) = canonicalInput1584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1501 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1584 hH))).trans (oldProjectionSound1501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5429 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1753⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1753 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5429 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2334 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2447 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2334 hH))).trans (oldProjectionSound2447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5429 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1802⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1802 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5429 (4 : Fin 5)) = canonicalInput5088.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1804 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5429 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5088 hH))).trans (oldProjectionSound1804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2374).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5429 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2374).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5429 (j : Fin 5)))
      1 1440 1440 1 ![720, 288, 1440, 720, 1440] ![2, 5, 1, 2, 1] reductionProjection5429 ![oldProjection1501, oldProjection1753, oldProjection2447, oldProjection1802, oldProjection1804]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5430 : Integer.Sparse (Fin 1613) := [(79, 48), (81, 48), (87, 48), (88, -16), (90, -64), (94, -1), (640, -144), (698, -80), (700, -16), (1226, -80), (1227, -16), (1251, 3)]

def reductionPivot5430 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 1, 2], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound5430 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2523).moment H =
      Integer.Sparse.eval reductionProjection5430 (momentVector H) := by
  have heq : reductionPivot5430 = (fun u v => (normalNode2523).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2523).moment H = injectiveMoment H reductionPivot5430 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2523).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5430 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5430 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5430 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection368, oldProjection1018, reductionProjection352, oldProjection1016] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5430 (0 : Fin 4)) = canonicalInput2180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5430 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection368 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5430 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2180 hH))).trans (reductionSound368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5430 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2478 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5430 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1018 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5430 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2478 hH))).trans (oldProjectionSound1018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5430 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code640).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5430 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection352 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5430 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5430 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2500 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5430 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1016 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5430 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2500 hH))).trans (oldProjectionSound1016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2523).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5430 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2523).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5430 (j : Fin 4)))
      2 288 288 2 ![9, 9, 1, 144] ![32, 32, 288, 2] reductionProjection5430 ![reductionProjection368, oldProjection1018, reductionProjection352, oldProjection1016]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5431 : Integer.Sparse (Fin 1613) := [(595, 1)]

theorem reductionSound5431 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code595).moment H =
      Integer.Sparse.eval reductionProjection5431 (momentVector H) := by
  have hc : coordinates (595 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code595) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5431, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5432 : Integer.Sparse (Fin 1613) := [(595, -1), (630, -1), (640, -1), (1005, -1)]

def reductionPivot5432 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, 2, 1, -3], ![1, -2, 0, 1], ![1, 1, -3, 1]]

theorem reductionSound5432 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2764).moment H =
      Integer.Sparse.eval reductionProjection5432 (momentVector H) := by
  have heq : reductionPivot5432 = (fun u v => (normalNode2764).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2764).moment H = injectiveMoment H reductionPivot5432 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2764).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5432 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5432 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5432 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection299, reductionProjection5431, reductionProjection352, oldProjection617] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5432 (0 : Fin 4)) = canonicalInput5730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5432 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection299 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5432 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5730 hH))).trans (reductionSound299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5432 (1 : Fin 4)) = canonicalInput5297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5432 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5431 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5432 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5297 hH))).trans (reductionSound5431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5432 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code640).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5432 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection352 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5432 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection352 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound352 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5432 (3 : Fin 4)) = canonicalInput5293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5432 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection617 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5432 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5293 hH))).trans (oldProjectionSound617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2764).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5432 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2764).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5432 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection5432 ![reductionProjection299, reductionProjection5431, reductionProjection352, oldProjection617]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5433 : Integer.Sparse (Fin 1613) := [(0, -3), (76, -240), (77, -240), (79, -480), (81, -480), (87, -480), (88, 400), (89, -240), (90, 800), (91, 80), (181, 720), (231, -240), (241, 80), (243, 320), (595, 720), (618, 720), (630, 720), (640, 1440), (642, 720), (698, 1440), (700, 240), (1005, 720), (1052, -240), (1059, 80), (1219, -240), (1226, 1280), (1227, 480), (1251, -85)]

def reductionPivot5433 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound5433 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2376).moment H =
      Integer.Sparse.eval reductionProjection5433 (momentVector H) := by
  have heq : reductionPivot5433 = (fun u v => (normalNode2376).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2376).moment H = injectiveMoment H reductionPivot5433 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2376).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5433 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5433 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5433 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1334, reductionProjection5430, oldProjection1796, reductionProjection5432, oldProjection1807] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5433 (0 : Fin 5)) = (normalNode669).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1334 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5433 (1 : Fin 5)) = (normalNode2523).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5430 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5430 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5433 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1796⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1796 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5433 (3 : Fin 5)) = (normalNode2764).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5432 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5433 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1807⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1807 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5433 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2376).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5433 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2376).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5433 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 2, 288] ![5, 5, 1, 720, 5] reductionProjection5433 ![reductionProjection1334, reductionProjection5430, oldProjection1796, reductionProjection5432, oldProjection1807]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5434 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (77, 240), (79, 480), (81, 480), (90, -160), (94, -5), (231, 240), (698, -320), (700, -160), (1052, 240), (1059, -80), (1226, -80), (1251, 30)]

def reductionPivot5434 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, 0, -3, 1]]

theorem reductionSound5434 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2377).moment H =
      Integer.Sparse.eval reductionProjection5434 (momentVector H) := by
  have heq : reductionPivot5434 = (fun u v => (normalNode2377).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2377).moment H = injectiveMoment H reductionPivot5434 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2377).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5434 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5434 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 9, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5434 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1041, reductionProjection301, oldProjection839, reductionProjection3737] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5434 (0 : Fin 4)) = canonicalInput1585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5434 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1041 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5434 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1585 hH))).trans (reductionSound1041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5434 (1 : Fin 4)) = canonicalInput4846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5434 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection301 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5434 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4846 hH))).trans (reductionSound301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5434 (2 : Fin 4)) = canonicalInput5081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5434 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection839 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5434 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5081 hH))).trans (oldProjectionSound839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5434 (3 : Fin 4)) = canonicalInput5090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5434 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3737 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5434 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5090 hH))).trans (reductionSound3737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2377).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5434 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2377).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5434 (j : Fin 4)))
      2 1440 1440 2 ![3, 9, 720, 3] ![480, 160, 2, 480] reductionProjection5434 ![reductionProjection1041, reductionProjection301, oldProjection839, reductionProjection3737]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5435 : Integer.Sparse (Fin 1613) := [(0, -8), (19, 40), (94, -75), (698, -80), (1250, -120), (1251, 105), (1389, 240)]

def reductionPivot5435 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound5435 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2378).moment H =
      Integer.Sparse.eval reductionProjection5435 (momentVector H) := by
  have heq : reductionPivot5435 = (fun u v => (normalNode2378).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2378).moment H = injectiveMoment H reductionPivot5435 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2378).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5435 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5435 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5435 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1222, oldProjection1263, oldProjection1333, oldProjection1260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5435 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1223 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5435 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5435 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1223 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5435 (1 : Fin 4)) = canonicalInput4857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5435 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1263 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5435 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4857 hH))).trans (oldProjectionSound1263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5435 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2357 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5435 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5435 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2357 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5435 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2359 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5435 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1260 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5435 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2359 hH))).trans (oldProjectionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2378).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5435 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2378).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5435 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 720] ![2, 2, 2, 2] reductionProjection5435 ![oldProjection1222, oldProjection1263, oldProjection1333, oldProjection1260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5436 : Integer.Sparse (Fin 1613) := [(88, 1), (90, 1), (243, 1), (698, 2), (1226, 3), (1227, 1)]

def reductionPivot5436 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 1, 2], ![0, 1, -3, 2], ![1, 1, 1, -3]]

theorem reductionSound5436 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7030).moment H =
      Integer.Sparse.eval reductionProjection5436 (momentVector H) := by
  have heq : reductionPivot5436 = (fun u v => (normalNode7030).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7030).moment H = injectiveMoment H reductionPivot5436 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7030).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot5436 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5436 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5436 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection109, oldProjection229, oldProjection106] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5436 (0 : Fin 3)) = canonicalInput14105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5436 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5436 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14105 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5436 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5780 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5436 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection229 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5436 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5780 hH))).trans (oldProjectionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5436 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5775 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5436 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection106 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5436 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5775 hH))).trans (oldProjectionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7030).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5436 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7030).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5436 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection5436 ![oldProjection109, oldProjection229, oldProjection106]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5437 : Integer.Sparse (Fin 1613) := [(0, 1), (87, 480), (88, -80), (89, 240), (90, -240), (243, -80), (698, -560), (1219, 240), (1226, -560), (1227, -320), (1251, 15)]

def reductionPivot5437 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound5437 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2379).moment H =
      Integer.Sparse.eval reductionProjection5437 (momentVector H) := by
  have heq : reductionPivot5437 = (fun u v => (normalNode2379).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2379).moment H = injectiveMoment H reductionPivot5437 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2379).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5437 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5437 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 9, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5437 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection797, reductionProjection304, reductionProjection5436, reductionProjection4008] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5437 (0 : Fin 4)) = canonicalInput1598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5437 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection797 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5437 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1598 hH))).trans (reductionSound797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5437 (1 : Fin 4)) = canonicalInput4859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5437 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5437 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4859 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5437 (2 : Fin 4)) = canonicalInput5102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5437 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5436 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5437 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5436 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5102 hH))).trans (reductionSound5436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5437 (3 : Fin 4)) = canonicalInput5106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5437 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4008 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5437 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5106 hH))).trans (reductionSound4008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2379).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5437 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2379).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5437 (j : Fin 4)))
      2 1440 1440 2 ![3, 9, 9, 720] ![480, 160, 160, 2] reductionProjection5437 ![reductionProjection797, reductionProjection304, reductionProjection5436, reductionProjection4008]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5438 : Integer.Sparse (Fin 1613) := [(0, -9), (94, -15), (247, -40), (1251, 10), (1388, 120)]

def reductionPivot5438 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound5438 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode2381).moment H =
      Integer.Sparse.eval reductionProjection5438 (momentVector H) := by
  have heq : reductionPivot5438 = (fun u v => (normalNode2381).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2381).moment H = injectiveMoment H reductionPivot5438 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2381).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5438 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5438 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![180, 360, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5438 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection987, oldProjection1360, oldProjection1260, oldProjection1260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5438 (0 : Fin 4)) = canonicalInput1599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5438 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection987 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5438 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1599 hH))).trans (oldProjectionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5438 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2204 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5438 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1360 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5438 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2204 hH))).trans (oldProjectionSound1360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5438 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2359 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5438 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1260 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5438 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2359 hH))).trans (oldProjectionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5438 (3 : Fin 4)) = canonicalInput5108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5438 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1260 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5438 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5108 hH))).trans (oldProjectionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2381).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5438 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2381).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5438 (j : Fin 4)))
      2 360 720 4 ![180, 360, 720, 720] ![4, 2, 1, 1] reductionProjection5438 ![oldProjection987, oldProjection1360, oldProjection1260, oldProjection1260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5439 : Integer.Sparse (Fin 1613) := [(0, -3), (56, -240), (81, -240), (90, 80), (94, 30), (486, 720), (590, 720), (623, 720), (669, 720), (695, -240), (697, -480), (698, 1040), (700, 400), (1059, 560), (1219, -240), (1226, 80), (1227, 400), (1251, -175), (1389, -240)]

def reductionPivot5439 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -2, 0]]

theorem reductionSound5439 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2382).moment H =
      Integer.Sparse.eval reductionProjection5439 (momentVector H) := by
  have heq : reductionPivot5439 = (fun u v => (normalNode2382).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2382).moment H = injectiveMoment H reductionPivot5439 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2382).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot5439 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5439 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5439 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1296, oldProjection1834, oldProjection853, oldProjection1812, oldProjection2451] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5439 (0 : Fin 5)) = canonicalInput1602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1296 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1602 hH))).trans (reductionSound1296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5439 (1 : Fin 5)) = canonicalInput4877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4877 hH))).trans (oldProjectionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5439 (2 : Fin 5)) = canonicalInput5110.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection853 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5110 hH))).trans (oldProjectionSound853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5439 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1812⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1812 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5439 (4 : Fin 5)) = canonicalInput5116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2451 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5439 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5116 hH))).trans (oldProjectionSound2451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2382).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5439 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2382).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5439 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 720, 1440] ![1, 1, 2, 2, 1] reductionProjection5439 ![reductionProjection1296, oldProjection1834, oldProjection853, oldProjection1812, oldProjection2451]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

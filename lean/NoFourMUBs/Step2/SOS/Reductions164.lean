import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical023
import NoFourMUBs.Step2.SOS.Canonical058
import NoFourMUBs.Step2.SOS.Canonical073
import NoFourMUBs.Step2.SOS.Canonical074
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical077
import NoFourMUBs.Step2.SOS.Canonical078
import NoFourMUBs.Step2.SOS.Canonical080
import NoFourMUBs.Step2.SOS.Canonical083
import NoFourMUBs.Step2.SOS.Canonical086
import NoFourMUBs.Step2.SOS.Canonical114
import NoFourMUBs.Step2.SOS.Canonical129
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical216
import NoFourMUBs.Step2.SOS.Canonical266
import NoFourMUBs.Step2.SOS.Canonical283
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical512
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions108
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions122
import NoFourMUBs.Step2.SOS.Reductions123
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions163
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical181
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical207
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical67
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection5248 : Integer.Sparse (Fin 1613) := [(608, 1)]

theorem reductionSound5248 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code608).moment H =
      Integer.Sparse.eval reductionProjection5248 (momentVector H) := by
  have hc : coordinates (608 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code608) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5248, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5249 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (608, -720), (697, 240), (698, -80), (1059, -80), (1125, -720), (1128, -720), (1251, 35)]

def reductionPivot5249 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![1, 2, -1, -2]]

theorem reductionSound5249 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2264).moment H =
      Integer.Sparse.eval reductionProjection5249 (momentVector H) := by
  have heq : reductionPivot5249 = (fun u v => (normalNode2264).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2264).moment H = injectiveMoment H reductionPivot5249 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2264).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5249 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5249 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5249 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1346, reductionProjection5248, oldProjection683, reductionProjection1030] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5249 (0 : Fin 4)) = canonicalInput18162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5249 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1346 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5249 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18162 hH))).trans (oldProjectionSound1346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5249 (1 : Fin 4)) = canonicalInput5330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5249 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5248 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5249 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5330 hH))).trans (reductionSound5248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5249 (2 : Fin 4)) = canonicalInput4737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5249 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection683 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5249 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4737 hH))).trans (oldProjectionSound683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5249 (3 : Fin 4)) = canonicalInput4711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5249 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5249 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4711 hH))).trans (reductionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2264).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5249 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2264).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5249 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5249 ![oldProjection1346, reductionProjection5248, oldProjection683, reductionProjection1030]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5250 : Integer.Sparse (Fin 1613) := [(19, -6), (76, -24), (81, -24), (94, 11), (241, 24), (247, 8), (608, 72), (682, -24), (690, -48), (691, -24), (694, -24), (697, -72), (698, 72), (808, 72), (1050, -48), (1052, -24), (1059, 40), (1114, 72), (1125, 72), (1128, 144), (1141, 72), (1221, -24), (1250, 12), (1251, -23), (1389, -24)]

def reductionPivot5250 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -1, -2]]

theorem reductionSound5250 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2257).moment H =
      Integer.Sparse.eval reductionProjection5250 (momentVector H) := by
  have heq : reductionPivot5250 = (fun u v => (normalNode2257).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2257).moment H = injectiveMoment H reductionPivot5250 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2257).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5250 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5250 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5250 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5247, reductionProjection5218, reductionProjection5249, oldProjection2224, oldProjection2353] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5250 (0 : Fin 5)) = canonicalInput3741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5247 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3741 hH))).trans (reductionSound5247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5250 (1 : Fin 5)) = canonicalInput4679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5218 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4679 hH))).trans (reductionSound5218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5250 (2 : Fin 5)) = (normalNode2264).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5249 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5250 (3 : Fin 5)) = canonicalInput4715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2224 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4715 hH))).trans (oldProjectionSound2224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5250 (4 : Fin 5)) = canonicalInput4716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2353 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5250 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4716 hH))).trans (oldProjectionSound2353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2257).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5250 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2257).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5250 (j : Fin 5)))
      1 144 1440 10 ![72, 720, 1440, 1440, 1440] ![20, 2, 1, 1, 1] reductionProjection5250 ![reductionProjection5247, reductionProjection5218, reductionProjection5249, oldProjection2224, oldProjection2353]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5251 : Integer.Sparse (Fin 1613) := [(0, 19), (94, 50), (247, 160), (433, 720), (533, -1440), (698, 160), (775, 720), (807, 720), (808, 720), (865, 720), (869, 720), (1055, -480), (1114, 1440), (1128, 720), (1140, 720), (1141, 720), (1227, 160), (1251, -105), (1388, -240)]

def reductionPivot5251 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 1, 0, -2]]

theorem reductionSound5251 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2258).moment H =
      Integer.Sparse.eval reductionProjection5251 (momentVector H) := by
  have heq : reductionPivot5251 = (fun u v => (normalNode2258).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2258).moment H = injectiveMoment H reductionPivot5251 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2258).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5251 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5251 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5251 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2670, oldProjection2204, reductionProjection3915, oldProjection2281, oldProjection2354] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5251 (0 : Fin 5)) = canonicalInput3742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2670 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3742 hH))).trans (reductionSound2670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5251 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2148 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2204 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2148 hH))).trans (oldProjectionSound2204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5251 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code533).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3915 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5251 (3 : Fin 5)) = canonicalInput4717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2281 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4717 hH))).trans (oldProjectionSound2281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5251 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2150 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2354 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5251 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2150 hH))).trans (oldProjectionSound2354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2258).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5251 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2258).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5251 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1, 1440, 720] ![1, 1, 1440, 1, 2] reductionProjection5251 ![reductionProjection2670, oldProjection2204, reductionProjection3915, oldProjection2281, oldProjection2354]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5252 : Integer.Sparse (Fin 1613) := [(644, 1)]

theorem reductionSound5252 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code644).moment H =
      Integer.Sparse.eval reductionProjection5252 (momentVector H) := by
  have hc : coordinates (644 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code644) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5252, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5253 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -10), (644, -720), (697, 240), (698, -160), (700, -80), (789, -720), (795, -720), (1059, -80), (1251, 5)]

def reductionPivot5253 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 3, -1, -2], ![1, 0, -2, 1]]

theorem reductionSound5253 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2273).moment H =
      Integer.Sparse.eval reductionProjection5253 (momentVector H) := by
  have heq : reductionPivot5253 = (fun u v => (normalNode2273).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2273).moment H = injectiveMoment H reductionPivot5253 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2273).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot5253 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5253 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5253 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1056, reductionProjection5252, oldProjection594, oldProjection591] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5253 (0 : Fin 4)) = canonicalInput18165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5253 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1056 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5253 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18165 hH))).trans (oldProjectionSound1056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5253 (1 : Fin 4)) = canonicalInput5333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5253 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5252 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5253 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5333 hH))).trans (reductionSound5252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5253 (2 : Fin 4)) = canonicalInput4742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5253 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection594 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5253 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4742 hH))).trans (oldProjectionSound594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5253 (3 : Fin 4)) = canonicalInput4730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5253 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection591 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5253 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4730 hH))).trans (oldProjectionSound591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2273).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5253 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2273).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5253 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5253 ![oldProjection1056, reductionProjection5252, oldProjection594, oldProjection591]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5254 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -40), (76, -240), (81, -240), (90, 160), (94, 115), (241, 320), (243, 80), (247, 80), (644, 720), (682, -240), (690, -480), (691, -240), (694, -240), (697, -1200), (698, 880), (700, 480), (704, 160), (775, 720), (781, 720), (789, 1440), (795, 720), (808, 720), (1059, 240), (1226, 160), (1251, -40)]

def reductionPivot5254 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound5254 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2259).moment H =
      Integer.Sparse.eval reductionProjection5254 (momentVector H) := by
  have heq : reductionPivot5254 = (fun u v => (normalNode2259).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2259).moment H = injectiveMoment H reductionPivot5254 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2259).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5254 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5254 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5254 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1949, oldProjection2210, oldProjection2350, reductionProjection5253, oldProjection1960] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5254 (0 : Fin 5)) = canonicalInput3756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1949 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3756 hH))).trans (oldProjectionSound1949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5254 (1 : Fin 5)) = canonicalInput4696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2210 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4696 hH))).trans (oldProjectionSound2210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5254 (2 : Fin 5)) = canonicalInput4727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2350 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4727 hH))).trans (oldProjectionSound2350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5254 (3 : Fin 5)) = (normalNode2273).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5253 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5254 (4 : Fin 5)) = canonicalInput4729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1960 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5254 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4729 hH))).trans (oldProjectionSound1960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2259).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5254 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2259).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5254 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 720] ![1, 1, 2, 1, 2] reductionProjection5254 ![oldProjection1949, oldProjection2210, oldProjection2350, reductionProjection5253, oldProjection1960]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5255 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -45), (241, -80), (243, -80), (690, 240), (691, 240), (694, 240), (697, 240), (698, -240), (700, -160), (704, -160), (795, -720), (1251, -30)]

def reductionPivot5255 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 3, -1, -3]]

theorem reductionSound5255 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2260).moment H =
      Integer.Sparse.eval reductionProjection5255 (momentVector H) := by
  have heq : reductionPivot5255 = (fun u v => (normalNode2260).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2260).moment H = injectiveMoment H reductionPivot5255 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2260).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5255 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5255 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5255 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1313, oldProjection1308, oldProjection594, oldProjection1315] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5255 (0 : Fin 4)) = canonicalInput3759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5255 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1313 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5255 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1313 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3759 hH))).trans (oldProjectionSound1313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5255 (1 : Fin 4)) = canonicalInput4701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5255 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1308 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5255 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4701 hH))).trans (oldProjectionSound1308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5255 (2 : Fin 4)) = canonicalInput4732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5255 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection594 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5255 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4732 hH))).trans (oldProjectionSound594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5255 (3 : Fin 4)) = canonicalInput4733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5255 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1315 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5255 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4733 hH))).trans (oldProjectionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2260).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5255 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2260).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5255 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 1, 144] ![20, 2, 1440, 10] reductionProjection5255 ![oldProjection1313, oldProjection1308, oldProjection594, oldProjection1315]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5256 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (76, 120), (94, -5), (241, -80), (247, -40), (682, 120), (690, 240), (691, 120), (694, 120), (697, 240), (698, -80), (1251, 20)]

def reductionPivot5256 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 3, -2, -2]]

theorem reductionSound5256 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2261).moment H =
      Integer.Sparse.eval reductionProjection5256 (momentVector H) := by
  have heq : reductionPivot5256 = (fun u v => (normalNode2261).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2261).moment H = injectiveMoment H reductionPivot5256 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2261).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5256 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5256 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 360, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5256 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1305, oldProjection1310, oldProjection1315, oldProjection1303] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5256 (0 : Fin 4)) = canonicalInput3760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5256 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1305 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5256 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3760 hH))).trans (oldProjectionSound1305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5256 (1 : Fin 4)) = canonicalInput4702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5256 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1310 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5256 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4702 hH))).trans (oldProjectionSound1310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5256 (2 : Fin 4)) = canonicalInput4733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5256 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1315 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5256 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4733 hH))).trans (oldProjectionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5256 (3 : Fin 4)) = canonicalInput4734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5256 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1303 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5256 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4734 hH))).trans (oldProjectionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2261).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5256 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2261).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5256 (j : Fin 4)))
      2 720 720 2 ![144, 360, 144, 72] ![5, 2, 5, 10] reductionProjection5256 ![oldProjection1305, oldProjection1310, oldProjection1315, oldProjection1303]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5257 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -25), (563, -720), (579, -720), (608, -720), (698, -80), (1389, 240)]

def reductionPivot5257 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, -2, 2, -1]]

theorem reductionSound5257 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2812).moment H =
      Integer.Sparse.eval reductionProjection5257 (momentVector H) := by
  have heq : reductionPivot5257 = (fun u v => (normalNode2812).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2812).moment H = injectiveMoment H reductionPivot5257 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2812).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot5257 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5257 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5257 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1333, reductionProjection1046, reductionProjection5248, reductionProjection1376] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5257 (0 : Fin 4)) = canonicalInput18294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5257 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5257 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18294 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5257 (1 : Fin 4)) = canonicalInput5375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5257 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5257 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5375 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5257 (2 : Fin 4)) = canonicalInput5171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5257 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5248 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5257 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5171 hH))).trans (reductionSound5248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5257 (3 : Fin 4)) = canonicalInput5158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5257 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1376 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5257 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5158 hH))).trans (reductionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2812).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5257 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2812).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5257 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5257 ![oldProjection1333, reductionProjection1046, reductionProjection5248, reductionProjection1376]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5258 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (532, -180), (563, 180), (579, 90), (608, 180), (697, -60), (698, 40), (1059, 20), (1125, 90), (1128, 270), (1250, 15), (1251, -15), (1389, -60)]

def reductionPivot5258 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, 0, 0, -1]]

theorem reductionSound5258 {H : CMatrix} (hH : IsHadamard H) :
    (180 : ℝ) * (normalNode2262).moment H =
      Integer.Sparse.eval reductionProjection5258 (momentVector H) := by
  have heq : reductionPivot5258 = (fun u v => (normalNode2262).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2262).moment H = injectiveMoment H reductionPivot5258 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2262).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot5258 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5258 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5258 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3960, reductionProjection5257, reductionProjection3877, reductionProjection5249, reductionProjection5241] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5258 (0 : Fin 5)) = canonicalInput18161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3960 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18161 hH))).trans (reductionSound3960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5258 (1 : Fin 5)) = canonicalInput5329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5257 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5329 hH))).trans (reductionSound5257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5258 (2 : Fin 5)) = canonicalInput4736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3877 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4736 hH))).trans (reductionSound3877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5258 (3 : Fin 5)) = canonicalInput4710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5249 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4710 hH))).trans (reductionSound5249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5258 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code532).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5241 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5258 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2262).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5258 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2262).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5258 (j : Fin 5)))
      1 180 1440 8 ![1440, 1440, 1440, 1440, 1] ![1, 1, 1, 1, 1440] reductionProjection5258 ![reductionProjection3960, reductionProjection5257, reductionProjection3877, reductionProjection5249, reductionProjection5241]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5259 : Integer.Sparse (Fin 1613) := [(398, -1), (426, -1), (565, -1), (775, -1)]

def reductionPivot5259 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 1, -3, 1], ![1, 1, 0, -2]]

theorem reductionSound5259 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2270).moment H =
      Integer.Sparse.eval reductionProjection5259 (momentVector H) := by
  have heq : reductionPivot5259 = (fun u v => (normalNode2270).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2270).moment H = injectiveMoment H reductionPivot5259 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2270).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5259 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5259 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5259 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection473, oldProjection505, oldProjection588, reductionProjection4116] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5259 (0 : Fin 4)) = canonicalInput8287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5259 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5259 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8287 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5259 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5259 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5259 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5259 (2 : Fin 4)) = canonicalInput4740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5259 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5259 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4740 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5259 (3 : Fin 4)) = canonicalInput4735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5259 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4116 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5259 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4735 hH))).trans (reductionSound4116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2270).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5259 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2270).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5259 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection5259 ![oldProjection473, oldProjection505, oldProjection588, reductionProjection4116]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5260 : Integer.Sparse (Fin 1613) := [(563, -1), (666, -1), (795, -1), (1128, -1)]

def reductionPivot5260 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 0, -2, 1], ![1, 2, -1, -2]]

theorem reductionSound5260 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2269).moment H =
      Integer.Sparse.eval reductionProjection5260 (momentVector H) := by
  have heq : reductionPivot5260 = (fun u v => (normalNode2269).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2269).moment H = injectiveMoment H reductionPivot5260 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2269).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5260 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5260 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5260 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection520, reductionProjection1046, oldProjection683, oldProjection594] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5260 (0 : Fin 4)) = canonicalInput8286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5260 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection520 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5260 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8286 hH))).trans (oldProjectionSound520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5260 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code563).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5260 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5260 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5260 (2 : Fin 4)) = canonicalInput4737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5260 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection683 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5260 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4737 hH))).trans (oldProjectionSound683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5260 (3 : Fin 4)) = canonicalInput4732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5260 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection594 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5260 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4732 hH))).trans (oldProjectionSound594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2269).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5260 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2269).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5260 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection5260 ![oldProjection520, reductionProjection1046, oldProjection683, oldProjection594]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5261 : Integer.Sparse (Fin 1613) := [(94, 5), (398, 144), (426, 144), (427, 144), (534, -288), (563, 144), (565, 144), (666, 144), (698, 128), (775, 144), (795, 144), (865, 144), (890, 144), (1055, -48), (1058, -48), (1059, 16), (1128, 144), (1221, -48), (1226, 32), (1227, 64), (1251, -23)]

def reductionPivot5261 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound5261 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2265).moment H =
      Integer.Sparse.eval reductionProjection5261 (momentVector H) := by
  have heq : reductionPivot5261 = (fun u v => (normalNode2265).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2265).moment H = injectiveMoment H reductionPivot5261 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2265).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5261 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5261 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5261 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2002, reductionProjection2010, reductionProjection3876, reductionProjection5259, reductionProjection5260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5261 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2002 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5261 (1 : Fin 5)) = (normalNode2507).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2010 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5261 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code534).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3876 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3876 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5261 (3 : Fin 5)) = (normalNode2270).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5259 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5261 (4 : Fin 5)) = (normalNode2269).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5260 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5261 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2265).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5261 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2265).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5261 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 1, 2, 2] ![2, 1, 1440, 720, 720] reductionProjection5261 ![oldProjection2002, reductionProjection2010, reductionProjection3876, reductionProjection5259, reductionProjection5260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5262 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (94, 10), (535, -1440), (563, 1440), (666, 1440), (669, 1440), (698, 720), (795, 720), (1055, -480), (1059, 160), (1114, 720), (1128, 1440), (1227, 720), (1251, -205), (1389, -480)]

def reductionPivot5262 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, -1, -1]]

theorem reductionSound5262 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2267).moment H =
      Integer.Sparse.eval reductionProjection5262 (momentVector H) := by
  have heq : reductionPivot5262 = (fun u v => (normalNode2267).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2267).moment H = injectiveMoment H reductionPivot5262 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2267).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5262 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5262 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5262 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3050, reductionProjection2014, reductionProjection3889, reductionProjection3878, reductionProjection5260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5262 (0 : Fin 5)) = canonicalInput8282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3050 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8282 hH))).trans (reductionSound3050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5262 (1 : Fin 5)) = (normalNode2568).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2014 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5262 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code535).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3889 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3889 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5262 (3 : Fin 5)) = canonicalInput4720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3878 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3878 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4720 hH))).trans (reductionSound3878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5262 (4 : Fin 5)) = (normalNode2269).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5260 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5262 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2267).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5262 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2267).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5262 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1, 1440, 2] ![1, 1, 1440, 1, 720] reductionProjection5262 ![reductionProjection3050, reductionProjection2014, reductionProjection3889, reductionProjection3878, reductionProjection5260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5263 : Integer.Sparse (Fin 1613) := [(0, 1), (559, -360), (563, -360), (602, -360), (698, -80), (1059, -40), (1221, 120), (1227, -40), (1251, 15)]

def reductionPivot5263 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, -2, 1]]

theorem reductionSound5263 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2577).moment H =
      Integer.Sparse.eval reductionProjection5263 (momentVector H) := by
  have heq : reductionPivot5263 = (fun u v => (normalNode2577).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2577).moment H = injectiveMoment H reductionPivot5263 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2577).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot5263 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5263 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5263 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1010, oldProjection510, reductionProjection1046, oldProjection504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5263 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5263 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1010 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5263 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5263 (1 : Fin 4)) = canonicalInput5347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5263 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5263 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5347 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5263 (2 : Fin 4)) = canonicalInput4907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5263 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5263 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4907 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5263 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5263 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection504 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5263 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2577).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5263 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2577).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5263 (j : Fin 4)))
      2 720 720 2 ![360, 1, 1, 1] ![2, 720, 720, 720] reductionProjection5263 ![oldProjection1010, oldProjection510, reductionProjection1046, oldProjection504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5264 : Integer.Sparse (Fin 1613) := [(94, -1), (391, -72), (698, -8), (700, -24), (795, -72), (803, -72), (1052, 24), (1059, -8), (1251, -1)]

def reductionPivot5264 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 3, 0, -3], ![1, 0, -2, 1]]

theorem reductionSound5264 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2274).moment H =
      Integer.Sparse.eval reductionProjection5264 (momentVector H) := by
  have heq : reductionPivot5264 = (fun u v => (normalNode2274).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2274).moment H = injectiveMoment H reductionPivot5264 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2274).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot5264 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5264 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5264 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1269, oldProjection599, oldProjection594, reductionProjection4106] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5264 (0 : Fin 4)) = canonicalInput17069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5264 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1269 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5264 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17069 hH))).trans (oldProjectionSound1269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5264 (1 : Fin 4)) = canonicalInput5328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5264 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection599 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5264 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5328 hH))).trans (oldProjectionSound599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5264 (2 : Fin 4)) = canonicalInput4742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5264 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection594 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5264 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4742 hH))).trans (oldProjectionSound594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5264 (3 : Fin 4)) = canonicalInput4731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5264 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4106 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5264 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4731 hH))).trans (reductionSound4106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2274).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5264 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2274).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5264 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection5264 ![oldProjection1269, oldProjection599, oldProjection594, reductionProjection4106]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5265 : Integer.Sparse (Fin 1613) := [(0, -7), (94, 10), (391, 720), (427, 720), (535, -1440), (559, 720), (563, 720), (602, 720), (666, 1440), (698, 480), (700, 240), (789, 720), (795, 720), (803, 720), (890, 720), (1050, -240), (1052, -240), (1059, 240), (1128, 720), (1221, -240), (1227, 80), (1251, -95)]

def reductionPivot5265 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 0, -1, 0]]

theorem reductionSound5265 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2268).moment H =
      Integer.Sparse.eval reductionProjection5265 (momentVector H) := by
  have heq : reductionPivot5265 = (fun u v => (normalNode2268).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2268).moment H = injectiveMoment H reductionPivot5265 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2268).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5265 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5265 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 144, 720, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5265 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3457, reductionProjection5263, reductionProjection5264, oldProjection2036, reductionProjection3889] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5265 (0 : Fin 5)) = canonicalInput8283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3457 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3457 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8283 hH))).trans (reductionSound3457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5265 (1 : Fin 5)) = (normalNode2577).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5263 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5265 (2 : Fin 5)) = (normalNode2274).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5264 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5265 (3 : Fin 5)) = canonicalInput4724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4724 hH))).trans (oldProjectionSound2036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5265 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code535).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3889 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5265 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3889 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2268).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5265 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2268).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5265 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 144, 720, 1] ![1, 2, 10, 2, 1440] reductionProjection5265 ![reductionProjection3457, reductionProjection5263, reductionProjection5264, oldProjection2036, reductionProjection3889]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5266 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5), (397, -720), (631, -720), (698, -80), (775, -720), (1058, 240), (1226, -80), (1251, 40)]

def reductionPivot5266 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 2, -3, 1], ![1, 1, 0, -2]]

theorem reductionSound5266 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2271).moment H =
      Integer.Sparse.eval reductionProjection5266 (momentVector H) := by
  have heq : reductionPivot5266 = (fun u v => (normalNode2271).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2271).moment H = injectiveMoment H reductionPivot5266 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2271).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5266 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5266 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5266 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1347, reductionProjection4679, oldProjection588, reductionProjection4083] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5266 (0 : Fin 4)) = canonicalInput18163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5266 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5266 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18163 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5266 (1 : Fin 4)) = canonicalInput5331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5266 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5266 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5331 hH))).trans (reductionSound4679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5266 (2 : Fin 4)) = canonicalInput4740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5266 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5266 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4740 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5266 (3 : Fin 4)) = canonicalInput4721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5266 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5266 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4721 hH))).trans (reductionSound4083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2271).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5266 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2271).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5266 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5266 ![oldProjection1347, reductionProjection4679, oldProjection588, reductionProjection4083]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5267 : Integer.Sparse (Fin 1613) := [(561, 1)]

theorem reductionSound5267 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code561).moment H =
      Integer.Sparse.eval reductionProjection5267 (momentVector H) := by
  have hc : coordinates (561 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code561) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5267, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5268 : Integer.Sparse (Fin 1613) := [(0, 1), (398, -720), (561, -720), (698, -160), (700, -80), (789, -720), (1058, 240), (1059, -160), (1251, 15)]

def reductionPivot5268 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 1, -3, 1]]

theorem reductionSound5268 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2272).moment H =
      Integer.Sparse.eval reductionProjection5268 (momentVector H) := by
  have heq : reductionPivot5268 = (fun u v => (normalNode2272).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2272).moment H = injectiveMoment H reductionPivot5268 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2272).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5268 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5268 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5268 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection975, reductionProjection5267, reductionProjection4116, oldProjection591] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5268 (0 : Fin 4)) = canonicalInput18164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5268 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection975 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5268 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18164 hH))).trans (oldProjectionSound975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5268 (1 : Fin 4)) = canonicalInput5332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5268 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5267 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5268 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5332 hH))).trans (reductionSound5267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5268 (2 : Fin 4)) = canonicalInput4741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5268 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4116 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5268 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4741 hH))).trans (reductionSound4116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5268 (3 : Fin 4)) = canonicalInput4725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5268 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection591 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5268 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4725 hH))).trans (oldProjectionSound591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2272).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5268 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2272).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5268 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5268 ![oldProjection975, reductionProjection5267, reductionProjection4116, oldProjection591]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5269 : Integer.Sparse (Fin 1613) := [(38, -1), (56, -1), (697, -1)]

def reductionPivot5269 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 2, -1], ![2, 1, 0, -3], ![1, -2, -2, 3]]

theorem reductionSound5269 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7128).moment H =
      Integer.Sparse.eval reductionProjection5269 (momentVector H) := by
  have heq : reductionPivot5269 = (fun u v => (normalNode7128).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7128).moment H = injectiveMoment H reductionPivot5269 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7128).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7128).entries)).symm
  have hshape : reductionPivot5269 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5269 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5269 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection97, oldProjection184, oldProjection85] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5269 (0 : Fin 3)) = canonicalInput780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5269 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5269 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound780 hH))).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5269 (1 : Fin 3)) = canonicalInput11689.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5269 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5269 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11689 hH))).trans (oldProjectionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5269 (2 : Fin 3)) = canonicalInput11693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5269 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5269 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11693 hH))).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7128).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5269 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7128).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5269 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection5269 ![oldProjection97, oldProjection184, oldProjection85]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5270 : Integer.Sparse (Fin 1613) := [(0, 3), (38, 240), (56, 240), (90, -80), (94, -10), (542, -720), (697, 240), (698, -320), (700, -400), (1059, -320), (1251, 35)]

def reductionPivot5270 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, 1, -2, -1]]

theorem reductionSound5270 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2359).moment H =
      Integer.Sparse.eval reductionProjection5270 (momentVector H) := by
  have heq : reductionPivot5270 = (fun u v => (normalNode2359).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2359).moment H = injectiveMoment H reductionPivot5270 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2359).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot5270 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5270 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5270 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5269, reductionProjection1111, reductionProjection4815, reductionProjection888] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5270 (0 : Fin 4)) = canonicalInput1526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5270 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5269 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5270 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1526 hH))).trans (reductionSound5269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5270 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code542).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5270 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5270 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5270 (2 : Fin 4)) = canonicalInput4983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5270 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4815 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5270 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4983 hH))).trans (reductionSound4815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5270 (3 : Fin 4)) = canonicalInput4995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5270 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection888 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5270 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4995 hH))).trans (reductionSound888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2359).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5270 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2359).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5270 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 360, 720] ![480, 1440, 4, 2] reductionProjection5270 ![reductionProjection5269, reductionProjection1111, reductionProjection4815, reductionProjection888]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5271 : Integer.Sparse (Fin 1613) := [(72, 1), (76, 1), (154, -3), (536, -3), (1050, 1), (1052, 1), (1221, 2)]

def reductionPivot5271 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -1, -2, 3], ![0, 0, 2, -2], ![2, 1, -1, -2]]

theorem reductionSound5271 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode2277).moment H =
      Integer.Sparse.eval reductionProjection5271 (momentVector H) := by
  have heq : reductionPivot5271 = (fun u v => (normalNode2277).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2277).moment H = injectiveMoment H reductionPivot5271 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2277).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5271 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5271 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5271 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1184, oldProjection825, reductionProjection93, reductionProjection1156] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5271 (0 : Fin 4)) = canonicalInput8293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5271 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1184 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5271 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8293 hH))).trans (reductionSound1184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5271 (1 : Fin 4)) = canonicalInput4918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5271 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5271 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4918 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5271 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code536).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5271 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection93 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5271 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5271 (3 : Fin 4)) = canonicalInput4745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5271 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1156 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5271 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4745 hH))).trans (reductionSound1156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2277).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5271 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2277).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5271 (j : Fin 4)))
      2 6 6 2 ![3, 3, 1, 1] ![2, 2, 6, 6] reductionProjection5271 ![reductionProjection1184, oldProjection825, reductionProjection93, reductionProjection1156]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5272 : Integer.Sparse (Fin 1613) := [(408, -1), (536, -1), (541, -1), (542, -1)]

def reductionPivot5272 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -2, 3], ![0, 1, 1, -2], ![2, 1, -1, -2]]

theorem reductionSound5272 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode2276).moment H =
      Integer.Sparse.eval reductionProjection5272 (momentVector H) := by
  have heq : reductionPivot5272 = (fun u v => (normalNode2276).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2276).moment H = injectiveMoment H reductionPivot5272 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2276).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5272 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5272 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5272 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1111, oldProjection497, reductionProjection93, oldProjection470] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5272 (0 : Fin 4)) = canonicalInput5543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5272 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5272 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5543 hH))).trans (reductionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5272 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node497⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5272 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5272 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5272 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code536).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5272 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection93 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5272 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5272 (3 : Fin 4)) = canonicalInput4747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5272 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection470 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5272 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4747 hH))).trans (oldProjectionSound470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2276).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5272 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2276).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5272 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection5272 ![reductionProjection1111, oldProjection497, reductionProjection93, oldProjection470]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5273 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -12), (23, -48), (38, -96), (56, -48), (72, -48), (76, -48), (90, 16), (94, 6), (154, 144), (241, 48), (243, 32), (247, 32), (408, 288), (536, 288), (541, 288), (542, 288), (697, -96), (698, 160), (700, 128), (704, 16), (1050, -48), (1052, -48), (1059, 112), (1221, -96), (1251, -21)]

def reductionPivot5273 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -1, -2]]

theorem reductionSound5273 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2275).moment H =
      Integer.Sparse.eval reductionProjection5273 (momentVector H) := by
  have heq : reductionPivot5273 = (fun u v => (normalNode2275).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2275).moment H = injectiveMoment H reductionPivot5273 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2275).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5273 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5273 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 6, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5273 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5270, reductionProjection4150, reductionProjection5271, reductionProjection5272, reductionProjection4215] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5273 (0 : Fin 5)) = canonicalInput5539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5270 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5539 hH))).trans (reductionSound5270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5273 (1 : Fin 5)) = (normalNode2298).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4150 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5273 (2 : Fin 5)) = (normalNode2277).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5271 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5273 (3 : Fin 5)) = (normalNode2276).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5272 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5273 (4 : Fin 5)) = canonicalInput4744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4215 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5273 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4744 hH))).trans (reductionSound4215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2275).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5273 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2275).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5273 (j : Fin 5)))
      1 288 1440 5 ![1440, 288, 6, 2, 1440] ![1, 5, 240, 720, 1] reductionProjection5273 ![reductionProjection5270, reductionProjection4150, reductionProjection5271, reductionProjection5272, reductionProjection4215]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5274 : Integer.Sparse (Fin 1613) := [(26, 1), (88, 1), (105, 1), (241, 1), (243, -1)]

def reductionPivot5274 : Matrix (Fin 4) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -2, 1, 2], ![0, 0, -3, 3], ![0, 2, 2, -4]]

theorem reductionSound5274 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6962).moment H =
      Integer.Sparse.eval reductionProjection5274 (momentVector H) := by
  have heq : reductionPivot5274 = (fun u v => (normalNode6962).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6962).moment H = injectiveMoment H reductionPivot5274 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6962).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot5274 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5274 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5274 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection32, oldProjection102, oldProjection70] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5274 (0 : Fin 3)) = canonicalInput24280.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5274 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection32 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5274 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection32 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24280 hH))).trans (oldProjectionSound32 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5274 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5802 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5274 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection102 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5274 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5802 hH))).trans (oldProjectionSound102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5274 (2 : Fin 3)) = canonicalInput13854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5274 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection70 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5274 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection70 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13854 hH))).trans (oldProjectionSound70 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6962).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5274 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6962).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5274 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection5274 ![oldProjection32, oldProjection102, oldProjection70]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5275 : Integer.Sparse (Fin 1613) := [(537, 1)]

theorem reductionSound5275 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code537).moment H =
      Integer.Sparse.eval reductionProjection5275 (momentVector H) := by
  have hc : coordinates (537 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code537) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5275, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5276 : Integer.Sparse (Fin 1613) := [(19, 4), (23, 48), (26, -16), (88, -16), (94, -1), (104, -16), (105, -32), (241, -16), (243, -32), (537, -144), (698, -32), (704, -16), (1251, -1)]

def reductionPivot5276 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![2, 0, 2, -4]]

theorem reductionSound5276 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2278).moment H =
      Integer.Sparse.eval reductionProjection5276 (momentVector H) := by
  have heq : reductionPivot5276 = (fun u v => (normalNode2278).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2278).moment H = injectiveMoment H reductionPivot5276 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2278).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5276 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5276 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5276 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection795, reductionProjection5274, reductionProjection5275, oldProjection1364] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5276 (0 : Fin 4)) = canonicalInput7351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5276 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection795 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5276 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7351 hH))).trans (oldProjectionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5276 (1 : Fin 4)) = canonicalInput4915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5276 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5274 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5276 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4915 hH))).trans (reductionSound5274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5276 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code537).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5276 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5275 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5276 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5276 (3 : Fin 4)) = canonicalInput4746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5276 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1364 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5276 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1364 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4746 hH))).trans (oldProjectionSound1364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2278).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5276 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2278).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5276 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 9] ![2, 32, 288, 32] reductionProjection5276 ![oldProjection795, reductionProjection5274, reductionProjection5275, oldProjection1364]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5277 : Integer.Sparse (Fin 1613) := [(20, 1), (26, 16), (88, 16), (94, -6), (105, 16), (243, 48), (1226, 16), (1251, 1)]

def reductionPivot5277 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 1, 2], ![0, 0, -3, 3], ![1, 1, 2, -4]]

theorem reductionSound5277 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6957).moment H =
      Integer.Sparse.eval reductionProjection5277 (momentVector H) := by
  have heq : reductionPivot5277 = (fun u v => (normalNode6957).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6957).moment H = injectiveMoment H reductionPivot5277 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6957).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot5277 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5277 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5277 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection248, oldProjection106, oldProjection70] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5277 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6630 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5277 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection248 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5277 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6630 hH))).trans (oldProjectionSound248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5277 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5775 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5277 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection106 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5277 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5775 hH))).trans (oldProjectionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5277 (2 : Fin 3)) = canonicalInput13854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5277 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection70 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5277 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection70 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13854 hH))).trans (oldProjectionSound70 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6957).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5277 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6957).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5277 (j : Fin 3)))
      3 144 144 3 ![48, 3, 3] ![3, 48, 48] reductionProjection5277 ![oldProjection248, oldProjection106, oldProjection70]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5278 : Integer.Sparse (Fin 1613) := [(539, 1)]

theorem reductionSound5278 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code539).moment H =
      Integer.Sparse.eval reductionProjection5278 (momentVector H) := by
  have hc : coordinates (539 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code539) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5278, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5279 : Integer.Sparse (Fin 1613) := [(19, -4), (23, -48), (94, 3), (228, -48), (704, 16), (1251, 3)]

def reductionPivot5279 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 1, 2, -3], ![2, 1, -1, -2], ![-1, -2, -1, 4]]

theorem reductionSound5279 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10907).moment H =
      Integer.Sparse.eval reductionProjection5279 (momentVector H) := by
  have heq : reductionPivot5279 = (fun u v => (normalNode10907).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10907).moment H = injectiveMoment H reductionPivot5279 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10907).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10907).entries)).symm
  have hshape : reductionPivot5279 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5279 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5279 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection134, oldProjection246, oldProjection74] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5279 (0 : Fin 3)) = canonicalInput23431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5279 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection134 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5279 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection134 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23431 hH))).trans (oldProjectionSound134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5279 (1 : Fin 3)) = canonicalInput32781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5279 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5279 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32781 hH))).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5279 (2 : Fin 3)) = canonicalInput32785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5279 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection74 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5279 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection74 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32785 hH))).trans (oldProjectionSound74 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10907).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5279 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10907).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5279 (j : Fin 3)))
      3 144 144 3 ![1, 48, 1] ![144, 3, 144] reductionProjection5279 ![oldProjection134, oldProjection246, oldProjection74]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

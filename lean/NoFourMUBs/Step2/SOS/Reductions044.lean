import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical029
import NoFourMUBs.Step2.SOS.Canonical031
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical185
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical187
import NoFourMUBs.Step2.SOS.Canonical197
import NoFourMUBs.Step2.SOS.Canonical198
import NoFourMUBs.Step2.SOS.Canonical199
import NoFourMUBs.Step2.SOS.Canonical216
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical163
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical164
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical67
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical69
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical75
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection1408 : Integer.Sparse (Fin 1613) := [(444, 1)]

theorem reductionSound1408 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code444).moment H =
      Integer.Sparse.eval reductionProjection1408 (momentVector H) := by
  have hc : coordinates (444 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code444) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1408, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1409 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 120), (94, -15), (228, 120), (444, -360), (465, -360), (698, -120), (1058, 120), (1226, -40), (1227, -40), (1251, -20)]

def reductionPivot1409 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![1, 0, 1, -2]]

theorem reductionSound1409 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6189).moment H =
      Integer.Sparse.eval reductionProjection1409 (momentVector H) := by
  have heq : reductionPivot1409 = (fun u v => (normalNode6189).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6189).moment H = injectiveMoment H reductionPivot1409 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6189).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1409 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1409 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1409 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1277, oldProjection731, oldProjection483, reductionProjection1408] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1409 (0 : Fin 4)) = canonicalInput23881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1409 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1277 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1409 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23881 hH))).trans (oldProjectionSound1277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1409 (1 : Fin 4)) = canonicalInput12777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1409 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection731 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1409 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12777 hH))).trans (oldProjectionSound731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1409 (2 : Fin 4)) = canonicalInput12647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1409 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1409 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12647 hH))).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1409 (3 : Fin 4)) = canonicalInput12637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1409 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1409 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12637 hH))).trans (reductionSound1408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6189).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1409 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6189).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1409 (j : Fin 4)))
      2 720 720 2 ![720, 720, 1, 1] ![1, 1, 720, 720] reductionProjection1409 ![oldProjection1277, oldProjection731, oldProjection483, reductionProjection1408]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1410 : Integer.Sparse (Fin 1613) := [(187, 1)]

theorem reductionSound1410 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code187).moment H =
      Integer.Sparse.eval reductionProjection1410 (momentVector H) := by
  have hc : coordinates (187 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code187) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1410, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1411 : Integer.Sparse (Fin 1613) := [(578, -1), (602, -1), (638, -1), (639, -1)]

def reductionPivot1411 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![2, -1, 0, -1]]

theorem reductionSound1411 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode924).moment H =
      Integer.Sparse.eval reductionProjection1411 (momentVector H) := by
  have heq : reductionPivot1411 = (fun u v => (normalNode924).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode924).moment H = injectiveMoment H reductionPivot1411 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode924).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1411 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1411 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1411 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection510, reductionProjection1402, oldProjection506, oldProjection518] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1411 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1411 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1411 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1411 (1 : Fin 4)) = canonicalInput2157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1411 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1402 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1411 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2157 hH))).trans (reductionSound1402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1411 (2 : Fin 4)) = canonicalInput2050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1411 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1411 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2050 hH))).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1411 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1305 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1411 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection518 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1411 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1305 hH))).trans (oldProjectionSound518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode924).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1411 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode924).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1411 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1411 ![oldProjection510, reductionProjection1402, oldProjection506, oldProjection518]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1412 : Integer.Sparse (Fin 1613) := [(79, 24), (94, -1), (616, -72), (698, -32), (1055, 24), (1058, 48), (1226, -16), (1227, -24), (1251, 7)]

def reductionPivot1412 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound1412 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode927).moment H =
      Integer.Sparse.eval reductionProjection1412 (momentVector H) := by
  have heq : reductionPivot1412 = (fun u v => (normalNode927).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode927).moment H = injectiveMoment H reductionPivot1412 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode927).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1412 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1412 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1412 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection838, oldProjection841, reductionProjection566, oldProjection828] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1412 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2406 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1412 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1412 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2406 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1412 (1 : Fin 4)) = canonicalInput2161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1412 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection841 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1412 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2161 hH))).trans (oldProjectionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1412 (2 : Fin 4)) = canonicalInput2058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1412 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection566 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1412 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2058 hH))).trans (reductionSound566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1412 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1306 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1412 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1412 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1306 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode927).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1412 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode927).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1412 (j : Fin 4)))
      2 144 720 10 ![720, 144, 1, 720] ![1, 5, 720, 1] reductionProjection1412 ![oldProjection838, oldProjection841, reductionProjection566, oldProjection828]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1413 : Integer.Sparse (Fin 1613) := [(0, -1), (79, -120), (81, -120), (94, 20), (187, -720), (228, -120), (444, 360), (465, 360), (563, 360), (569, 360), (578, 360), (579, 720), (602, 360), (616, 360), (638, 360), (639, 360), (698, 280), (1055, -120), (1058, -360), (1226, 120), (1227, 160), (1251, -15)]

def reductionPivot1413 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![2, -1, 0, -1]]

theorem reductionSound1413 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode737).moment H =
      Integer.Sparse.eval reductionProjection1413 (momentVector H) := by
  have heq : reductionPivot1413 = (fun u v => (normalNode737).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode737).moment H = injectiveMoment H reductionPivot1413 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode737).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1413 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1413 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 1, 2, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1413 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1409, reductionProjection1377, reductionProjection1410, reductionProjection1411, reductionProjection1412] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1413 (0 : Fin 5)) = canonicalInput330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1409 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound330 hH))).trans (reductionSound1409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1413 (1 : Fin 5)) = (normalNode741).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1377 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1413 (2 : Fin 5)) = canonicalInput2034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1410 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2034 hH))).trans (reductionSound1410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1413 (3 : Fin 5)) = (normalNode924).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1411 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1413 (4 : Fin 5)) = canonicalInput2040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1412 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1413 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2040 hH))).trans (reductionSound1412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode737).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1413 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode737).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1413 (j : Fin 5)))
      1 720 720 1 ![720, 2, 1, 2, 144] ![1, 360, 720, 360, 5] reductionProjection1413 ![reductionProjection1409, reductionProjection1377, reductionProjection1410, reductionProjection1411, reductionProjection1412]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1414 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 480), (94, -20), (228, 240), (508, -720), (642, -720), (698, -240), (1226, -160), (1227, -80), (1251, -5)]

def reductionPivot1414 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, 1, -2], ![1, 0, -2, 1]]

theorem reductionSound1414 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6191).moment H =
      Integer.Sparse.eval reductionProjection1414 (momentVector H) := by
  have heq : reductionPivot1414 = (fun u v => (normalNode6191).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6191).moment H = injectiveMoment H reductionPivot1414 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6191).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot1414 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1414 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1414 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1016, oldProjection731, oldProjection519, oldProjection496] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1414 (0 : Fin 4)) = canonicalInput23882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1414 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1016 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1414 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23882 hH))).trans (oldProjectionSound1016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1414 (1 : Fin 4)) = canonicalInput12778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1414 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection731 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1414 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12778 hH))).trans (oldProjectionSound731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1414 (2 : Fin 4)) = canonicalInput12648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1414 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1414 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12648 hH))).trans (oldProjectionSound519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1414 (3 : Fin 4)) = canonicalInput12642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1414 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection496 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1414 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12642 hH))).trans (oldProjectionSound496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6191).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1414 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6191).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1414 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 1, 1] ![10, 2, 1440, 1440] reductionProjection1414 ![oldProjection1016, oldProjection731, oldProjection519, oldProjection496]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1415 : Integer.Sparse (Fin 1613) := [(188, 1)]

theorem reductionSound1415 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code188).moment H =
      Integer.Sparse.eval reductionProjection1415 (momentVector H) := by
  have hc : coordinates (188 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code188) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1415, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1416 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -480), (87, -240), (94, 20), (188, -1440), (228, -240), (508, 720), (578, 720), (579, 720), (602, 720), (616, 720), (636, 720), (638, 720), (639, 1440), (642, 720), (645, 720), (698, 560), (1050, -240), (1058, -480), (1059, 160), (1226, 320), (1227, 320), (1251, -35)]

def reductionPivot1416 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound1416 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode738).moment H =
      Integer.Sparse.eval reductionProjection1416 (momentVector H) := by
  have heq : reductionPivot1416 = (fun u v => (normalNode738).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode738).moment H = injectiveMoment H reductionPivot1416 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode738).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1416 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1416 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1, 2, 36] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1416 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1414, reductionProjection1404, reductionProjection1415, reductionProjection1411, reductionProjection914] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1416 (0 : Fin 5)) = canonicalInput331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1414 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound331 hH))).trans (reductionSound1414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1416 (1 : Fin 5)) = (normalNode742).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1404 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1416 (2 : Fin 5)) = canonicalInput2035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1415 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2035 hH))).trans (reductionSound1415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1416 (3 : Fin 5)) = canonicalInput2042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1411 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2042 hH))).trans (reductionSound1411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1416 (4 : Fin 5)) = canonicalInput2044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection914 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1416 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2044 hH))).trans (reductionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode738).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1416 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode738).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1416 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1, 2, 36] ![1, 720, 1440, 720, 40] reductionProjection1416 ![reductionProjection1414, reductionProjection1404, reductionProjection1415, reductionProjection1411, reductionProjection914]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1417 : Integer.Sparse (Fin 1613) := [(1131, 1)]

theorem reductionSound1417 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1131).moment H =
      Integer.Sparse.eval reductionProjection1417 (momentVector H) := by
  have hc : coordinates (1131 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1131) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1417, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1418 : Integer.Sparse (Fin 1613) := [(465, -1), (602, -1), (642, -1), (1131, -1)]

def reductionPivot1418 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 2, -1, 0], ![1, 0, -2, 1], ![1, 0, 1, -2]]

theorem reductionSound1418 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6190).moment H =
      Integer.Sparse.eval reductionProjection1418 (momentVector H) := by
  have heq : reductionPivot1418 = (fun u v => (normalNode6190).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6190).moment H = injectiveMoment H reductionPivot1418 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6190).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1418 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1418 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1418 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection510, reductionProjection1417, oldProjection483, oldProjection519] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1418 (0 : Fin 4)) = canonicalInput14051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1418 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection510 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1418 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14051 hH))).trans (oldProjectionSound510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1418 (1 : Fin 4)) = canonicalInput12682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1418 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1417 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1418 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1417 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12682 hH))).trans (reductionSound1417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1418 (2 : Fin 4)) = canonicalInput12647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1418 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1418 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12647 hH))).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1418 (3 : Fin 4)) = canonicalInput12643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1418 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1418 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12643 hH))).trans (oldProjectionSound519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6190).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1418 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6190).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1418 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1418 ![oldProjection510, reductionProjection1417, oldProjection483, oldProjection519]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1419 : Integer.Sparse (Fin 1613) := [(1026, 1)]

theorem reductionSound1419 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1026).moment H =
      Integer.Sparse.eval reductionProjection1419 (momentVector H) := by
  have hc : coordinates (1026 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1026) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1419, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1420 : Integer.Sparse (Fin 1613) := [(578, -1), (645, -2), (1026, -1)]

def reductionPivot1420 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -2, 2, 2], ![-1, 2, -2, 1], ![0, 1, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound1420 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode743).moment H =
      Integer.Sparse.eval reductionProjection1420 (momentVector H) := by
  have heq : reductionPivot1420 = (fun u v => (normalNode743).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode743).moment H = injectiveMoment H reductionPivot1420 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode743).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1420 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1420 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1420 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1419, oldProjection506, reductionProjection1403, reductionProjection1403] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1420 (0 : Fin 4)) = canonicalInput14044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1420 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1419 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1420 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14044 hH))).trans (reductionSound1419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1420 (1 : Fin 4)) = canonicalInput2163.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1420 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1420 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2163 hH))).trans (oldProjectionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1420 (2 : Fin 4)) = canonicalInput1810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1420 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1403 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1420 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1810 hH))).trans (reductionSound1403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1420 (3 : Fin 4)) = canonicalInput1804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1420 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1403 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1420 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1804 hH))).trans (reductionSound1403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode743).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1420 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode743).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1420 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection1420 ![reductionProjection1419, oldProjection506, reductionProjection1403, reductionProjection1403]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1421 : Integer.Sparse (Fin 1613) := [(0, -1), (87, -120), (465, 360), (578, 720), (579, 360), (602, 720), (636, 360), (638, 720), (639, 720), (642, 360), (645, 1080), (698, 160), (1026, 360), (1055, -120), (1058, -240), (1131, 360), (1226, 80), (1227, 40), (1251, -15)]

def reductionPivot1421 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![2, -1, 0, -1]]

theorem reductionSound1421 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode739).moment H =
      Integer.Sparse.eval reductionProjection1421 (momentVector H) := by
  have heq : reductionPivot1421 = (fun u v => (normalNode739).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode739).moment H = injectiveMoment H reductionPivot1421 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode739).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot1421 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1421 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 2, 2, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1421 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1418, reductionProjection1404, reductionProjection1420, reductionProjection1411, reductionProjection896] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1421 (0 : Fin 5)) = canonicalInput332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1418 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound332 hH))).trans (reductionSound1418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1421 (1 : Fin 5)) = canonicalInput1803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1404 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1803 hH))).trans (reductionSound1404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1421 (2 : Fin 5)) = canonicalInput2036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1420 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1420 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2036 hH))).trans (reductionSound1420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1421 (3 : Fin 5)) = canonicalInput2045.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1411 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2045 hH))).trans (reductionSound1411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1421 (4 : Fin 5)) = (normalNode932).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection896 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1421 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode739).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1421 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode739).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1421 (j : Fin 5)))
      1 720 720 1 ![2, 2, 2, 2, 720] ![360, 360, 360, 360, 1] reductionProjection1421 ![reductionProjection1418, reductionProjection1404, reductionProjection1420, reductionProjection1411, reductionProjection896]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1422 : Integer.Sparse (Fin 1613) := [(218, 1)]

theorem reductionSound1422 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code218).moment H =
      Integer.Sparse.eval reductionProjection1422 (momentVector H) := by
  have hc : coordinates (218 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code218) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1422, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1423 : Integer.Sparse (Fin 1613) := [(1257, 1)]

theorem reductionSound1423 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1257).moment H =
      Integer.Sparse.eval reductionProjection1423 (momentVector H) := by
  have hc : coordinates (1257 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1257) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1423, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1424 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (218, -720), (1250, -60), (1251, 10), (1252, -720), (1257, -720), (1321, 240), (1389, 240)]

def reductionPivot1424 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, 2, -1, -2]]

theorem reductionSound1424 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode757).moment H =
      Integer.Sparse.eval reductionProjection1424 (momentVector H) := by
  have heq : reductionPivot1424 = (fun u v => (normalNode757).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode757).moment H = injectiveMoment H reductionPivot1424 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode757).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1424 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1424 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1424 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1331, reductionProjection1422, oldProjection718, reductionProjection1423] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1424 (0 : Fin 4)) = canonicalInput13831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1424 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1424 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13831 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1424 (1 : Fin 4)) = canonicalInput2199.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1424 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1422 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1424 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2199 hH))).trans (reductionSound1422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1424 (2 : Fin 4)) = canonicalInput1840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1424 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection718 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1424 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1840 hH))).trans (oldProjectionSound718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1424 (3 : Fin 4)) = canonicalInput1826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1424 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1423 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1424 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1826 hH))).trans (reductionSound1423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode757).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1424 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode757).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1424 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1424 ![oldProjection1331, reductionProjection1422, oldProjection718, reductionProjection1423]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1425 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 20), (94, -35), (240, 240), (697, 240), (698, -160), (704, -80), (1227, -80), (1250, -120), (1251, 25), (1252, -720), (1321, 240), (1389, 240)]

def reductionPivot1425 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound1425 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5767).moment H =
      Integer.Sparse.eval reductionProjection1425 (momentVector H) := by
  have heq : reductionPivot1425 = (fun u v => (normalNode5767).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5767).moment H = injectiveMoment H reductionPivot1425 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5767).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1425 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1425 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1425 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1276, oldProjection1253, oldProjection1274, oldProjection718] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1425 (0 : Fin 4)) = canonicalInput11980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1425 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1425 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11980 hH))).trans (oldProjectionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1425 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5251 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1425 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1253 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1425 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5251 hH))).trans (oldProjectionSound1253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1425 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5246 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1425 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1425 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5246 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1425 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node718⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1425 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection718 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1425 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5767).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1425 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5767).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1425 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 72, 1] ![2, 2, 20, 1440] reductionProjection1425 ![oldProjection1276, oldProjection1253, oldProjection1274, oldProjection718]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1426 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 2), (81, -96), (93, 12), (94, 20), (218, 144), (229, -48), (240, -96), (683, -48), (696, -48), (697, -144), (698, 64), (704, 32), (1058, -96), (1227, 32), (1242, 144), (1249, 144), (1250, 60), (1251, -9), (1252, 288), (1257, 144), (1319, -48), (1321, -144), (1388, -48), (1389, -144)]

def reductionPivot1426 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound1426 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode744).moment H =
      Integer.Sparse.eval reductionProjection1426 (momentVector H) := by
  have heq : reductionPivot1426 = (fun u v => (normalNode744).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode744).moment H = injectiveMoment H reductionPivot1426 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode744).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1426 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1426 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1426 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1034, oldProjection2342, reductionProjection1424, reductionProjection1425, oldProjection2333] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1426 (0 : Fin 5)) = canonicalInput2219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1034 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1034 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2219 hH))).trans (reductionSound1034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1426 (1 : Fin 5)) = canonicalInput1846.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2342 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1846 hH))).trans (oldProjectionSound2342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1426 (2 : Fin 5)) = (normalNode757).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1424 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1426 (3 : Fin 5)) = canonicalInput1824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1425 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1824 hH))).trans (reductionSound1425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1426 (4 : Fin 5)) = canonicalInput1823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2333 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1426 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1823 hH))).trans (oldProjectionSound2333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode744).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1426 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode744).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1426 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection1426 ![reductionProjection1034, oldProjection2342, reductionProjection1424, reductionProjection1425, oldProjection2333]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1427 : Integer.Sparse (Fin 1613) := [(1253, 1)]

theorem reductionSound1427 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1253).moment H =
      Integer.Sparse.eval reductionProjection1427 (momentVector H) := by
  have hc : coordinates (1253 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1253) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1427, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1428 : Integer.Sparse (Fin 1613) := [(191, 1)]

theorem reductionSound1428 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code191).moment H =
      Integer.Sparse.eval reductionProjection1428 (momentVector H) := by
  have hc : coordinates (191 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code191) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1428, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1429 : Integer.Sparse (Fin 1613) := [(81, 48), (94, -1), (191, -144), (682, 48), (698, -16), (1116, -144), (1226, -16), (1251, 3), (1253, -144)]

def reductionPivot1429 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, -2, -1], ![1, 0, 1, -2]]

theorem reductionSound1429 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode759).moment H =
      Integer.Sparse.eval reductionProjection1429 (momentVector H) := by
  have heq : reductionPivot1429 = (fun u v => (normalNode759).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode759).moment H = injectiveMoment H reductionPivot1429 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode759).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1429 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1429 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1429 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection824, reductionProjection1303, reductionProjection1427, reductionProjection1428] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1429 (0 : Fin 4)) = canonicalInput14078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1429 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1429 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14078 hH))).trans (oldProjectionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1429 (1 : Fin 4)) = canonicalInput2203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1429 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1303 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1429 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2203 hH))).trans (reductionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1429 (2 : Fin 4)) = canonicalInput1843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1429 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1427 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1429 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1843 hH))).trans (reductionSound1427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1429 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code191).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1429 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1428 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1429 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode759).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1429 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode759).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1429 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection1429 ![oldProjection824, reductionProjection1303, reductionProjection1427, reductionProjection1428]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1430 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -80), (81, -480), (93, 60), (94, 55), (191, 1440), (240, -240), (243, 240), (682, -480), (691, -240), (696, -240), (698, 480), (704, 160), (911, 720), (912, 720), (1050, -240), (1058, -720), (1116, 1440), (1226, 320), (1250, 180), (1251, 25), (1253, 1440), (1321, -480), (1323, -480)]

def reductionPivot1430 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound1430 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode745).moment H =
      Integer.Sparse.eval reductionProjection1430 (momentVector H) := by
  have heq : reductionPivot1430 = (fun u v => (normalNode745).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode745).moment H = injectiveMoment H reductionPivot1430 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode745).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1430 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1430 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 720, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1430 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1143, oldProjection1956, oldProjection2332, reductionProjection1429, reductionProjection1429] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1430 (0 : Fin 5)) = canonicalInput2220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1143 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2220 hH))).trans (reductionSound1143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1430 (1 : Fin 5)) = canonicalInput1847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1956 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1847 hH))).trans (oldProjectionSound1956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1430 (2 : Fin 5)) = canonicalInput1832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2332 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1832 hH))).trans (oldProjectionSound2332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1430 (3 : Fin 5)) = canonicalInput1831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1429 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1429 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1831 hH))).trans (reductionSound1429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1430 (4 : Fin 5)) = (normalNode759).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1429 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1430 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1429 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode745).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1430 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode745).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1430 (j : Fin 5)))
      1 1440 1440 1 ![72, 1440, 720, 288, 288] ![20, 1, 2, 5, 5] reductionProjection1430 ![reductionProjection1143, oldProjection1956, oldProjection2332, reductionProjection1429, reductionProjection1429]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1431 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (72, 48), (94, 3), (229, 48), (240, 48), (698, -16), (700, -32), (704, -16), (914, -144), (1321, 48)]

def reductionPivot1431 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 2, -2, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound1431 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5770).moment H =
      Integer.Sparse.eval reductionProjection1431 (momentVector H) := by
  have heq : reductionPivot1431 = (fun u v => (normalNode5770).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5770).moment H = injectiveMoment H reductionPivot1431 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5770).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1431 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1431 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1431 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1025, oldProjection729, oldProjection1274, oldProjection611] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1431 (0 : Fin 4)) = canonicalInput22632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1431 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1025 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1431 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22632 hH))).trans (reductionSound1025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1431 (1 : Fin 4)) = canonicalInput11945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1431 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection729 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1431 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11945 hH))).trans (oldProjectionSound729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1431 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5246 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1431 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1431 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5246 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1431 (3 : Fin 4)) = canonicalInput11854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1431 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection611 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1431 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection611 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11854 hH))).trans (oldProjectionSound611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5770).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1431 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5770).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1431 (j : Fin 4)))
      2 288 288 2 ![144, 72, 72, 1] ![2, 4, 4, 288] reductionProjection1431 ![reductionProjection1025, oldProjection729, oldProjection1274, oldProjection611]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1432 : Integer.Sparse (Fin 1613) := [(221, 1)]

theorem reductionSound1432 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code221).moment H =
      Integer.Sparse.eval reductionProjection1432 (momentVector H) := by
  have hc : coordinates (221 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code221) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1432, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1433 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -15), (221, -720), (698, -80), (911, -720), (1058, 240), (1251, -20), (1253, -720), (1321, 240)]

def reductionPivot1433 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, -1, -2], ![1, 0, 1, -2]]

theorem reductionSound1433 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode760).moment H =
      Integer.Sparse.eval reductionProjection1433 (momentVector H) := by
  have heq : reductionPivot1433 = (fun u v => (normalNode760).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode760).moment H = injectiveMoment H reductionPivot1433 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode760).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot1433 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1433 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1433 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1073, reductionProjection1432, reductionProjection1427, oldProjection610] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1433 (0 : Fin 4)) = canonicalInput13834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1433 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1433 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13834 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1433 (1 : Fin 4)) = canonicalInput2201.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1433 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1432 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1433 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2201 hH))).trans (reductionSound1432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1433 (2 : Fin 4)) = canonicalInput1843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1433 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1427 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1433 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1843 hH))).trans (reductionSound1427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1433 (3 : Fin 4)) = canonicalInput1833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1433 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection610 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1433 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1833 hH))).trans (oldProjectionSound610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode760).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1433 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode760).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1433 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1433 ![oldProjection1073, reductionProjection1432, reductionProjection1427, oldProjection610]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1434 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -16), (20, 2), (72, -48), (76, -48), (90, 16), (93, 12), (94, 17), (221, 144), (229, -48), (240, -96), (243, 16), (683, -48), (696, -48), (698, 80), (700, 48), (704, 64), (911, 288), (913, 144), (914, 144), (1047, -48), (1055, -48), (1058, -192), (1226, 16), (1250, 24), (1251, 16), (1253, 144), (1321, -240), (1323, -48)]

def reductionPivot1434 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound1434 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode746).moment H =
      Integer.Sparse.eval reductionProjection1434 (momentVector H) := by
  have heq : reductionPivot1434 = (fun u v => (normalNode746).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode746).moment H = injectiveMoment H reductionPivot1434 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode746).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot1434 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot1434 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1434 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection733, oldProjection2336, reductionProjection1431, oldProjection2332, reductionProjection1433] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1434 (0 : Fin 5)) = canonicalInput2221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection733 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2221 hH))).trans (reductionSound733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1434 (1 : Fin 5)) = canonicalInput1848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2336 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1848 hH))).trans (oldProjectionSound2336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1434 (2 : Fin 5)) = canonicalInput1834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1431 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1834 hH))).trans (reductionSound1431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1434 (3 : Fin 5)) = canonicalInput1832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2332 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1832 hH))).trans (oldProjectionSound2332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1434 (4 : Fin 5)) = (normalNode760).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1433 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1434 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1433 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode746).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1434 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode746).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot1434 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 288, 720, 1440] ![1, 1, 5, 2, 1] reductionProjection1434 ![reductionProjection733, oldProjection2336, reductionProjection1431, oldProjection2332, reductionProjection1433]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1435 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (93, -60), (94, -35), (229, 240), (240, 480), (683, 240), (696, 240), (698, -160), (704, -160), (1250, -60), (1251, -30), (1321, 480)]

def reductionPivot1435 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 3, -1, -3]]

theorem reductionSound1435 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode747).moment H =
      Integer.Sparse.eval reductionProjection1435 (momentVector H) := by
  have heq : reductionPivot1435 = (fun u v => (normalNode747).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode747).moment H = injectiveMoment H reductionPivot1435 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode747).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1435 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1435 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1435 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection152, oldProjection1205, oldProjection1274, oldProjection1014] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1435 (0 : Fin 4)) = canonicalInput2223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1435 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection152 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1435 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2223 hH))).trans (reductionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1435 (1 : Fin 4)) = canonicalInput1850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1435 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1205 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1435 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1850 hH))).trans (oldProjectionSound1205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1435 (2 : Fin 4)) = canonicalInput1837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1435 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1435 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1837 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1435 (3 : Fin 4)) = canonicalInput1836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1435 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1435 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1836 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode747).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1435 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode747).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1435 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 72, 144] ![20, 2, 20, 10] reductionProjection1435 ![reductionProjection152, oldProjection1205, oldProjection1274, oldProjection1014]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1436 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (93, -60), (94, -35), (240, 240), (243, -80), (696, 240), (698, -160), (704, -80), (1226, -80), (1250, -120), (1251, -20), (1253, -720), (1321, 240), (1323, 240)]

def reductionPivot1436 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 3, -2, -2]]

theorem reductionSound1436 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode748).moment H =
      Integer.Sparse.eval reductionProjection1436 (momentVector H) := by
  have heq : reductionPivot1436 = (fun u v => (normalNode748).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode748).moment H = injectiveMoment H reductionPivot1436 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode748).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1436 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1436 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1436 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection704, oldProjection1219, reductionProjection1427, oldProjection1274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1436 (0 : Fin 4)) = canonicalInput2224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1436 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection704 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1436 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2224 hH))).trans (reductionSound704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1436 (1 : Fin 4)) = canonicalInput1851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1436 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1219 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1436 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1851 hH))).trans (oldProjectionSound1219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1436 (2 : Fin 4)) = canonicalInput1838.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1436 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1427 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1436 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1838 hH))).trans (reductionSound1427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1436 (3 : Fin 4)) = canonicalInput1837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1436 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1436 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1837 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode748).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1436 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode748).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1436 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 1, 72] ![160, 2, 1440, 20] reductionProjection1436 ![reductionProjection704, oldProjection1219, reductionProjection1427, oldProjection1274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1437 : Integer.Sparse (Fin 1613) := [(583, 1)]

theorem reductionSound1437 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code583).moment H =
      Integer.Sparse.eval reductionProjection1437 (momentVector H) := by
  have hc : coordinates (583 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code583) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection1437, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection1438 : Integer.Sparse (Fin 1613) := [(19, 3), (82, 12), (94, -1), (238, 24), (240, 12), (241, -20), (243, -8), (247, -8), (583, -36), (698, -8)]

def reductionPivot1438 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![2, 1, 1, -4]]

theorem reductionSound1438 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode749).moment H =
      Integer.Sparse.eval reductionProjection1438 (momentVector H) := by
  have heq : reductionPivot1438 = (fun u v => (normalNode749).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode749).moment H = injectiveMoment H reductionPivot1438 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode749).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1438 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1438 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1438 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1113, reductionProjection1148, reductionProjection1437, oldProjection1055] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1438 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2158 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1438 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1438 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2158 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1438 (1 : Fin 4)) = canonicalInput1872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1438 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1148 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1438 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1872 hH))).trans (reductionSound1148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1438 (2 : Fin 4)) = canonicalInput1827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1438 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1437 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1438 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1437 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1827 hH))).trans (reductionSound1437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1438 (3 : Fin 4)) = canonicalInput1822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1438 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1438 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1822 hH))).trans (oldProjectionSound1055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode749).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1438 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode749).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1438 (j : Fin 4)))
      2 72 144 4 ![144, 9, 1, 144] ![1, 16, 144, 1] reductionProjection1438 ![oldProjection1113, reductionProjection1148, reductionProjection1437, oldProjection1055]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection1439 : Integer.Sparse (Fin 1613) := [(0, 1), (197, -720), (201, -720), (206, -720), (698, -80), (1050, 240), (1058, 240), (1059, -80), (1251, 15)]

def reductionPivot1439 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -2, 2, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![2, 0, 0, -2]]

theorem reductionSound1439 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode811).moment H =
      Integer.Sparse.eval reductionProjection1439 (momentVector H) := by
  have heq : reductionPivot1439 = (fun u v => (normalNode811).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode811).moment H = injectiveMoment H reductionPivot1439 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode811).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot1439 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot1439 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1439 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection831, reductionProjection898, oldProjection412, oldProjection410] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot1439 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2218 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1439 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1439 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2218 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1439 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code206).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1439 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection898 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1439 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1439 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node412⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1439 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection412 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1439 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot1439 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node410⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot1439 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection410 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot1439 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode811).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1439 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode811).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot1439 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection1439 ![oldProjection831, reductionProjection898, oldProjection412, oldProjection410]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

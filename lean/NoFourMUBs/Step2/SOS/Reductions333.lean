import NoFourMUBs.Step2.SOS.Canonical042
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical222
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical224
import NoFourMUBs.Step2.SOS.Canonical225
import NoFourMUBs.Step2.SOS.Canonical226
import NoFourMUBs.Step2.SOS.Canonical227
import NoFourMUBs.Step2.SOS.Canonical228
import NoFourMUBs.Step2.SOS.Canonical300
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions069
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions215
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions266
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions305
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions332
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical188
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical189
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical190
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical191
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical192
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical197
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical222
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10656 : Integer.Sparse (Fin 1613) := [(1328, 1)]

theorem reductionSound10656 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1328).moment H =
      Integer.Sparse.eval reductionProjection10656 (momentVector H) := by
  have hc : coordinates (1328 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1328) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10656, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10657 : Integer.Sparse (Fin 1613) := [(3, -16), (4, 1), (19, -16), (20, 5), (94, 5), (108, 16), (246, 16), (1251, 1)]

def reductionPivot10657 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 1, -1], ![-1, -2, 4, -1], ![1, 3, -5, 1]]

theorem reductionSound10657 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11087).moment H =
      Integer.Sparse.eval reductionProjection10657 (momentVector H) := by
  have heq : reductionPivot10657 = (fun u v => (normalNode11087).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11087).moment H = injectiveMoment H reductionPivot10657 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11087).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11087).entries)).symm
  have hshape : reductionPivot10657 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10657 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10657 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection237, oldProjection233, reductionProjection1860] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10657 (0 : Fin 3)) = canonicalInput26669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10657 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection237 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10657 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26669 hH))).trans (oldProjectionSound237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10657 (1 : Fin 3)) = canonicalInput33341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10657 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection233 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10657 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33341 hH))).trans (oldProjectionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10657 (2 : Fin 3)) = canonicalInput33345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10657 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1860 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10657 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33345 hH))).trans (reductionSound1860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11087).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10657 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11087).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10657 (j : Fin 3)))
      3 144 144 3 ![48, 48, 48] ![3, 3, 3] reductionProjection10657 ![oldProjection237, oldProjection233, reductionProjection1860]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10658 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 80), (4, -5), (20, -20), (94, -50), (108, -80), (246, -80), (247, -80), (704, -80), (1251, -40), (1328, -720)]

def reductionPivot10658 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound10658 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7339).moment H =
      Integer.Sparse.eval reductionProjection10658 (momentVector H) := by
  have heq : reductionPivot10658 = (fun u v => (normalNode7339).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7339).moment H = injectiveMoment H reductionPivot10658 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7339).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10658 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10658 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10658 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1341, reductionProjection2227, reductionProjection10656, reductionProjection10657] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10658 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6169 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10658 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10658 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6169 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10658 (1 : Fin 4)) = canonicalInput14457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10658 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2227 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10658 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14457 hH))).trans (reductionSound2227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10658 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1328).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10658 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10656 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10658 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10656 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10658 (3 : Fin 4)) = canonicalInput14447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10658 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10657 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10658 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14447 hH))).trans (reductionSound10657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7339).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10658 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7339).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10658 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 1, 144] ![2, 20, 1440, 10] reductionProjection10658 ![oldProjection1341, reductionProjection2227, reductionProjection10656, reductionProjection10657]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10659 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (20, 5), (94, 40), (704, -40), (1251, 20)]

def reductionPivot10659 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0]]

theorem reductionSound10659 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7466).moment H =
      Integer.Sparse.eval reductionProjection10659 (momentVector H) := by
  have heq : reductionPivot10659 = (fun u v => (normalNode7466).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7466).moment H = injectiveMoment H reductionPivot10659 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7466).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10659 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10659 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10659 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1268, oldProjection1177, oldProjection1228, oldProjection922] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10659 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6311 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10659 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1268 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10659 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6311 hH))).trans (oldProjectionSound1268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10659 (1 : Fin 4)) = canonicalInput14637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10659 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10659 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14637 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10659 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6102 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10659 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10659 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6102 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10659 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10659 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection922 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10659 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7466).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10659 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7466).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10659 (j : Fin 4)))
      2 720 720 2 ![360, 144, 144, 144] ![2, 5, 5, 5] reductionProjection10659 ![oldProjection1268, oldProjection1177, oldProjection1228, oldProjection922]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10660 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -100), (4, 5), (19, -28), (20, 7), (94, 7), (108, 32), (246, 16), (247, 16), (704, 32), (1251, 14), (1278, -48), (1328, 144)]

def reductionPivot10660 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound10660 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7287).moment H =
      Integer.Sparse.eval reductionProjection10660 (momentVector H) := by
  have heq : reductionPivot10660 = (fun u v => (normalNode7287).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7287).moment H = injectiveMoment H reductionPivot10660 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7287).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10660 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10660 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10660 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1897, reductionProjection10641, reductionProjection10658, reductionProjection10643, reductionProjection10659] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10660 (0 : Fin 5)) = (normalNode1088).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1897 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10660 (1 : Fin 5)) = (normalNode7304).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10641 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10660 (2 : Fin 5)) = canonicalInput14574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10658 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10658 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14574 hH))).trans (reductionSound10658 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10660 (3 : Fin 5)) = canonicalInput14587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10643 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14587 hH))).trans (reductionSound10643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10660 (4 : Fin 5)) = canonicalInput14592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10659 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10660 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10659 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14592 hH))).trans (reductionSound10659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7287).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10660 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7287).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10660 (j : Fin 5)))
      1 288 1440 5 ![288, 72, 1440, 720, 720] ![5, 20, 1, 2, 2] reductionProjection10660 ![reductionProjection1897, reductionProjection10641, reductionProjection10658, reductionProjection10643, reductionProjection10659]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10661 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -12), (20, 1), (108, 16), (1251, 3)]

def reductionPivot10661 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![0, 1, 3, -4], ![1, -1, -1, 1]]

theorem reductionSound10661 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7482).moment H =
      Integer.Sparse.eval reductionProjection10661 (momentVector H) := by
  have heq : reductionPivot10661 = (fun u v => (normalNode7482).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7482).moment H = injectiveMoment H reductionPivot10661 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7482).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10661 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10661 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10661 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection243, reductionProjection1860, oldProjection270] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10661 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7121 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10661 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection243 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10661 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7121 hH))).trans (oldProjectionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10661 (1 : Fin 3)) = canonicalInput14655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10661 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1860 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10661 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14655 hH))).trans (reductionSound1860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10661 (2 : Fin 3)) = canonicalInput14652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10661 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection270 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10661 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14652 hH))).trans (oldProjectionSound270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7482).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10661 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7482).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10661 (j : Fin 3)))
      3 144 144 3 ![24, 48, 48] ![6, 3, 3] reductionProjection10661 ![oldProjection243, reductionProjection1860, oldProjection270]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10662 : Integer.Sparse (Fin 1613) := [(3, 16), (4, -1), (19, 20), (20, 1), (94, 3), (108, -16), (246, -16), (704, -16), (1148, -144), (1251, -3)]

def reductionPivot10662 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, 0, 0, -1]]

theorem reductionSound10662 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7347).moment H =
      Integer.Sparse.eval reductionProjection10662 (momentVector H) := by
  have heq : reductionPivot10662 = (fun u v => (normalNode7347).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7347).moment H = injectiveMoment H reductionPivot10662 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7347).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10662 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10662 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10662 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2521, reductionProjection8520, reductionProjection10661, reductionProjection9011] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10662 (0 : Fin 4)) = canonicalInput23945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10662 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2521 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10662 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23945 hH))).trans (reductionSound2521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10662 (1 : Fin 4)) = canonicalInput14562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10662 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8520 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10662 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14562 hH))).trans (reductionSound8520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10662 (2 : Fin 4)) = canonicalInput14451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10662 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10662 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14451 hH))).trans (reductionSound10661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10662 (3 : Fin 4)) = canonicalInput14446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10662 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9011 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10662 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14446 hH))).trans (reductionSound9011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7347).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10662 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7347).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10662 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection10662 ![reductionProjection2521, reductionProjection8520, reductionProjection10661, reductionProjection9011]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10663 : Integer.Sparse (Fin 1613) := [(3, 20), (4, -2), (19, 4), (20, 9), (94, 7), (243, -16), (703, -16)]

def reductionPivot10663 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, 0, 0, -1]]

theorem reductionSound10663 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7383).moment H =
      Integer.Sparse.eval reductionProjection10663 (momentVector H) := by
  have heq : reductionPivot10663 = (fun u v => (normalNode7383).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7383).moment H = injectiveMoment H reductionPivot10663 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7383).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10663 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10663 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10663 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection686, reductionProjection8520, oldProjection919, oldProjection1228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10663 (0 : Fin 4)) = canonicalInput12872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10663 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection686 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10663 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12872 hH))).trans (reductionSound686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10663 (1 : Fin 4)) = canonicalInput14562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10663 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8520 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10663 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14562 hH))).trans (reductionSound8520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10663 (2 : Fin 4)) = canonicalInput14615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10663 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10663 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14615 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10663 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6102 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10663 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10663 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6102 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7383).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10663 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7383).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10663 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10663 ![reductionProjection686, reductionProjection8520, oldProjection919, oldProjection1228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10664 : Integer.Sparse (Fin 1613) := [(3, -68), (4, 5), (19, -56), (20, 4), (94, -6), (105, 16), (106, 48), (108, 16), (243, 128), (246, 16), (703, 80), (704, 16), (1054, -48), (1148, 144), (1223, -48), (1225, 48), (1226, 32), (1251, 3)]

def reductionPivot10664 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, -2, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound10664 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7288).moment H =
      Integer.Sparse.eval reductionProjection10664 (momentVector H) := by
  have heq : reductionPivot10664 = (fun u v => (normalNode7288).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7288).moment H = injectiveMoment H reductionPivot10664 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7288).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10664 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10664 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 144, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10664 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1930, reductionProjection10662, reductionProjection9776, reductionProjection10663, oldProjection1228] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10664 (0 : Fin 5)) = (normalNode1126).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1930 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10664 (1 : Fin 5)) = (normalNode7347).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10662 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10662 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10664 (2 : Fin 5)) = canonicalInput14610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9776 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14610 hH))).trans (reductionSound9776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10664 (3 : Fin 5)) = canonicalInput14622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10663 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10663 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14622 hH))).trans (reductionSound10663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10664 (4 : Fin 5)) = canonicalInput14623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10664 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14623 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7288).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10664 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7288).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10664 (j : Fin 5)))
      1 288 288 1 ![144, 288, 144, 288, 144] ![2, 1, 2, 1, 2] reductionProjection10664 ![reductionProjection1930, reductionProjection10662, reductionProjection9776, reductionProjection10663, oldProjection1228]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10665 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -20), (94, -50), (229, 240), (243, -80), (293, -720), (698, -80), (704, -240), (1251, -35), (1321, 240), (1326, -720)]

def reductionPivot10665 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound10665 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7295).moment H =
      Integer.Sparse.eval reductionProjection10665 (momentVector H) := by
  have heq : reductionPivot10665 = (fun u v => (normalNode7295).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7295).moment H = injectiveMoment H reductionPivot10665 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7295).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10665 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10665 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10665 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection453, reductionProjection8340, oldProjection893, reductionProjection1504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10665 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10665 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection453 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10665 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10665 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1326).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10665 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8340 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10665 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10665 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node893⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10665 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection893 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10665 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10665 (3 : Fin 4)) = canonicalInput14532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10665 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10665 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14532 hH))).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7295).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10665 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7295).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10665 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 144] ![1440, 1440, 2, 10] reductionProjection10665 ![oldProjection453, reductionProjection8340, oldProjection893, reductionProjection1504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10666 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 120), (20, -5), (94, -5), (229, 240), (243, -80), (244, -80), (698, -80), (700, -160), (701, -80), (704, -240), (1251, -45), (1321, 240)]

def reductionPivot10666 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 1, -2, 0]]

theorem reductionSound10666 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7397).moment H =
      Integer.Sparse.eval reductionProjection10666 (momentVector H) := by
  have heq : reductionPivot10666 = (fun u v => (normalNode7397).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7397).moment H = injectiveMoment H reductionPivot10666 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7397).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10666 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10666 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10666 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection767, reductionProjection1504, oldProjection908, oldProjection909] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10666 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node767⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10666 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection767 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10666 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10666 (1 : Fin 4)) = (normalNode7419).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10666 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10666 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10666 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node908⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10666 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection908 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10666 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10666 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6078 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10666 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection909 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10666 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6078 hH))).trans (oldProjectionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7397).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10666 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7397).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10666 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 144, 720] ![10, 10, 10, 2] reductionProjection10666 ![oldProjection767, reductionProjection1504, oldProjection908, oldProjection909]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10667 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -80), (20, 10), (94, 25), (229, -96), (243, 48), (244, 16), (247, 16), (293, 288), (698, 64), (700, 48), (701, 32), (704, 160), (1061, -48), (1146, 144), (1219, -48), (1251, 28), (1259, 144), (1270, 144), (1321, -96), (1326, 288)]

def reductionPivot10667 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound10667 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7289).moment H =
      Integer.Sparse.eval reductionProjection10667 (momentVector H) := by
  have heq : reductionPivot10667 = (fun u v => (normalNode7289).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7289).moment H = injectiveMoment H reductionPivot10667 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7289).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10667 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10667 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10667 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2415, reductionProjection10613, reductionProjection10665, reductionProjection10639, reductionProjection10666] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10667 (0 : Fin 5)) = (normalNode1263).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2415 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10667 (1 : Fin 5)) = (normalNode7262).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10613 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10667 (2 : Fin 5)) = canonicalInput14498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10665 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14498 hH))).trans (reductionSound10665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10667 (3 : Fin 5)) = (normalNode7396).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10639 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10667 (4 : Fin 5)) = canonicalInput14507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10666 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10667 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10666 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14507 hH))).trans (reductionSound10666 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7289).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10667 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7289).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10667 (j : Fin 5)))
      1 288 1440 5 ![1440, 2, 1440, 1440, 1440] ![1, 720, 1, 1, 1] reductionProjection10667 ![reductionProjection2415, reductionProjection10613, reductionProjection10665, reductionProjection10639, reductionProjection10666]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10668 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -25), (228, 120), (241, -40), (243, -40), (294, -360), (303, -360), (698, -120), (704, -80), (1251, -10)]

def reductionPivot10668 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]

theorem reductionSound10668 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7296).moment H =
      Integer.Sparse.eval reductionProjection10668 (momentVector H) := by
  have heq : reductionPivot10668 = (fun u v => (normalNode7296).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7296).moment H = injectiveMoment H reductionPivot10668 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7296).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10668 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10668 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10668 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection454, reductionProjection2266, oldProjection769, oldProjection894] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10668 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node454⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10668 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection454 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10668 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10668 (1 : Fin 4)) = canonicalInput14383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10668 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10668 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14383 hH))).trans (reductionSound2266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10668 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6041 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10668 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10668 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6041 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10668 (3 : Fin 4)) = canonicalInput14533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10668 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10668 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14533 hH))).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7296).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10668 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7296).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10668 (j : Fin 4)))
      2 720 720 2 ![1, 1, 720, 720] ![720, 720, 1, 1] reductionProjection10668 ![oldProjection454, reductionProjection2266, oldProjection769, oldProjection894]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10669 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -420), (20, 30), (94, 285), (130, 720), (228, -480), (241, 320), (243, 240), (247, 400), (294, 1440), (303, 1440), (434, 720), (698, 560), (704, 480), (1146, 720), (1251, 135)]

def reductionPivot10669 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]

theorem reductionSound10669 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7290).moment H =
      Integer.Sparse.eval reductionProjection10669 (momentVector H) := by
  have heq : reductionPivot10669 = (fun u v => (normalNode7290).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7290).moment H = injectiveMoment H reductionPivot10669 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7290).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10669 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10669 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10669 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1553, reductionProjection10614, reductionProjection10668, oldProjection2399, oldProjection2490] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10669 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1553⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1553 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10669 (1 : Fin 5)) = (normalNode7263).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10614 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10614 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10669 (2 : Fin 5)) = canonicalInput14499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10668 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10668 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14499 hH))).trans (reductionSound10668 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10669 (3 : Fin 5)) = canonicalInput14506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2399 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14506 hH))).trans (oldProjectionSound2399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10669 (4 : Fin 5)) = canonicalInput14508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2490 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10669 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14508 hH))).trans (oldProjectionSound2490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7290).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10669 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7290).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10669 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 720, 1440, 720] ![1, 720, 2, 1, 2] reductionProjection10669 ![oldProjection1553, reductionProjection10614, reductionProjection10668, oldProjection2399, oldProjection2490]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10670 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 4), (42, -16), (91, -16), (94, -9), (243, -32), (700, -16), (704, -16), (1225, -32), (1251, -1)]

def reductionPivot10670 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound10670 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7401).moment H =
      Integer.Sparse.eval reductionProjection10670 (momentVector H) := by
  have heq : reductionPivot10670 = (fun u v => (normalNode7401).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7401).moment H = injectiveMoment H reductionPivot10670 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7401).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10670 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10670 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 48, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10670 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection779, reductionProjection10630, oldProjection248, oldProjection919] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10670 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node779⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10670 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection779 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10670 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10670 (1 : Fin 4)) = (normalNode7433).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10670 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10670 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10670 (2 : Fin 4)) = canonicalInput14603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10670 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection248 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10670 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14603 hH))).trans (oldProjectionSound248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10670 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10670 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10670 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7401).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10670 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7401).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10670 (j : Fin 4)))
      2 288 288 2 ![144, 144, 48, 144] ![2, 2, 6, 2] reductionProjection10670 ![oldProjection779, reductionProjection10630, oldProjection248, oldProjection919]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10671 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -300), (20, 35), (38, -240), (42, 80), (91, 80), (94, 15), (243, 880), (247, 80), (570, 720), (686, -240), (698, 160), (700, 80), (704, 640), (1040, -240), (1146, 720), (1225, 320), (1226, 160), (1251, 95)]

def reductionPivot10671 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]

theorem reductionSound10671 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7291).moment H =
      Integer.Sparse.eval reductionProjection10671 (momentVector H) := by
  have heq : reductionPivot10671 = (fun u v => (normalNode7291).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7291).moment H = injectiveMoment H reductionPivot10671 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7291).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10671 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10671 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10671 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2426, reductionProjection10617, reductionProjection10645, reductionProjection10670, reductionProjection10646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10671 (0 : Fin 5)) = (normalNode1274).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2426 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2426 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10671 (1 : Fin 5)) = (normalNode7267).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10617 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10671 (2 : Fin 5)) = canonicalInput14501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10645 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14501 hH))).trans (reductionSound10645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10671 (3 : Fin 5)) = canonicalInput14509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10670 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14509 hH))).trans (reductionSound10670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10671 (4 : Fin 5)) = canonicalInput14510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10646 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10671 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14510 hH))).trans (reductionSound10646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7291).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10671 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7291).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10671 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 288, 1440] ![1, 5, 5, 5, 1] reductionProjection10671 ![reductionProjection2426, reductionProjection10617, reductionProjection10645, reductionProjection10670, reductionProjection10646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10672 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -5), (94, -5), (229, 48), (330, -144), (704, -32), (1090, -144), (1251, -4), (1321, 48)]

def reductionPivot10672 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound10672 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7311).moment H =
      Integer.Sparse.eval reductionProjection10672 (momentVector H) := by
  have heq : reductionPivot10672 = (fun u v => (normalNode7311).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7311).moment H = injectiveMoment H reductionPivot10672 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7311).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10672 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10672 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10672 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection467, reductionProjection6898, reductionProjection1504, oldProjection922] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10672 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10672 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10672 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10672 (1 : Fin 4)) = canonicalInput14476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10672 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6898 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10672 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14476 hH))).trans (reductionSound6898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10672 (2 : Fin 4)) = canonicalInput14645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10672 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10672 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14645 hH))).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10672 (3 : Fin 4)) = canonicalInput14650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10672 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection922 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10672 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14650 hH))).trans (oldProjectionSound922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7311).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10672 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7311).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10672 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 144] ![288, 288, 2, 2] reductionProjection10672 ![oldProjection467, reductionProjection6898, reductionProjection1504, oldProjection922]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10673 : Integer.Sparse (Fin 1613) := [(19, 20), (20, 2), (42, -16), (91, -16), (94, 3), (243, -80), (244, -32), (700, -48), (701, -16), (704, -16), (1225, -16), (1251, -7)]

def reductionPivot10673 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -2, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound10673 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7402).moment H =
      Integer.Sparse.eval reductionProjection10673 (momentVector H) := by
  have heq : reductionPivot10673 = (fun u v => (normalNode7402).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7402).moment H = injectiveMoment H reductionPivot10673 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7402).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10673 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10673 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10673 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection780, reductionProjection2484, oldProjection908, oldProjection919] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10673 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node780⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10673 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10673 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10673 (1 : Fin 4)) = (normalNode7434).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10673 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2484 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10673 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10673 (2 : Fin 4)) = canonicalInput14604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10673 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection908 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10673 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14604 hH))).trans (oldProjectionSound908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10673 (3 : Fin 4)) = canonicalInput14607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10673 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10673 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14607 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7402).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10673 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7402).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10673 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10673 ![oldProjection780, reductionProjection2484, oldProjection908, oldProjection919]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10674 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -360), (20, 30), (38, -240), (42, 80), (72, -240), (91, 80), (94, 45), (229, -480), (243, 560), (244, 160), (330, 720), (570, 720), (686, -240), (698, 240), (700, 480), (701, 240), (704, 800), (1061, -240), (1090, 720), (1225, 160), (1226, 80), (1251, 125), (1259, 720), (1321, -720)]

def reductionPivot10674 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]

theorem reductionSound10674 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7292).moment H =
      Integer.Sparse.eval reductionProjection10674 (momentVector H) := by
  have heq : reductionPivot10674 = (fun u v => (normalNode7292).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7292).moment H = injectiveMoment H reductionPivot10674 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7292).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10674 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10674 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 144, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10674 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2429, reductionProjection10619, reductionProjection10672, reductionProjection10673, reductionProjection10646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10674 (0 : Fin 5)) = (normalNode1277).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2429 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2429 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10674 (1 : Fin 5)) = (normalNode7268).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10619 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10674 (2 : Fin 5)) = canonicalInput14503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10672 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14503 hH))).trans (reductionSound10672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10674 (3 : Fin 5)) = canonicalInput14513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10673 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14513 hH))).trans (reductionSound10673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10674 (4 : Fin 5)) = canonicalInput14516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10646 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10674 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14516 hH))).trans (reductionSound10646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7292).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10674 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7292).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10674 (j : Fin 5)))
      1 1440 1440 1 ![72, 144, 288, 288, 1440] ![20, 10, 5, 5, 1] reductionProjection10674 ![reductionProjection2429, reductionProjection10619, reductionProjection10672, reductionProjection10673, reductionProjection10646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10675 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 180), (20, -25), (94, -115), (241, -80), (243, -320), (247, -80), (698, -240), (704, -320), (1251, -100)]

def reductionPivot10675 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 2, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound10675 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7317).moment H =
      Integer.Sparse.eval reductionProjection10675 (momentVector H) := by
  have heq : reductionPivot10675 = (fun u v => (normalNode7317).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7317).moment H = injectiveMoment H reductionPivot10675 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7317).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10675 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10675 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10675 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection985, oldProjection1341, oldProjection893, oldProjection1306] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10675 (0 : Fin 4)) = canonicalInput19200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10675 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection985 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10675 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19200 hH))).trans (oldProjectionSound985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10675 (1 : Fin 4)) = canonicalInput14463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10675 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10675 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14463 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10675 (2 : Fin 4)) = canonicalInput14420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10675 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection893 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10675 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14420 hH))).trans (oldProjectionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10675 (3 : Fin 4)) = canonicalInput14417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10675 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10675 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14417 hH))).trans (oldProjectionSound1306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7317).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10675 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7317).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10675 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 720, 144] ![20, 2, 2, 10] reductionProjection10675 ![oldProjection985, oldProjection1341, oldProjection893, oldProjection1306]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10676 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -5), (94, -15), (229, 240), (243, -80), (698, -80), (704, -80), (1251, -35), (1321, 240)]

def reductionPivot10676 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![0, -1, 2, -1], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound10676 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7417).moment H =
      Integer.Sparse.eval reductionProjection10676 (momentVector H) := by
  have heq : reductionPivot10676 = (fun u v => (normalNode7417).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7417).moment H = injectiveMoment H reductionPivot10676 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7417).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10676 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10676 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10676 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1503, oldProjection909, oldProjection897, reductionProjection1504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10676 (0 : Fin 4)) = (normalNode9712).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10676 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1503 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10676 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10676 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6078 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10676 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection909 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10676 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6078 hH))).trans (oldProjectionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10676 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node897⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10676 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection897 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10676 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10676 (3 : Fin 4)) = (normalNode7419).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10676 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10676 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7417).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10676 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7417).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10676 (j : Fin 4)))
      2 1440 1440 2 ![36, 720, 144, 144] ![40, 2, 10, 10] reductionProjection10676 ![reductionProjection1503, oldProjection909, oldProjection897, reductionProjection1504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10677 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -420), (20, 55), (42, 160), (89, -240), (94, 200), (229, -240), (241, 160), (243, 720), (247, 160), (293, 720), (698, 400), (701, 80), (704, 800), (1223, -240), (1251, 185), (1321, -240), (1326, 720)]

def reductionPivot10677 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound10677 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7294).moment H =
      Integer.Sparse.eval reductionProjection10677 (momentVector H) := by
  have heq : reductionPivot10677 = (fun u v => (normalNode7294).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7294).moment H = injectiveMoment H reductionPivot10677 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7294).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10677 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10677 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10677 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2398, reductionProjection10607, reductionProjection10675, oldProjection893, reductionProjection10676] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10677 (0 : Fin 5)) = (normalNode1300).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2398 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10677 (1 : Fin 5)) = (normalNode7272).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10607 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10607 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10677 (2 : Fin 5)) = canonicalInput14527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10675 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14527 hH))).trans (reductionSound10675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10677 (3 : Fin 5)) = canonicalInput14529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection893 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14529 hH))).trans (oldProjectionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10677 (4 : Fin 5)) = canonicalInput14530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10676 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10677 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14530 hH))).trans (reductionSound10676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7294).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10677 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7294).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10677 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 720, 1440] ![2, 1, 1, 2, 1] reductionProjection10677 ![reductionProjection2398, reductionProjection10607, reductionProjection10675, oldProjection893, reductionProjection10676]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10678 : Integer.Sparse (Fin 1613) := [(19, 8), (94, -3), (241, -48), (243, -16), (247, -16), (262, -144), (326, -144), (698, -16), (1251, 1), (1331, -144)]

def reductionPivot10678 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 1, 0, -2]]

theorem reductionSound10678 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7365).moment H =
      Integer.Sparse.eval reductionProjection10678 (momentVector H) := by
  have heq : reductionPivot10678 = (fun u v => (normalNode7365).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7365).moment H = injectiveMoment H reductionPivot10678 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7365).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10678 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10678 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10678 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1812, oldProjection1113, oldProjection464, oldProjection891] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10678 (0 : Fin 4)) = canonicalInput14217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10678 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10678 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14217 hH))).trans (reductionSound1812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10678 (1 : Fin 4)) = canonicalInput14459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10678 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1113 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10678 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14459 hH))).trans (oldProjectionSound1113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10678 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6020 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10678 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10678 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6020 hH))).trans (oldProjectionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10678 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node891⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10678 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection891 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10678 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection891 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7365).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10678 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7365).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10678 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection10678 ![reductionProjection1812, oldProjection1113, oldProjection464, oldProjection891]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10679 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 80), (20, -25), (26, -80), (88, -160), (94, 40), (105, -80), (241, -160), (243, -560), (698, -160), (703, -80), (704, -80), (1226, -240), (1251, 20)]

def reductionPivot10679 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound10679 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7421).moment H =
      Integer.Sparse.eval reductionProjection10679 (momentVector H) := by
  have heq : reductionPivot10679 = (fun u v => (normalNode7421).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7421).moment H = injectiveMoment H reductionPivot10679 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7421).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10679 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10679 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10679 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection670, oldProjection769, oldProjection898, oldProjection899] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10679 (0 : Fin 4)) = canonicalInput14238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10679 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10679 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14238 hH))).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10679 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6041 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10679 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10679 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6041 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10679 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10679 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10679 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10679 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node899⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10679 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection899 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10679 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7421).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10679 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7421).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10679 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 144] ![10, 2, 10, 10] reductionProjection10679 ![reductionProjection670, oldProjection769, oldProjection898, oldProjection899]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10680 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 4), (19, 36), (20, -4), (94, -17), (104, -16), (108, -16), (241, -32), (243, -32), (247, -32), (698, -32), (703, -16), (704, -32), (1251, -10)]

def reductionPivot10680 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, 2, -2]]

theorem reductionSound10680 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7450).moment H =
      Integer.Sparse.eval reductionProjection10680 (momentVector H) := by
  have heq : reductionPivot10680 = (fun u v => (normalNode7450).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7450).moment H = injectiveMoment H reductionPivot10680 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7450).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10680 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10680 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10680 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1778, oldProjection921, oldProjection907, oldProjection766] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10680 (0 : Fin 4)) = canonicalInput14273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10680 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10680 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14273 hH))).trans (reductionSound1778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10680 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node921⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10680 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection921 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10680 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10680 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6104 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10680 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection907 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10680 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6104 hH))).trans (oldProjectionSound907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10680 (3 : Fin 4)) = canonicalInput14635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10680 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection766 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10680 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14635 hH))).trans (oldProjectionSound766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7450).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10680 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7450).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10680 (j : Fin 4)))
      2 288 1440 10 ![72, 720, 720, 720] ![20, 2, 2, 2] reductionProjection10680 ![reductionProjection1778, oldProjection921, oldProjection907, oldProjection766]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10681 : Integer.Sparse (Fin 1613) := [(0, -13), (3, -40), (19, -560), (20, 50), (23, -480), (26, 80), (88, 160), (94, 185), (104, 240), (105, 80), (108, 240), (228, -480), (241, 1200), (243, 1040), (247, 720), (262, 720), (326, 720), (698, 800), (703, 160), (704, 480), (1226, 240), (1251, 80), (1331, 720)]

def reductionPivot10681 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, 0, -2]]

theorem reductionSound10681 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7297).moment H =
      Integer.Sparse.eval reductionProjection10681 (momentVector H) := by
  have heq : reductionPivot10681 = (fun u v => (normalNode7297).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7297).moment H = injectiveMoment H reductionPivot10681 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7297).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10681 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10681 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10681 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2287, reductionProjection2284, reductionProjection10678, reductionProjection10679, reductionProjection10680] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10681 (0 : Fin 5)) = canonicalInput2703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2287 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2703 hH))).trans (reductionSound2287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10681 (1 : Fin 5)) = canonicalInput14394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2284 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14394 hH))).trans (reductionSound2284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10681 (2 : Fin 5)) = canonicalInput14537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10678 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14537 hH))).trans (reductionSound10678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10681 (3 : Fin 5)) = canonicalInput14547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10679 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14547 hH))).trans (reductionSound10679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10681 (4 : Fin 5)) = canonicalInput14553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10680 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10681 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14553 hH))).trans (reductionSound10680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7297).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10681 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7297).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10681 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 1440, 288] ![5, 1, 5, 1, 5] reductionProjection10681 ![reductionProjection2287, reductionProjection2284, reductionProjection10678, reductionProjection10679, reductionProjection10680]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10682 : Integer.Sparse (Fin 1613) := [(1329, 1)]

theorem reductionSound10682 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1329).moment H =
      Integer.Sparse.eval reductionProjection10682 (momentVector H) := by
  have hc : coordinates (1329 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1329) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10682, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10683 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 3), (104, 16), (241, 16), (243, 16), (698, 16), (703, 16), (704, 32), (1251, 3)]

def reductionPivot10683 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![0, 2, 1, -3], ![1, -1, 2, -2]]

theorem reductionSound10683 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7457).moment H =
      Integer.Sparse.eval reductionProjection10683 (momentVector H) := by
  have heq : reductionPivot10683 = (fun u v => (normalNode7457).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7457).moment H = injectiveMoment H reductionPivot10683 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7457).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10683 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10683 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10683 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection72, oldProjection146, oldProjection246] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10683 (0 : Fin 3)) = canonicalInput14291.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10683 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection72 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10683 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection72 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14291 hH))).trans (oldProjectionSound72 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10683 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6113 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10683 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection146 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10683 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6113 hH))).trans (oldProjectionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10683 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6114 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10683 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10683 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6114 hH))).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7457).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10683 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7457).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10683 (j : Fin 3)))
      3 144 144 3 ![3, 3, 48] ![48, 48, 3] reductionProjection10683 ![oldProjection72, oldProjection146, oldProjection246]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10684 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 160), (20, -5), (94, -65), (104, -240), (108, -160), (241, -240), (243, -80), (247, -160), (698, -80), (703, -80), (704, -160), (1251, -45), (1329, -720)]

def reductionPivot10684 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -2, 4], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 1, 1, -3]]

theorem reductionSound10684 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7353).moment H =
      Integer.Sparse.eval reductionProjection10684 (momentVector H) := by
  have heq : reductionPivot10684 = (fun u v => (normalNode7353).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7353).moment H = injectiveMoment H reductionPivot10684 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7353).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10684 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10684 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10684 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6397, reductionProjection10682, oldProjection904, reductionProjection10683] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10684 (0 : Fin 4)) = canonicalInput6227.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10684 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6397 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10684 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6227 hH))).trans (reductionSound6397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10684 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1329).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10684 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10684 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10684 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node904⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10684 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection904 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10684 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10684 (3 : Fin 4)) = canonicalInput14564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10684 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10683 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10684 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10683 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14564 hH))).trans (reductionSound10683 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7353).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10684 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7353).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10684 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 720, 144] ![10, 1440, 2, 10] reductionProjection10684 ![reductionProjection6397, reductionProjection10682, oldProjection904, reductionProjection10683]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10685 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 40), (19, 100), (20, -25), (94, -35), (108, -80), (1251, -20), (1319, 240)]

def reductionPivot10685 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![0, 1, 1, -2], ![0, 1, 2, -3], ![1, -1, 0, 0]]

theorem reductionSound10685 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7454).moment H =
      Integer.Sparse.eval reductionProjection10685 (momentVector H) := by
  have heq : reductionPivot10685 = (fun u v => (normalNode7454).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7454).moment H = injectiveMoment H reductionPivot10685 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7454).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10685 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10685 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 360, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10685 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1850, oldProjection1177, oldProjection787, oldProjection923] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10685 (0 : Fin 4)) = (normalNode7228).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10685 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1850 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10685 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10685 (1 : Fin 4)) = canonicalInput14637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10685 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10685 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14637 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10685 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6108 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10685 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection787 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10685 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6108 hH))).trans (oldProjectionSound787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10685 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node923⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10685 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10685 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7454).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10685 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7454).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10685 (j : Fin 4)))
      2 1440 1440 2 ![72, 144, 360, 144] ![20, 10, 4, 10] reductionProjection10685 ![reductionProjection1850, oldProjection1177, oldProjection787, oldProjection923]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10686 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -50), (19, -400), (20, 40), (94, 190), (104, 240), (108, 800), (241, 200), (243, 40), (247, 600), (325, 360), (698, 40), (703, 40), (704, 120), (1251, 165), (1319, -120), (1329, 360)]

def reductionPivot10686 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound10686 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7298).moment H =
      Integer.Sparse.eval reductionProjection10686 (momentVector H) := by
  have heq : reductionPivot10686 = (fun u v => (normalNode7298).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7298).moment H = injectiveMoment H reductionPivot10686 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7298).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10686 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10686 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10686 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2299, reductionProjection2295, reductionProjection10684, reductionProjection10649, reductionProjection10685] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10686 (0 : Fin 5)) = canonicalInput2706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2299 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2706 hH))).trans (reductionSound2299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10686 (1 : Fin 5)) = canonicalInput14395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2295 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14395 hH))).trans (reductionSound2295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10686 (2 : Fin 5)) = canonicalInput14538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10684 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14538 hH))).trans (reductionSound10684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10686 (3 : Fin 5)) = canonicalInput14555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10649 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14555 hH))).trans (reductionSound10649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10686 (4 : Fin 5)) = canonicalInput14556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10685 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10686 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14556 hH))).trans (reductionSound10685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7298).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10686 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7298).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10686 (j : Fin 5)))
      1 720 1440 2 ![1440, 288, 1440, 1440, 1440] ![1, 5, 1, 1, 1] reductionProjection10686 ![reductionProjection2299, reductionProjection2295, reductionProjection10684, reductionProjection10649, reductionProjection10685]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10687 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 16), (20, -5), (94, 2), (105, -48), (106, -16), (108, -16), (241, -48), (243, -80), (247, -16), (698, -16), (1225, -16), (1226, -16), (1251, -1), (1330, -144)]

def reductionPivot10687 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -2, 4], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 1, 0, -2]]

theorem reductionSound10687 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7354).moment H =
      Integer.Sparse.eval reductionProjection10687 (momentVector H) := by
  have heq : reductionPivot10687 = (fun u v => (normalNode7354).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7354).moment H = injectiveMoment H reductionPivot10687 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7354).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10687 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10687 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10687 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6398, reductionProjection6467, oldProjection905, reductionProjection7415] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10687 (0 : Fin 4)) = canonicalInput6228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10687 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6398 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10687 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6228 hH))).trans (reductionSound6398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10687 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1330).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10687 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10687 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10687 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node905⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10687 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection905 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10687 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10687 (3 : Fin 4)) = canonicalInput14565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10687 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7415 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10687 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14565 hH))).trans (reductionSound7415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7354).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10687 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7354).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10687 (j : Fin 4)))
      2 288 288 2 ![72, 1, 144, 9] ![4, 288, 2, 32] reductionProjection10687 ![reductionProjection6398, reductionProjection6467, oldProjection905, reductionProjection7415]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

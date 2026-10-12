import NoFourMUBs.Step2.SOS.Canonical003
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical023
import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical127
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical168
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions007
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical118
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical148
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection256 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 2), (37, -48), (94, 1), (104, 16), (105, 16), (108, 16), (241, 16), (243, 16), (1251, 3)]

def reductionPivot256 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, 2, -2], ![1, -1, 0], ![2, 1, -3]]

theorem reductionSound256 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode118).moment H =
      Integer.Sparse.eval reductionProjection256 (momentVector H) := by
  have heq : reductionPivot256 = (fun u v => (normalNode118).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode118).moment H = injectiveMoment H reductionPivot256 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode118).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot256 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot256 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 24, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot256 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection73, oldProjection243, oldProjection84, oldProjection201] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot256 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node73⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot256 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection73 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot256 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection73 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound73 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot256 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw295 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot256 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection243 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot256 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical295 hH))).trans (oldProjectionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot256 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node84⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot256 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection84 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot256 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot256 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw307 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot256 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection201 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot256 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical307 hH))).trans (oldProjectionSound201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode118).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot256 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode118).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot256 (j : Fin 4)))
      2 96 96 2 ![3, 24, 1, 48] ![32, 4, 96, 2] reductionProjection256 ![oldProjection73, oldProjection243, oldProjection84, oldProjection201]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection257 : Integer.Sparse (Fin 1613) := [(44, -1), (46, -1), (701, -1)]

def reductionPivot257 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, 0, -1], ![-3, -1, 4], ![0, 4, -4], ![2, -3, 1]]

theorem reductionSound257 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode142).moment H =
      Integer.Sparse.eval reductionProjection257 (momentVector H) := by
  have heq : reductionPivot257 = (fun u v => (normalNode142).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode142).moment H = injectiveMoment H reductionPivot257 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode142).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot257 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot257 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot257 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection38, reductionProjection250, reductionProjection3] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot257 (0 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node38⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot257 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection38 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot257 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection38 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound38 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot257 (1 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code46).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot257 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection250 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot257 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot257 (2 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code44).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot257 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection3 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot257 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection3 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound3 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode142).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot257 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode142).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot257 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection257 ![oldProjection38, reductionProjection250, reductionProjection3]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection258 : Integer.Sparse (Fin 1613) := [(43, 1)]

theorem reductionSound258 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code43).moment H =
      Integer.Sparse.eval reductionProjection258 (momentVector H) := by
  have hc : coordinates (43 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code43) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection258, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection259 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (43, -48), (44, 16), (46, 16), (94, 1), (244, 16), (246, 16), (701, 32), (703, 16), (704, 16)]

def reductionPivot259 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-3, -1, 4], ![0, 4, -4], ![1, -2, 1], ![1, 0, -1]]

theorem reductionSound259 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode139).moment H =
      Integer.Sparse.eval reductionProjection259 (momentVector H) := by
  have heq : reductionPivot259 = (fun u v => (normalNode139).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode139).moment H = injectiveMoment H reductionPivot259 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode139).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot259 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot259 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 3, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot259 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection156, oldProjection80, reductionProjection257, reductionProjection258] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot259 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node156⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot259 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection156 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot259 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot259 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw334 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot259 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot259 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical334 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot259 (2 : Fin 4)) = canonicalInput398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot259 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection257 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot259 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound398 hH))).trans (reductionSound257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot259 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code43).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot259 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot259 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode139).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot259 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode139).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot259 (j : Fin 4)))
      2 96 96 2 ![48, 3, 3, 1] ![2, 32, 32, 96] reductionProjection259 ![oldProjection156, oldProjection80, reductionProjection257, reductionProjection258]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection260 : Integer.Sparse (Fin 1613) := [(3, 12), (4, -1), (19, 32), (20, -3), (27, -32), (42, -32), (43, 96), (44, -64), (46, -32), (94, -9), (106, -32), (243, -32), (244, -96), (245, -16), (246, -32), (700, -16), (701, -128), (703, -64), (704, -64), (1251, -3)]

def reductionPivot260 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![0, 4, -4], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound260 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode119).moment H =
      Integer.Sparse.eval reductionProjection260 (momentVector H) := by
  have heq : reductionPivot260 = (fun u v => (normalNode119).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode119).moment H = injectiveMoment H reductionPivot260 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode119).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot260 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot260 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 96, 96, 24] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot260 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection136, oldProjection324, reductionProjection259, reductionProjection259, reductionProjection5] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot260 (0 : Fin 5)) = (normalNode68).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection136 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot260 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node324⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection324 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot260 (2 : Fin 5)) = (normalNode139).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection259 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot260 (3 : Fin 5)) = canonicalInput397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection259 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound397 hH))).trans (reductionSound259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot260 (4 : Fin 5)) = (normalNode140).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot260 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound5 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode119).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot260 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode119).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot260 (j : Fin 5)))
      1 96 96 1 ![96, 96, 96, 96, 24] ![1, 1, 1, 1, 4] reductionProjection260 ![reductionProjection136, oldProjection324, reductionProjection259, reductionProjection259, reductionProjection5]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection261 : Integer.Sparse (Fin 1613) := [(3, -12), (4, 1), (19, -8), (20, 3), (46, 32), (94, 2), (245, 16), (246, 32), (701, 16), (703, 32)]

def reductionPivot261 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![1, -1, 0], ![1, -1, 0], ![1, 4, -5]]

theorem reductionSound261 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode120).moment H =
      Integer.Sparse.eval reductionProjection261 (momentVector H) := by
  have heq : reductionPivot261 = (fun u v => (normalNode120).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode120).moment H = injectiveMoment H reductionPivot261 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode120).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot261 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot261 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 3, 3, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot261 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection130, reductionProjection251, reductionProjection251, oldProjection90] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot261 (0 : Fin 4)) = (normalNode71).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot261 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection130 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot261 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot261 (1 : Fin 4)) = (normalNode143).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot261 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection251 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot261 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot261 (2 : Fin 4)) = canonicalInput400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot261 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection251 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot261 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound400 hH))).trans (reductionSound251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot261 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node90⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot261 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection90 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot261 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode120).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot261 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode120).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot261 (j : Fin 4)))
      2 96 96 2 ![48, 3, 3, 24] ![2, 32, 32, 4] reductionProjection261 ![reductionProjection130, reductionProjection251, reductionProjection251, oldProjection90]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection262 : Integer.Sparse (Fin 1613) := [(46, -1), (245, -1), (701, -1)]

def reductionPivot262 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, -1, 1], ![-3, -1, 4], ![1, 4, -5], ![2, -2, 0]]

theorem reductionSound262 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode122).moment H =
      Integer.Sparse.eval reductionProjection262 (momentVector H) := by
  have heq : reductionPivot262 = (fun u v => (normalNode122).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode122).moment H = injectiveMoment H reductionPivot262 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode122).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot262 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot262 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot262 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection121, oldProjection38, reductionProjection250] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot262 (0 : Fin 3)) = canonicalInput230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot262 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection121 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot262 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound230 hH))).trans (reductionSound121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot262 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw335 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot262 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection38 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot262 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection38 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical335 hH))).trans (oldProjectionSound38 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot262 (2 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code46).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot262 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection250 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot262 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode122).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot262 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode122).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot262 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection262 ![reductionProjection121, oldProjection38, reductionProjection250]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection263 : Integer.Sparse (Fin 1613) := [(20, -1), (36, 144), (42, -128), (44, -48), (60, -128), (94, 9), (243, -96), (700, -288), (1251, -10)]

def reductionPivot263 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![3, -3, 0]]

theorem reductionSound263 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode123).moment H =
      Integer.Sparse.eval reductionProjection263 (momentVector H) := by
  have heq : reductionPivot263 = (fun u v => (normalNode123).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode123).moment H = injectiveMoment H reductionPivot263 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode123).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot263 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot263 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 6, 6, 6, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot263 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection341, reductionProjection19, reductionProjection19, reductionProjection19, oldProjection312] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot263 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node341⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection341 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot263 (1 : Fin 5)) = canonicalInput392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection19 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection19 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound392 hH))).trans (reductionSound19 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot263 (2 : Fin 5)) = canonicalInput389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection19 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection19 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound389 hH))).trans (reductionSound19 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot263 (3 : Fin 5)) = (normalNode126).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection19 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection19 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound19 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot263 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node312⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection312 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot263 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode123).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot263 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode123).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot263 (j : Fin 5)))
      1 96 96 1 ![48, 6, 6, 6, 96] ![2, 16, 16, 16, 1] reductionProjection263 ![oldProjection341, reductionProjection19, reductionProjection19, reductionProjection19, oldProjection312]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection264 : Integer.Sparse (Fin 1613) := [(41, 1)]

theorem reductionSound264 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code41).moment H =
      Integer.Sparse.eval reductionProjection264 (momentVector H) := by
  have hc : coordinates (41 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code41) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection264, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection265 : Integer.Sparse (Fin 1613) := [(39, 1)]

theorem reductionSound265 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code39).moment H =
      Integer.Sparse.eval reductionProjection265 (momentVector H) := by
  have hc : coordinates (39 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code39) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection265, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection266 : Integer.Sparse (Fin 1613) := [(38, -1), (39, -1), (41, -1), (56, -1)]

def reductionPivot266 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 2, -2], ![1, 1, -2], ![2, -3, 1]]

theorem reductionSound266 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode129).moment H =
      Integer.Sparse.eval reductionProjection266 (momentVector H) := by
  have heq : reductionPivot266 = (fun u v => (normalNode129).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode129).moment H = injectiveMoment H reductionPivot266 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode129).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot266 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot266 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot266 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection97, reductionProjection264, reductionProjection265, oldProjection85] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot266 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot266 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection97 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot266 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection97 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound97 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot266 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code41).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot266 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot266 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot266 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code39).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot266 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection265 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot266 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot266 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot266 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot266 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode129).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot266 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode129).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot266 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection266 ![oldProjection97, reductionProjection264, reductionProjection265, oldProjection85]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection267 : Integer.Sparse (Fin 1613) := [(42, -1), (46, -1), (701, -1)]

def reductionPivot267 : Matrix (Fin 4) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![1, 3, -4], ![2, -3, 1]]

theorem reductionSound267 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode135).moment H =
      Integer.Sparse.eval reductionProjection267 (momentVector H) := by
  have heq : reductionPivot267 = (fun u v => (normalNode135).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode135).moment H = injectiveMoment H reductionPivot267 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode135).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot267 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot267 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot267 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection18, reductionProjection250, oldProjection38] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot267 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw583 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot267 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection18 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot267 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection18 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical583 hH))).trans (oldProjectionSound18 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot267 (1 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code46).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot267 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection250 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot267 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot267 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw335 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot267 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection38 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot267 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection38 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical335 hH))).trans (oldProjectionSound38 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode135).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot267 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode135).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot267 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection267 ![oldProjection18, reductionProjection250, oldProjection38]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection268 : Integer.Sparse (Fin 1613) := [(39, -3), (42, 2), (46, 1), (90, 1), (700, 2), (701, 2), (704, 1)]

def reductionPivot268 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 1, -1], ![1, 2, -3], ![2, -3, 1]]

theorem reductionSound268 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode128).moment H =
      Integer.Sparse.eval reductionProjection268 (momentVector H) := by
  have heq : reductionPivot268 = (fun u v => (normalNode128).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode128).moment H = injectiveMoment H reductionPivot268 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode128).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot268 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot268 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot268 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection95, reductionProjection265, reductionProjection267, oldProjection83] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot268 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot268 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot268 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot268 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code39).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot268 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection265 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot268 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot268 (2 : Fin 4)) = (normalNode135).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot268 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection267 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot268 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot268 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot268 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection83 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot268 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection83 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound83 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode128).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot268 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode128).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot268 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection268 ![oldProjection95, reductionProjection265, reductionProjection267, oldProjection83]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection269 : Integer.Sparse (Fin 1613) := [(19, 4), (38, 144), (39, 144), (41, 96), (42, -48), (46, -16), (56, 144), (90, -48), (94, -7), (698, -48), (700, -96), (701, -48), (704, -48), (1226, -16), (1251, -7)]

def reductionPivot269 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 1, -1], ![0, 1, -1], ![1, 1, -2], ![2, -3, 1]]

theorem reductionSound269 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode124).moment H =
      Integer.Sparse.eval reductionProjection269 (momentVector H) := by
  have heq : reductionPivot269 = (fun u v => (normalNode124).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode124).moment H = injectiveMoment H reductionPivot269 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode124).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot269 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot269 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 2, 2, 6, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot269 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection343, reductionProjection266, reductionProjection266, reductionProjection268, oldProjection314] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot269 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node343⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection343 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot269 (1 : Fin 5)) = canonicalInput393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection266 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound393 hH))).trans (reductionSound266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot269 (2 : Fin 5)) = (normalNode129).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection266 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot269 (3 : Fin 5)) = (normalNode128).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection268 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot269 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node314⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection314 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot269 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode124).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot269 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode124).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot269 (j : Fin 5)))
      1 96 96 1 ![48, 2, 2, 6, 96] ![2, 48, 48, 16, 1] reductionProjection269 ![oldProjection343, reductionProjection266, reductionProjection266, reductionProjection268, oldProjection314]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection270 : Integer.Sparse (Fin 1613) := [(36, -1), (38, -2), (238, -1)]

def reductionPivot270 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-3, -1, 4], ![0, 2, -2], ![0, 2, -2], ![2, -2, 0]]

theorem reductionSound270 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode136).moment H =
      Integer.Sparse.eval reductionProjection270 (momentVector H) := by
  have heq : reductionPivot270 = (fun u v => (normalNode136).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode136).moment H = injectiveMoment H reductionPivot270 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode136).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot270 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot270 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot270 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection151, oldProjection85, oldProjection85, reductionProjection17] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot270 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node151⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot270 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection151 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot270 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot270 (1 : Fin 4)) = canonicalInput401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot270 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot270 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound401 hH))).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot270 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot270 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot270 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot270 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code36).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot270 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection17 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot270 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection17 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound17 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode136).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot270 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode136).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot270 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection270 ![oldProjection151, oldProjection85, oldProjection85, reductionProjection17]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection271 : Integer.Sparse (Fin 1613) := [(42, 2), (44, 1), (60, 1), (243, 1), (244, 1), (700, 3), (701, 2), (704, 1)]

def reductionPivot271 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 3, -3], ![1, -1, 0], ![2, -2, 0]]

theorem reductionSound271 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode132).moment H =
      Integer.Sparse.eval reductionProjection271 (momentVector H) := by
  have heq : reductionPivot271 = (fun u v => (normalNode132).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode132).moment H = injectiveMoment H reductionPivot271 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode132).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot271 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot271 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot271 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection93, reductionProjection4, oldProjection88, oldProjection87] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot271 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw563 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot271 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection93 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot271 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical563 hH))).trans (oldProjectionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot271 (1 : Fin 4)) = (normalNode141).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot271 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot271 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound4 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot271 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot271 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection88 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot271 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection88 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound88 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot271 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot271 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection87 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot271 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection87 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound87 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode132).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot271 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode132).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot271 (j : Fin 4)))
      2 6 6 2 ![3, 3, 3, 3] ![2, 2, 2, 2] reductionProjection271 ![oldProjection93, reductionProjection4, oldProjection88, oldProjection87]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection272 : Integer.Sparse (Fin 1613) := [(19, 4), (36, 48), (38, 144), (42, -64), (44, -16), (60, -32), (94, -5), (238, 48), (241, -16), (243, -80), (244, -16), (698, -80), (700, -208), (701, -48), (704, -64), (1059, -48), (1251, -5)]

def reductionPivot272 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 1, -1], ![0, 2, -2], ![1, -1, 0], ![2, -2, 0]]

theorem reductionSound272 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode125).moment H =
      Integer.Sparse.eval reductionProjection272 (momentVector H) := by
  have heq : reductionPivot272 = (fun u v => (normalNode125).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode125).moment H = injectiveMoment H reductionPivot272 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode125).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot272 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot272 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 2, 6, 6, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot272 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection346, reductionProjection270, reductionProjection271, oldProjection317, oldProjection316] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot272 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node346⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection346 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot272 (1 : Fin 5)) = (normalNode136).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection270 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot272 (2 : Fin 5)) = (normalNode132).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection271 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot272 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node317⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection317 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot272 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node316⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection316 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot272 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode125).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot272 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode125).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot272 (j : Fin 5)))
      1 96 96 1 ![48, 2, 6, 6, 96] ![2, 48, 16, 16, 1] reductionProjection272 ![oldProjection346, reductionProjection270, reductionProjection271, oldProjection317, oldProjection316]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection273 : Integer.Sparse (Fin 1613) := [(37, -1), (39, -1), (45, -1), (240, -1)]

def reductionPivot273 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-3, -1, 4], ![0, 2, -2], ![1, -2, 1], ![1, 2, -3]]

theorem reductionSound273 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode137).moment H =
      Integer.Sparse.eval reductionProjection273 (momentVector H) := by
  have heq : reductionPivot273 = (fun u v => (normalNode137).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode137).moment H = injectiveMoment H reductionPivot273 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode137).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot273 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot273 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot273 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection152, oldProjection89, reductionProjection265, oldProjection84] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot273 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot273 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection152 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot273 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot273 (1 : Fin 4)) = canonicalInput402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot273 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot273 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound402 hH))).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot273 (2 : Fin 4)) = canonicalInput394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot273 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection265 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot273 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound394 hH))).trans (reductionSound265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot273 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node84⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot273 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection84 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot273 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode137).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot273 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode137).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot273 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection273 ![oldProjection152, oldProjection89, reductionProjection265, oldProjection84]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection274 : Integer.Sparse (Fin 1613) := [(19, 28), (20, -7), (37, 48), (39, 48), (42, -32), (45, 96), (46, -16), (90, -16), (94, -11), (240, 48), (243, -64), (246, -16), (698, -48), (700, -64), (701, -64), (703, -48), (704, -112), (1226, -16), (1251, -12)]

def reductionPivot274 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 1, -1], ![1, -2, 1], ![1, -1, 0], ![1, 2, -3]]

theorem reductionSound274 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode127).moment H =
      Integer.Sparse.eval reductionProjection274 (momentVector H) := by
  have heq : reductionPivot274 = (fun u v => (normalNode127).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode127).moment H = injectiveMoment H reductionPivot274 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode127).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot274 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot274 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 2, 96, 96, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot274 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection349, reductionProjection273, oldProjection320, oldProjection318, reductionProjection252] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot274 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node349⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection349 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot274 (1 : Fin 5)) = (normalNode137).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection273 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot274 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node320⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection320 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot274 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node318⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection318 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot274 (4 : Fin 5)) = (normalNode134).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection252 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot274 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode127).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot274 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode127).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot274 (j : Fin 5)))
      1 96 96 1 ![96, 2, 96, 96, 48] ![1, 48, 1, 1, 2] reductionProjection274 ![oldProjection349, reductionProjection273, oldProjection320, oldProjection318, reductionProjection252]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection275 : Integer.Sparse (Fin 1613) := [(40, -1), (41, -1), (45, -1), (242, -1)]

def reductionPivot275 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-3, -1, 4], ![0, 3, -3], ![1, -2, 1], ![1, 1, -2]]

theorem reductionSound275 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode138).moment H =
      Integer.Sparse.eval reductionProjection275 (momentVector H) := by
  have heq : reductionPivot275 = (fun u v => (normalNode138).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode138).moment H = injectiveMoment H reductionPivot275 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode138).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot275 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot275 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot275 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection154, oldProjection89, reductionProjection264, oldProjection86] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot275 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot275 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection154 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot275 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot275 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw331 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot275 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot275 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical331 hH))).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot275 (2 : Fin 4)) = canonicalInput396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot275 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot275 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound396 hH))).trans (reductionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot275 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node86⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot275 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection86 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot275 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection86 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound86 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode138).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot275 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode138).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot275 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection275 ![oldProjection154, oldProjection89, reductionProjection264, oldProjection86]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection276 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (40, 96), (41, 48), (42, -64), (43, 48), (44, -16), (45, 48), (46, -16), (58, 48), (60, -16), (94, -6), (242, 48), (243, -48), (244, -16), (246, -16), (698, -16), (700, -96), (701, -80), (703, -32), (704, -96), (1251, -7)]

def reductionPivot276 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 3, -3], ![1, -2, 1], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound276 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode130).moment H =
      Integer.Sparse.eval reductionProjection276 (momentVector H) := by
  have heq : reductionPivot276 = (fun u v => (normalNode130).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode130).moment H = injectiveMoment H reductionPivot276 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode130).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot276 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot276 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 96, 96, 48, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot276 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection339, reductionProjection259, oldProjection324, oldProjection323, reductionProjection275] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot276 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw559 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection339 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical559 hH))).trans (oldProjectionSound339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot276 (1 : Fin 5)) = (normalNode139).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection259 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot276 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node324⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection324 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot276 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node323⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection323 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot276 (4 : Fin 5)) = (normalNode138).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection275 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot276 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode130).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot276 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode130).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot276 (j : Fin 5)))
      1 96 96 1 ![48, 96, 96, 48, 2] ![2, 1, 1, 2, 48] reductionProjection276 ![oldProjection339, reductionProjection259, oldProjection324, oldProjection323, reductionProjection275]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection277 : Integer.Sparse (Fin 1613) := [(19, 36), (20, -6), (42, -96), (44, -32), (60, -32), (94, -5), (243, -96), (244, -48), (700, -144), (701, -96), (704, -96), (1251, -15)]

def reductionPivot277 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-3, -1, 4], ![0, 3, -3], ![1, -1, 0], ![1, -1, 0], ![1, -1, 0]]

theorem reductionSound277 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode131).moment H =
      Integer.Sparse.eval reductionProjection277 (momentVector H) := by
  have heq : reductionPivot277 = (fun u v => (normalNode131).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode131).moment H = injectiveMoment H reductionPivot277 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode131).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot277 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot277 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 24, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot277 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection341, reductionProjection5, oldProjection324, oldProjection324, oldProjection324] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot277 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw562 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection341 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical562 hH))).trans (oldProjectionSound341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot277 (1 : Fin 5)) = (normalNode140).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound5 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot277 (2 : Fin 5)) = canonicalInput395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection324 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound395 hH))).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot277 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw316 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection324 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical316 hH))).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot277 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node324⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection324 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot277 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode131).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot277 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode131).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot277 (j : Fin 5)))
      1 96 96 1 ![48, 24, 96, 96, 96] ![2, 4, 1, 1, 1] reductionProjection277 ![oldProjection341, reductionProjection5, oldProjection324, oldProjection324, oldProjection324]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection278 : Integer.Sparse (Fin 1613) := [(400, 1)]

theorem reductionSound278 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code400).moment H =
      Integer.Sparse.eval reductionProjection278 (momentVector H) := by
  have hc : coordinates (400 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code400) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection278, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection279 : Integer.Sparse (Fin 1613) := [(47, 1)]

theorem reductionSound279 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code47).moment H =
      Integer.Sparse.eval reductionProjection279 (momentVector H) := by
  have hc : coordinates (47 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code47) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection279, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection280 : Integer.Sparse (Fin 1613) := [(47, -1), (400, -1), (1203, -1), (1245, -1)]

def reductionPivot280 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-3, 0, 1, 2], ![0, -3, 2, 1], ![1, 1, -2, 0], ![2, 1, 0, -3]]

theorem reductionSound280 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode144).moment H =
      Integer.Sparse.eval reductionProjection280 (momentVector H) := by
  have heq : reductionPivot280 = (fun u v => (normalNode144).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode144).moment H = injectiveMoment H reductionPivot280 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode144).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot280 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot280 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot280 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection278, reductionProjection223, reductionProjection279, reductionProjection224] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot280 (0 : Fin 4)) = canonicalInput640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot280 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection278 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot280 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound640 hH))).trans (reductionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot280 (1 : Fin 4)) = canonicalInput504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot280 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot280 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound504 hH))).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot280 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code47).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot280 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection279 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot280 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot280 (3 : Fin 4)) = canonicalInput489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot280 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection224 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot280 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound489 hH))).trans (reductionSound224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode144).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot280 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode144).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot280 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection280 ![reductionProjection278, reductionProjection223, reductionProjection279, reductionProjection224]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection281 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 11), (241, -16), (243, -32), (698, -48), (1047, 48), (1203, -144), (1226, -16)]

def reductionPivot281 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound281 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5402).moment H =
      Integer.Sparse.eval reductionProjection281 (momentVector H) := by
  have heq : reductionPivot281 = (fun u v => (normalNode5402).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5402).moment H = injectiveMoment H reductionPivot281 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5402).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot281 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot281 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot281 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1214, oldProjection1296, reductionProjection223, oldProjection1365] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot281 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3792 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot281 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot281 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3792 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot281 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4747 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot281 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1296 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot281 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4747 hH))).trans (oldProjectionSound1296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot281 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1203).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot281 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot281 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot281 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4833 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot281 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot281 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4833 hH))).trans (oldProjectionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5402).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot281 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5402).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot281 (j : Fin 4)))
      2 288 288 2 ![72, 144, 1, 144] ![4, 2, 288, 2] reductionProjection281 ![oldProjection1214, oldProjection1296, reductionProjection223, oldProjection1365]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection282 : Integer.Sparse (Fin 1613) := [(1205, 1)]

theorem reductionSound282 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1205).moment H =
      Integer.Sparse.eval reductionProjection282 (momentVector H) := by
  have hc : coordinates (1205 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1205) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection282, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection283 : Integer.Sparse (Fin 1613) := [(94, 1), (243, -8), (400, -72), (698, -8), (1203, -72), (1205, -72), (1226, 8), (1251, 1)]

def reductionPivot283 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -3, 1, 2], ![0, 2, 1, -3], ![1, 1, -2, 0]]

theorem reductionSound283 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4166).moment H =
      Integer.Sparse.eval reductionProjection283 (momentVector H) := by
  have heq : reductionPivot283 = (fun u v => (normalNode4166).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4166).moment H = injectiveMoment H reductionPivot283 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4166).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot283 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot283 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot283 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1214, reductionProjection282, reductionProjection223, reductionProjection278] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot283 (0 : Fin 4)) = canonicalInput20783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot283 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot283 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20783 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot283 (1 : Fin 4)) = canonicalInput8953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot283 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection282 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot283 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8953 hH))).trans (reductionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot283 (2 : Fin 4)) = canonicalInput8170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot283 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot283 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8170 hH))).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot283 (3 : Fin 4)) = canonicalInput8158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot283 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection278 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot283 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8158 hH))).trans (reductionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4166).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot283 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4166).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot283 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection283 ![oldProjection1214, reductionProjection282, reductionProjection223, reductionProjection278]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection284 : Integer.Sparse (Fin 1613) := [(20, 1), (47, 144), (94, -12), (241, 32), (243, 64), (400, 288), (698, 96), (1047, -96), (1137, 144), (1203, 288), (1205, 144), (1226, 16), (1245, 288), (1251, -5)]

def reductionPivot284 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-3, 0, 1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 1, -2, 0], ![2, 1, 0, -3]]

theorem reductionSound284 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode145).moment H =
      Integer.Sparse.eval reductionProjection284 (momentVector H) := by
  have heq : reductionPivot284 = (fun u v => (normalNode145).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode145).moment H = injectiveMoment H reductionPivot284 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode145).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot284 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot284 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 1, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot284 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection226, reductionProjection280, reductionProjection223, reductionProjection281, reductionProjection283] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot284 (0 : Fin 5)) = (normalNode100).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection226 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot284 (1 : Fin 5)) = (normalNode144).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection280 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot284 (2 : Fin 5)) = canonicalInput491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound491 hH))).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot284 (3 : Fin 5)) = canonicalInput492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection281 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound492 hH))).trans (reductionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot284 (4 : Fin 5)) = canonicalInput493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection283 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot284 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound493 hH))).trans (reductionSound283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode145).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot284 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode145).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot284 (j : Fin 5)))
      1 288 288 1 ![288, 2, 1, 288, 144] ![1, 144, 288, 1, 2] reductionProjection284 ![reductionProjection226, reductionProjection280, reductionProjection223, reductionProjection281, reductionProjection283]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection285 : Integer.Sparse (Fin 1613) := [(49, 1)]

theorem reductionSound285 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code49).moment H =
      Integer.Sparse.eval reductionProjection285 (momentVector H) := by
  have hc : coordinates (49 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code49) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection285, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection286 : Integer.Sparse (Fin 1613) := [(400, -1), (426, -1), (763, -1), (913, -1)]

def reductionPivot286 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![2, 0, -1, -1]]

theorem reductionSound286 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode1743).moment H =
      Integer.Sparse.eval reductionProjection286 (momentVector H) := by
  have heq : reductionPivot286 = (fun u v => (normalNode1743).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1743).moment H = injectiveMoment H reductionPivot286 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1743).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot286 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot286 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot286 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection202, reductionProjection278, oldProjection473, reductionProjection197] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot286 (0 : Fin 4)) = canonicalInput1485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot286 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot286 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1485 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot286 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code400).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot286 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection278 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot286 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot286 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot286 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot286 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot286 (3 : Fin 4)) = canonicalInput3851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot286 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection197 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot286 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3851 hH))).trans (reductionSound197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode1743).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot286 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1743).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot286 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection286 ![reductionProjection202, reductionProjection278, oldProjection473, reductionProjection197]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection287 : Integer.Sparse (Fin 1613) := [(426, -1), (956, -1), (1139, -1), (1203, -1)]

def reductionPivot287 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 0, 1], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 0, 2, -3]]

theorem reductionSound287 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5504).moment H =
      Integer.Sparse.eval reductionProjection287 (momentVector H) := by
  have heq : reductionPivot287 = (fun u v => (normalNode5504).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5504).moment H = injectiveMoment H reductionPivot287 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5504).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot287 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot287 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot287 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection227, reductionProjection223, oldProjection473, oldProjection613] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot287 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1139).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot287 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection227 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot287 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot287 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1203).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot287 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection223 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot287 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot287 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4835 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot287 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot287 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4835 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot287 (3 : Fin 4)) = canonicalInput10781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot287 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection613 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot287 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10781 hH))).trans (oldProjectionSound613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5504).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot287 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5504).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot287 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection287 ![reductionProjection227, reductionProjection223, oldProjection473, oldProjection613]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

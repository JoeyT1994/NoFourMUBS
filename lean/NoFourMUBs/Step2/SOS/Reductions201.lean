import NoFourMUBs.Step2.SOS.Canonical041
import NoFourMUBs.Step2.SOS.Canonical043
import NoFourMUBs.Step2.SOS.Canonical089
import NoFourMUBs.Step2.SOS.Canonical095
import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical271
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical286
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical495
import NoFourMUBs.Step2.SOS.Canonical514
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections008
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
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions074
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions076
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions198
import NoFourMUBs.Step2.SOS.Reductions199
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical176
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical193
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical195
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical250
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical93
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical94
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6432 : Integer.Sparse (Fin 1613) := [(229, 3), (238, 3), (243, -1), (244, -1), (289, -9), (700, -1), (722, -9), (730, -9)]

def reductionPivot6432 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 2, 1, -3], ![2, 0, -2, 0]]

theorem reductionSound6432 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode3193).moment H =
      Integer.Sparse.eval reductionProjection6432 (momentVector H) := by
  have heq : reductionPivot6432 = (fun u v => (normalNode3193).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3193).moment H = injectiveMoment H reductionPivot6432 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3193).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6432 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6432 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6432 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection451, reductionProjection6314, oldProjection1192, oldProjection580] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6432 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6432 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6432 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6432 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code722).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6432 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6314 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6432 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6432 (2 : Fin 4)) = canonicalInput6172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6432 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1192 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6432 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6172 hH))).trans (oldProjectionSound1192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6432 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node580⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6432 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection580 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6432 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3193).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6432 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3193).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6432 (j : Fin 4)))
      2 18 18 2 ![1, 1, 9, 1] ![18, 18, 2, 18] reductionProjection6432 ![oldProjection451, reductionProjection6314, oldProjection1192, oldProjection580]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6433 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, -4), (229, 48), (238, 48), (241, -16), (243, -16), (698, -32), (700, -32), (701, -16), (704, -16), (1059, -16), (1251, -3)]

def reductionPivot6433 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, -2, 2, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]

theorem reductionSound6433 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9854).moment H =
      Integer.Sparse.eval reductionProjection6433 (momentVector H) := by
  have heq : reductionPivot6433 = (fun u v => (normalNode9854).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9854).moment H = injectiveMoment H reductionPivot6433 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9854).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6433 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6433 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6433 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6316, oldProjection1189, oldProjection1191, oldProjection1192] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6433 (0 : Fin 4)) = (normalNode9649).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6433 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6316 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6433 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6433 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1189⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6433 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1189 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6433 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6433 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1191⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6433 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1191 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6433 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6433 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1192⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6433 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1192 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6433 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9854).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6433 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9854).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6433 (j : Fin 4)))
      2 288 288 2 ![144, 144, 72, 9] ![2, 2, 4, 32] reductionProjection6433 ![reductionProjection6316, oldProjection1189, oldProjection1191, oldProjection1192]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6434 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (38, 48), (94, -6), (241, -16), (243, -48), (244, -16), (698, -48), (700, -64), (704, -16), (730, -144), (1053, 48), (1059, -16), (1061, 48), (1251, -5)]

def reductionPivot6434 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, -1, -1, 0]]

theorem reductionSound6434 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3209).moment H =
      Integer.Sparse.eval reductionProjection6434 (momentVector H) := by
  have heq : reductionPivot6434 = (fun u v => (normalNode3209).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3209).moment H = injectiveMoment H reductionPivot6434 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3209).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6434 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6434 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6434 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1173, oldProjection580, oldProjection1169, oldProjection1164] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6434 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1608 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6434 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1173 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6434 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1608 hH))).trans (oldProjectionSound1173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6434 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node580⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6434 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection580 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6434 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6434 (2 : Fin 4)) = canonicalInput6262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6434 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1169 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6434 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6262 hH))).trans (oldProjectionSound1169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6434 (3 : Fin 4)) = canonicalInput6265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6434 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1164 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6434 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6265 hH))).trans (oldProjectionSound1164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3209).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6434 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3209).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6434 (j : Fin 4)))
      2 288 288 2 ![72, 1, 144, 9] ![4, 288, 2, 32] reductionProjection6434 ![oldProjection1173, oldProjection580, oldProjection1169, oldProjection1164]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6435 : Integer.Sparse (Fin 1613) := [(19, -20), (20, 2), (38, -48), (94, 13), (229, -96), (238, -96), (241, 48), (243, 128), (244, 48), (289, 288), (698, 128), (700, 176), (701, 32), (704, 64), (717, 144), (718, 144), (722, 288), (730, 288), (759, 144), (1052, -48), (1053, -96), (1059, 48), (1061, -96), (1251, 11)]

def reductionPivot6435 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, 0, -2, 0]]

theorem reductionSound6435 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3179).moment H =
      Integer.Sparse.eval reductionProjection6435 (momentVector H) := by
  have heq : reductionPivot6435 = (fun u v => (normalNode3179).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3179).moment H = injectiveMoment H reductionPivot6435 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3179).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6435 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6435 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 18, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6435 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2414, reductionProjection6321, reductionProjection6432, reductionProjection6433, reductionProjection6434] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6435 (0 : Fin 5)) = (normalNode1259).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2414 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6435 (1 : Fin 5)) = (normalNode3126).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6321 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6435 (2 : Fin 5)) = (normalNode3193).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6432 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6435 (3 : Fin 5)) = canonicalInput6130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6433 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6433 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6130 hH))).trans (reductionSound6433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6435 (4 : Fin 5)) = (normalNode3209).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6434 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6435 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6434 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3179).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6435 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3179).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6435 (j : Fin 5)))
      1 288 288 1 ![288, 2, 18, 288, 288] ![1, 144, 16, 1, 1] reductionProjection6435 ![reductionProjection2414, reductionProjection6321, reductionProjection6432, reductionProjection6433, reductionProjection6434]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6436 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (94, -5), (229, 24), (240, 24), (241, -8), (243, -8), (247, -8), (293, -72), (704, -8), (723, -72), (1251, -4)]

def reductionPivot6436 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound6436 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3194).moment H =
      Integer.Sparse.eval reductionProjection6436 (momentVector H) := by
  have heq : reductionPivot6436 = (fun u v => (normalNode3194).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3194).moment H = injectiveMoment H reductionPivot6436 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3194).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6436 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6436 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6436 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection453, reductionProjection6322, oldProjection940, oldProjection1014] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6436 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6436 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection453 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6436 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6436 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code723).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6436 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6436 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6436 (2 : Fin 4)) = canonicalInput6177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6436 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection940 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6436 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6177 hH))).trans (oldProjectionSound940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6436 (3 : Fin 4)) = canonicalInput6179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6436 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6436 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6179 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3194).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6436 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3194).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6436 (j : Fin 4)))
      2 144 144 2 ![1, 1, 144, 144] ![144, 144, 1, 1] reductionProjection6436 ![oldProjection453, reductionProjection6322, oldProjection940, oldProjection1014]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6437 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (20, -10), (94, -20), (241, -80), (243, -80), (247, -160), (704, -80), (1251, -25)]

def reductionPivot6437 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 2, 2, -4], ![1, 0, -1, 0]]

theorem reductionSound6437 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7883).moment H =
      Integer.Sparse.eval reductionProjection6437 (momentVector H) := by
  have heq : reductionPivot6437 = (fun u v => (normalNode7883).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7883).moment H = injectiveMoment H reductionPivot6437 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7883).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6437 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6437 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6437 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1031, oldProjection1168, oldProjection962, oldProjection1168] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6437 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5663 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6437 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1031 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6437 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5663 hH))).trans (oldProjectionSound1031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6437 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6201 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6437 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1168 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6437 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6201 hH))).trans (oldProjectionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6437 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6242 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6437 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection962 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6437 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection962 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6242 hH))).trans (oldProjectionSound962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6437 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6244 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6437 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1168 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6437 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6244 hH))).trans (oldProjectionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7883).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6437 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7883).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6437 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 720, 720] ![10, 2, 2, 2] reductionProjection6437 ![oldProjection1031, oldProjection1168, oldProjection962, oldProjection1168]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6438 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -3), (229, 48), (240, 48), (243, -16), (244, -16), (246, -16), (698, -16), (700, -32), (701, -16), (704, -48), (1251, -2)]

def reductionPivot6438 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 0, 2], ![0, -1, 3, -2], ![0, 2, -4, 2], ![1, 0, 0, -1]]

theorem reductionSound6438 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9023).moment H =
      Integer.Sparse.eval reductionProjection6438 (momentVector H) := by
  have heq : reductionPivot6438 = (fun u v => (normalNode9023).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9023).moment H = injectiveMoment H reductionPivot6438 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9023).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6438 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6438 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6438 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1095, reductionProjection4719, oldProjection1015, oldProjection1014] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6438 (0 : Fin 4)) = canonicalInput18222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6438 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1095 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6438 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18222 hH))).trans (oldProjectionSound1095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6438 (1 : Fin 4)) = (normalNode9039).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6438 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6438 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6438 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6438 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1015 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6438 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6438 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1014⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6438 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6438 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9023).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6438 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9023).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6438 (j : Fin 4)))
      2 288 288 2 ![144, 144, 72, 144] ![2, 2, 4, 2] reductionProjection6438 ![oldProjection1095, reductionProjection4719, oldProjection1015, oldProjection1014]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6439 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (20, 9), (94, 32), (229, -96), (240, -96), (241, 32), (243, 48), (244, 16), (246, 16), (247, 64), (293, 288), (698, 32), (700, 48), (701, 32), (704, 112), (719, 144), (720, 144), (723, 288), (761, 144), (1061, -48), (1219, -48), (1251, 28)]

def reductionPivot6439 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound6439 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3180).moment H =
      Integer.Sparse.eval reductionProjection6439 (momentVector H) := by
  have heq : reductionPivot6439 = (fun u v => (normalNode3180).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3180).moment H = injectiveMoment H reductionPivot6439 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3180).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6439 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6439 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 144, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6439 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2415, reductionProjection6324, reductionProjection6436, reductionProjection6437, reductionProjection6438] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6439 (0 : Fin 5)) = (normalNode1263).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2415 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6439 (1 : Fin 5)) = (normalNode3127).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6324 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6439 (2 : Fin 5)) = (normalNode3194).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6436 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6436 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6439 (3 : Fin 5)) = canonicalInput6131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6437 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6437 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6131 hH))).trans (reductionSound6437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6439 (4 : Fin 5)) = canonicalInput6133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6438 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6439 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6438 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6133 hH))).trans (reductionSound6438 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3180).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6439 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3180).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6439 (j : Fin 5)))
      1 288 1440 5 ![1440, 2, 144, 1440, 288] ![1, 720, 10, 1, 5] reductionProjection6439 ![reductionProjection2415, reductionProjection6324, reductionProjection6436, reductionProjection6437, reductionProjection6438]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6440 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 16), (20, -3), (94, -5), (104, -16), (241, -16), (243, -16), (704, -16), (1251, -2)]

def reductionPivot6440 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![0, -2, -2, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, 0, -1, 0]]

theorem reductionSound6440 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10814).moment H =
      Integer.Sparse.eval reductionProjection6440 (momentVector H) := by
  have heq : reductionPivot6440 = (fun u v => (normalNode10814).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10814).moment H = injectiveMoment H reductionPivot6440 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10814).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot6440 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6440 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 16] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6440 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1177, oldProjection1295, reductionProjection6366, oldProjection52] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6440 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5602 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6440 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6440 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5602 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6440 (1 : Fin 4)) = canonicalInput23942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6440 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1295 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6440 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23942 hH))).trans (oldProjectionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6440 (2 : Fin 4)) = canonicalInput23952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6440 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6440 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23952 hH))).trans (reductionSound6366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6440 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8019 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6440 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection52 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6440 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection52 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8019 hH))).trans (oldProjectionSound52 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10814).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6440 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10814).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6440 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 16] ![2, 2, 2, 18] reductionProjection6440 ![oldProjection1177, oldProjection1295, reductionProjection6366, oldProjection52]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6441 : Integer.Sparse (Fin 1613) := [(3, -12), (19, -20), (20, 6), (93, 12), (94, 5), (104, 32), (241, 48), (243, 48), (691, -48), (692, -48), (704, 32), (716, 144), (1052, -48), (1053, -48), (1057, -48), (1223, -96), (1251, -1)]

def reductionPivot6441 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]

theorem reductionSound6441 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3181).moment H =
      Integer.Sparse.eval reductionProjection6441 (momentVector H) := by
  have heq : reductionPivot6441 = (fun u v => (normalNode3181).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3181).moment H = injectiveMoment H reductionPivot6441 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3181).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6441 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6441 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6441 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2327, reductionProjection6308, oldProjection1178, reductionProjection6440, reductionProjection6368] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6441 (0 : Fin 5)) = canonicalInput2644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2327 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2644 hH))).trans (reductionSound2327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6441 (1 : Fin 5)) = (normalNode3129).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6308 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6441 (2 : Fin 5)) = canonicalInput6126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1178 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6126 hH))).trans (oldProjectionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6441 (3 : Fin 5)) = canonicalInput6138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6440 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6440 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6138 hH))).trans (reductionSound6440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6441 (4 : Fin 5)) = (normalNode3214).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6368 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6441 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3181).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6441 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3181).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6441 (j : Fin 5)))
      1 288 288 1 ![288, 288, 144, 288, 288] ![1, 1, 2, 1, 1] reductionProjection6441 ![reductionProjection2327, reductionProjection6308, oldProjection1178, reductionProjection6440, reductionProjection6368]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6442 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -10), (38, 240), (45, 240), (94, -35), (108, -80), (704, -80), (1251, -30)]

def reductionPivot6442 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound6442 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3218).moment H =
      Integer.Sparse.eval reductionProjection6442 (momentVector H) := by
  have heq : reductionPivot6442 = (fun u v => (normalNode3218).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3218).moment H = injectiveMoment H reductionPivot6442 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3218).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6442 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6442 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 24, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6442 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1341, oldProjection244, reductionProjection2339, oldProjection1298] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6442 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1665 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6442 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6442 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1665 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6442 (1 : Fin 4)) = canonicalInput6236.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6442 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection244 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6442 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6236 hH))).trans (oldProjectionSound244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6442 (2 : Fin 4)) = canonicalInput6317.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6442 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2339 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6442 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6317 hH))).trans (reductionSound2339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6442 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3006 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6442 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1298 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6442 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3006 hH))).trans (oldProjectionSound1298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3218).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6442 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3218).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6442 (j : Fin 4)))
      2 1440 1440 2 ![720, 24, 72, 144] ![2, 60, 20, 10] reductionProjection6442 ![oldProjection1341, oldProjection244, reductionProjection2339, oldProjection1298]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6443 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -160), (20, 30), (38, -480), (45, -480), (94, 105), (108, 160), (243, 160), (247, 160), (692, -240), (698, 80), (700, 240), (704, 320), (720, 720), (1053, -240), (1059, 80), (1251, 100)]

def reductionPivot6443 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]

theorem reductionSound6443 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3182).moment H =
      Integer.Sparse.eval reductionProjection6443 (momentVector H) := by
  have heq : reductionPivot6443 = (fun u v => (normalNode3182).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3182).moment H = injectiveMoment H reductionPivot6443 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3182).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6443 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6443 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6443 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2425, reductionProjection6325, oldProjection1168, reductionProjection6442, reductionProjection6375] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6443 (0 : Fin 5)) = (normalNode1273).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2425 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6443 (1 : Fin 5)) = (normalNode3130).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6325 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6325 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6443 (2 : Fin 5)) = canonicalInput6128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1168 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6128 hH))).trans (oldProjectionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6443 (3 : Fin 5)) = (normalNode3218).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6442 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6443 (4 : Fin 5)) = canonicalInput6140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6375 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6443 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6140 hH))).trans (reductionSound6375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3182).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6443 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3182).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6443 (j : Fin 5)))
      1 1440 1440 1 ![72, 1440, 720, 1440, 1440] ![20, 1, 2, 1, 1] reductionProjection6443 ![reductionProjection2425, reductionProjection6325, oldProjection1168, reductionProjection6442, reductionProjection6375]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6444 : Integer.Sparse (Fin 1613) := [(3, 4), (19, -4), (20, -2), (94, 1), (232, 48), (686, 48), (704, -16), (1251, -1), (1294, 48)]

def reductionPivot6444 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 1, -1, -1]]

theorem reductionSound6444 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3220).moment H =
      Integer.Sparse.eval reductionProjection6444 (momentVector H) := by
  have heq : reductionPivot6444 = (fun u v => (normalNode3220).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3220).moment H = injectiveMoment H reductionPivot6444 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3220).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6444 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6444 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6444 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2366, oldProjection247, reductionProjection6355, reductionProjection2418] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6444 (0 : Fin 4)) = canonicalInput2810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6444 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6444 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2810 hH))).trans (reductionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6444 (1 : Fin 4)) = canonicalInput6238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6444 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6444 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6238 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6444 (2 : Fin 4)) = canonicalInput6319.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6444 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6355 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6444 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6319 hH))).trans (reductionSound6355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6444 (3 : Fin 4)) = canonicalInput6321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6444 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6444 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6321 hH))).trans (reductionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3220).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6444 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3220).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6444 (j : Fin 4)))
      2 288 288 2 ![144, 48, 144, 144] ![2, 6, 2, 2] reductionProjection6444 ![reductionProjection2366, oldProjection247, reductionProjection6355, reductionProjection2418]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6445 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -40), (19, -180), (20, 40), (38, -240), (94, 75), (108, 80), (232, -240), (243, 80), (247, 160), (567, 720), (686, -480), (704, 80), (720, 720), (1081, 720), (1251, 85), (1294, -240)]

def reductionPivot6445 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]

theorem reductionSound6445 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3183).moment H =
      Integer.Sparse.eval reductionProjection6445 (momentVector H) := by
  have heq : reductionPivot6445 = (fun u v => (normalNode3183).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3183).moment H = injectiveMoment H reductionPivot6445 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3183).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6445 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6445 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6445 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2426, reductionProjection6327, oldProjection1095, reductionProjection6444, reductionProjection6375] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6445 (0 : Fin 5)) = (normalNode1274).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2426 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2426 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6445 (1 : Fin 5)) = (normalNode3131).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6327 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6445 (2 : Fin 5)) = canonicalInput6129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1095 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6129 hH))).trans (oldProjectionSound1095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6445 (3 : Fin 5)) = (normalNode3220).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6444 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6444 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6445 (4 : Fin 5)) = canonicalInput6141.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6375 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6445 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6141 hH))).trans (reductionSound6375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3183).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6445 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3183).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6445 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 144, 288, 1440] ![1, 5, 10, 5, 1] reductionProjection6445 ![reductionProjection2426, reductionProjection6327, oldProjection1095, reductionProjection6444, reductionProjection6375]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6446 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -160), (20, 80), (94, 120), (241, 160), (243, 320), (244, 80), (247, 480), (698, 80), (700, 160), (701, 80), (704, 320), (720, 720), (1052, -240), (1053, -240), (1061, -480), (1219, -480), (1251, 115)]

def reductionPivot6446 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound6446 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3184).moment H =
      Integer.Sparse.eval reductionProjection6446 (momentVector H) := by
  have heq : reductionPivot6446 = (fun u v => (normalNode3184).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3184).moment H = injectiveMoment H reductionPivot6446 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3184).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6446 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6446 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6446 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1558, reductionProjection6328, reductionProjection6437, oldProjection1469, reductionProjection6381] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6446 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1558⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1558 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6446 (1 : Fin 5)) = (normalNode3132).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6328 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6328 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6446 (2 : Fin 5)) = canonicalInput6131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6437 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6437 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6131 hH))).trans (reductionSound6437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6446 (3 : Fin 5)) = canonicalInput6143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1469 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1469 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6143 hH))).trans (oldProjectionSound1469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6446 (4 : Fin 5)) = canonicalInput6144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6381 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6446 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6144 hH))).trans (reductionSound6381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3184).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6446 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3184).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6446 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 1440, 288] ![5, 5, 1, 1, 5] reductionProjection6446 ![oldProjection1558, reductionProjection6328, reductionProjection6437, oldProjection1469, reductionProjection6381]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6447 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 2), (94, 5), (243, 16), (244, 16), (246, 16), (700, 16), (704, 16), (1251, 3)]

def reductionPivot6447 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 0, 2], ![0, 2, -4, 2], ![1, -1, 3, -3]]

theorem reductionSound6447 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9103).moment H =
      Integer.Sparse.eval reductionProjection6447 (momentVector H) := by
  have heq : reductionPivot6447 = (fun u v => (normalNode9103).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9103).moment H = injectiveMoment H reductionPivot6447 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9103).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot6447 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6447 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6447 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection247, oldProjection187, oldProjection156] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6447 (0 : Fin 3)) = canonicalInput18328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6447 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6447 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18328 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6447 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6556 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6447 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection187 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6447 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6556 hH))).trans (oldProjectionSound187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6447 (2 : Fin 3)) = canonicalInput17380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6447 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection156 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6447 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17380 hH))).trans (oldProjectionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9103).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6447 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9103).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6447 (j : Fin 3)))
      3 144 144 3 ![48, 24, 48] ![3, 6, 3] reductionProjection6447 ![oldProjection247, oldProjection187, oldProjection156]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6448 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (232, -48), (242, -48), (244, 16), (246, 16)]

def reductionPivot6448 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![0, 2, 2, -4], ![2, -1, -4, 3]]

theorem reductionSound6448 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9009).moment H =
      Integer.Sparse.eval reductionProjection6448 (momentVector H) := by
  have heq : reductionPivot6448 = (fun u v => (normalNode9009).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9009).moment H = injectiveMoment H reductionPivot6448 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9009).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9009).entries)).symm
  have hshape : reductionPivot6448 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6448 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6448 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1699, oldProjection154, oldProjection156] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6448 (0 : Fin 3)) = canonicalInput5732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6448 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1699 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6448 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5732 hH))).trans (reductionSound1699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6448 (1 : Fin 3)) = canonicalInput18725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6448 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection154 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6448 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18725 hH))).trans (oldProjectionSound154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6448 (2 : Fin 3)) = canonicalInput18768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6448 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection156 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6448 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18768 hH))).trans (oldProjectionSound156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9009).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6448 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9009).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6448 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection6448 ![reductionProjection1699, oldProjection154, oldProjection156]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6449 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -3), (94, -8), (232, 48), (242, 48), (243, -32), (244, -32), (246, -32), (686, 48), (700, -32), (701, -16), (704, -48), (1251, -9)]

def reductionPivot6449 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 1, -2, 0]]

theorem reductionSound6449 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3224).moment H =
      Integer.Sparse.eval reductionProjection6449 (momentVector H) := by
  have heq : reductionPivot6449 = (fun u v => (normalNode3224).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3224).moment H = injectiveMoment H reductionPivot6449 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3224).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6449 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6449 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6449 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1097, reductionProjection6447, reductionProjection6448, oldProjection1174] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6449 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1690 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6449 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1097 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6449 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1097 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1690 hH))).trans (oldProjectionSound1097 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6449 (1 : Fin 4)) = canonicalInput6271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6449 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6447 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6449 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6271 hH))).trans (reductionSound6447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6449 (2 : Fin 4)) = canonicalInput6340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6449 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6448 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6449 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6340 hH))).trans (reductionSound6448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6449 (3 : Fin 4)) = canonicalInput6342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6449 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1174 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6449 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6342 hH))).trans (oldProjectionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3224).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6449 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3224).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6449 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection6449 ![oldProjection1097, reductionProjection6447, reductionProjection6448, oldProjection1174]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6450 : Integer.Sparse (Fin 1613) := [(19, -28), (20, 8), (38, -48), (94, 13), (229, -96), (232, -48), (240, -96), (242, -48), (243, 64), (244, 48), (246, 48), (567, 144), (686, -96), (698, 48), (700, 112), (701, 64), (704, 192), (719, 144), (914, 144), (1061, -48), (1251, 13)]

def reductionPivot6450 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]

theorem reductionSound6450 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3185).moment H =
      Integer.Sparse.eval reductionProjection6450 (momentVector H) := by
  have heq : reductionPivot6450 = (fun u v => (normalNode3185).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3185).moment H = injectiveMoment H reductionPivot6450 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3185).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6450 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6450 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 288, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6450 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2429, reductionProjection6329, reductionProjection6438, reductionProjection6449, reductionProjection6381] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6450 (0 : Fin 5)) = (normalNode1277).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2429 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2429 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6450 (1 : Fin 5)) = (normalNode3133).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6329 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6450 (2 : Fin 5)) = canonicalInput6132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6438 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6438 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6132 hH))).trans (reductionSound6438 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6450 (3 : Fin 5)) = (normalNode3224).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6449 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6450 (4 : Fin 5)) = canonicalInput6145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6381 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6450 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6145 hH))).trans (reductionSound6381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3185).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6450 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3185).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6450 (j : Fin 5)))
      1 288 288 1 ![72, 288, 288, 288, 288] ![4, 1, 1, 1, 1] reductionProjection6450 ![reductionProjection2429, reductionProjection6329, reductionProjection6438, reductionProjection6449, reductionProjection6381]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6451 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 1), (42, -16), (91, -16), (94, 1), (244, -16), (700, -16), (704, -16), (1225, -16), (1251, -4)]

def reductionPivot6451 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, 3, -3], ![0, 2, -4, 2], ![1, 0, 0, -1]]

theorem reductionSound6451 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9419).moment H =
      Integer.Sparse.eval reductionProjection6451 (momentVector H) := by
  have heq : reductionPivot6451 = (fun u v => (normalNode9419).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9419).moment H = injectiveMoment H reductionPivot6451 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9419).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6451 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6451 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6451 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1564, oldProjection1095, oldProjection1102, oldProjection1075] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6451 (0 : Fin 4)) = (normalNode7057).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6451 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1564 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6451 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1564 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6451 (1 : Fin 4)) = canonicalInput18222.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6451 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1095 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6451 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18222 hH))).trans (oldProjectionSound1095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6451 (2 : Fin 4)) = canonicalInput18274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6451 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1102 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6451 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18274 hH))).trans (oldProjectionSound1102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6451 (3 : Fin 4)) = canonicalInput18276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6451 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6451 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18276 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9419).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6451 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9419).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6451 (j : Fin 4)))
      2 288 288 2 ![9, 144, 144, 72] ![32, 2, 2, 4] reductionProjection6451 ![reductionProjection1564, oldProjection1095, oldProjection1102, oldProjection1075]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6452 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -160), (20, 20), (38, -120), (42, 80), (91, 40), (94, 40), (241, 120), (243, 280), (244, 80), (247, 80), (568, 360), (698, 160), (700, 120), (704, 440), (720, 360), (741, 720), (1040, -120), (1225, 40), (1251, 65)]

def reductionPivot6452 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound6452 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3186).moment H =
      Integer.Sparse.eval reductionProjection6452 (momentVector H) := by
  have heq : reductionPivot6452 = (fun u v => (normalNode3186).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3186).moment H = injectiveMoment H reductionPivot6452 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3186).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6452 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6452 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6452 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2430, reductionProjection6331, reductionProjection6451, reductionProjection6385, reductionProjection6386] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6452 (0 : Fin 5)) = (normalNode1280).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2430 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2430 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6452 (1 : Fin 5)) = (normalNode3134).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6331 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6452 (2 : Fin 5)) = canonicalInput6135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6451 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6135 hH))).trans (reductionSound6451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6452 (3 : Fin 5)) = (normalNode3226).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6385 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6452 (4 : Fin 5)) = canonicalInput6148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6452 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6148 hH))).trans (reductionSound6386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3186).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6452 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3186).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6452 (j : Fin 5)))
      1 720 1440 2 ![1440, 288, 288, 288, 1440] ![1, 5, 5, 5, 1] reductionProjection6452 ![reductionProjection2430, reductionProjection6331, reductionProjection6451, reductionProjection6385, reductionProjection6386]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6453 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (42, -16), (91, -16), (94, -3), (242, 48), (243, -32), (244, -48), (246, -16), (700, -48), (701, -16), (704, -16), (1251, -2)]

def reductionPivot6453 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, 0, 2], ![0, 0, 3, -3], ![0, 2, -4, 2], ![1, 0, 0, -1]]

theorem reductionSound6453 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8976).moment H =
      Integer.Sparse.eval reductionProjection6453 (momentVector H) := by
  have heq : reductionPivot6453 = (fun u v => (normalNode8976).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8976).moment H = injectiveMoment H reductionPivot6453 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8976).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6453 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6453 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6453 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1564, reductionProjection4719, oldProjection1062, oldProjection1064] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6453 (0 : Fin 4)) = (normalNode7057).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6453 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1564 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6453 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1564 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6453 (1 : Fin 4)) = (normalNode9039).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6453 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6453 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6453 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6453 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6453 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6453 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1064⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6453 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1064 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6453 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8976).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6453 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8976).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6453 (j : Fin 4)))
      2 288 288 2 ![9, 144, 144, 144] ![32, 2, 2, 2] reductionProjection6453 ![reductionProjection1564, reductionProjection4719, oldProjection1062, oldProjection1064]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6454 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -3), (94, -1), (241, -16), (242, 48), (243, -48), (244, -16), (247, -16), (330, -144), (700, -16), (742, -144), (1251, -6)]

def reductionPivot6454 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound6454 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3227).moment H =
      Integer.Sparse.eval reductionProjection6454 (momentVector H) := by
  have heq : reductionPivot6454 = (fun u v => (normalNode3227).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3227).moment H = injectiveMoment H reductionPivot6454 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3227).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6454 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6454 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6454 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection467, oldProjection1064, reductionProjection6332, oldProjection1082] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6454 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6454 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6454 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6454 (1 : Fin 4)) = canonicalInput6297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6454 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1064 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6454 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6297 hH))).trans (oldProjectionSound1064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6454 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code742).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6454 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6332 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6454 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6454 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3029 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6454 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1082 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6454 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3029 hH))).trans (oldProjectionSound1082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3227).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6454 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3227).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6454 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 144] ![288, 2, 288, 2] reductionProjection6454 ![oldProjection467, oldProjection1064, reductionProjection6332, oldProjection1082]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6455 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -220), (20, 45), (38, -240), (42, 160), (72, -240), (91, 80), (94, 75), (241, 240), (242, -480), (243, 640), (244, 320), (246, 80), (247, 160), (330, 1440), (568, 720), (698, 240), (700, 640), (701, 160), (704, 320), (719, 720), (742, 1440), (1058, -240), (1061, -240), (1251, 80)]

def reductionPivot6455 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound6455 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3187).moment H =
      Integer.Sparse.eval reductionProjection6455 (momentVector H) := by
  have heq : reductionPivot6455 = (fun u v => (normalNode3187).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3187).moment H = injectiveMoment H reductionPivot6455 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3187).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6455 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6455 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6455 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2431, reductionProjection6333, reductionProjection6453, reductionProjection6454, reductionProjection6386] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6455 (0 : Fin 5)) = (normalNode1281).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2431 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6455 (1 : Fin 5)) = (normalNode3135).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6333 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6455 (2 : Fin 5)) = canonicalInput6136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6453 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6136 hH))).trans (reductionSound6453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6455 (3 : Fin 5)) = (normalNode3227).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6454 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6455 (4 : Fin 5)) = canonicalInput6149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6455 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6149 hH))).trans (reductionSound6386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3187).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6455 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3187).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6455 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 288, 1440] ![1, 5, 5, 5, 1] reductionProjection6455 ![reductionProjection2431, reductionProjection6333, reductionProjection6453, reductionProjection6454, reductionProjection6386]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6456 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -1), (241, -8), (243, -8), (716, -72), (1057, 24), (1223, 48), (1251, 1)]

def reductionPivot6456 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, 0, 1, -3]]

theorem reductionSound6456 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3188).moment H =
      Integer.Sparse.eval reductionProjection6456 (momentVector H) := by
  have heq : reductionPivot6456 = (fun u v => (normalNode3188).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3188).moment H = injectiveMoment H reductionPivot6456 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3188).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6456 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6456 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6456 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1348, oldProjection576, oldProjection1178, reductionProjection701] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6456 (0 : Fin 4)) = canonicalInput2650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6456 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1348 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6456 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2650 hH))).trans (oldProjectionSound1348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6456 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node576⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6456 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection576 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6456 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6456 (2 : Fin 4)) = canonicalInput6146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6456 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1178 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6456 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6146 hH))).trans (oldProjectionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6456 (3 : Fin 4)) = canonicalInput6152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6456 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection701 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6456 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection701 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6152 hH))).trans (reductionSound701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3188).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6456 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3188).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6456 (j : Fin 4)))
      2 144 144 2 ![144, 1, 144, 72] ![1, 144, 1, 2] reductionProjection6456 ![oldProjection1348, oldProjection576, oldProjection1178, reductionProjection701]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6457 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -400), (20, 60), (38, -1680), (94, 205), (241, 400), (243, 640), (244, 80), (247, 320), (698, 640), (700, 320), (701, 240), (704, 1120), (717, 720), (1053, -240), (1059, 80), (1061, -480), (1251, 145)]

def reductionPivot6457 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound6457 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3189).moment H =
      Integer.Sparse.eval reductionProjection6457 (momentVector H) := by
  have heq : reductionPivot6457 = (fun u v => (normalNode3189).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3189).moment H = injectiveMoment H reductionPivot6457 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3189).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6457 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6457 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6457 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1563, reductionProjection6319, reductionProjection6386, oldProjection1486, reductionProjection4756] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6457 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1563⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1563 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6457 (1 : Fin 5)) = (normalNode3136).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6319 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6457 (2 : Fin 5)) = canonicalInput6148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6148 hH))).trans (reductionSound6386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6457 (3 : Fin 5)) = canonicalInput6153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6153 hH))).trans (oldProjectionSound1486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6457 (4 : Fin 5)) = canonicalInput6154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4756 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6457 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6154 hH))).trans (reductionSound4756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3189).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6457 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3189).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6457 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 1440, 1440, 144] ![1, 10, 1, 1, 10] reductionProjection6457 ![oldProjection1563, reductionProjection6319, reductionProjection6386, oldProjection1486, reductionProjection4756]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6458 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -12), (20, 1), (94, 4), (104, 16), (236, -48), (704, 16), (1251, 3)]

def reductionPivot6458 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 1, -2], ![1, -2, 3, -2], ![-1, 2, -4, 3]]

theorem reductionSound6458 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11176).moment H =
      Integer.Sparse.eval reductionProjection6458 (momentVector H) := by
  have heq : reductionPivot6458 = (fun u v => (normalNode11176).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11176).moment H = injectiveMoment H reductionPivot6458 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11176).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11176).entries)).symm
  have hshape : reductionPivot6458 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6458 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6458 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection250, oldProjection166, reductionProjection1721] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6458 (0 : Fin 3)) = canonicalInput31680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6458 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection250 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6458 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection250 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31680 hH))).trans (oldProjectionSound250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6458 (1 : Fin 3)) = canonicalInput33865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6458 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection166 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6458 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33865 hH))).trans (oldProjectionSound166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6458 (2 : Fin 3)) = canonicalInput33867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6458 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1721 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6458 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33867 hH))).trans (reductionSound1721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11176).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6458 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11176).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6458 (j : Fin 3)))
      3 144 144 3 ![48, 48, 1] ![3, 3, 144] reductionProjection6458 ![oldProjection250, oldProjection166, reductionProjection1721]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6459 : Integer.Sparse (Fin 1613) := [(728, 1)]

theorem reductionSound6459 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code728).moment H =
      Integer.Sparse.eval reductionProjection6459 (momentVector H) := by
  have hc : coordinates (728 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code728) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6459, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6460 : Integer.Sparse (Fin 1613) := [(3, 8), (19, -4), (20, -2), (94, -5), (104, -32), (236, 48), (241, -16), (243, -16), (704, -32), (728, -144), (1251, -3)]

def reductionPivot6460 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, -1, 2, -3]]

theorem reductionSound6460 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3238).moment H =
      Integer.Sparse.eval reductionProjection6460 (momentVector H) := by
  have heq : reductionPivot6460 = (fun u v => (normalNode3238).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3238).moment H = injectiveMoment H reductionPivot6460 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3238).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6460 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6460 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6460 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6458, reductionProjection6366, reductionProjection6459, oldProjection1295] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6460 (0 : Fin 4)) = canonicalInput9664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6460 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6458 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6460 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9664 hH))).trans (reductionSound6458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6460 (1 : Fin 4)) = canonicalInput6257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6460 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6366 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6460 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6257 hH))).trans (reductionSound6366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6460 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code728).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6460 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6459 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6460 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6460 (3 : Fin 4)) = canonicalInput6165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6460 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1295 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6460 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6165 hH))).trans (oldProjectionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3238).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6460 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3238).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6460 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection6460 ![reductionProjection6458, reductionProjection6366, reductionProjection6459, oldProjection1295]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6461 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -16), (20, 5), (35, -48), (40, -96), (77, -48), (94, 4), (104, 16), (236, -48), (241, 16), (243, 16), (285, 144), (704, 16), (721, 144), (728, 144), (1223, -48), (1251, -1)]

def reductionPivot6461 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]

theorem reductionSound6461 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3191).moment H =
      Integer.Sparse.eval reductionProjection6461 (momentVector H) := by
  have heq : reductionPivot6461 = (fun u v => (normalNode3191).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3191).moment H = injectiveMoment H reductionPivot6461 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3191).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6461 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6461 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6461 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2394, reductionProjection6307, oldProjection1295, oldProjection1295, reductionProjection6460] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6461 (0 : Fin 5)) = (normalNode1298).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2394 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6461 (1 : Fin 5)) = (normalNode3140).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6307 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6461 (2 : Fin 5)) = canonicalInput6160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1295 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6160 hH))).trans (oldProjectionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6461 (3 : Fin 5)) = canonicalInput6161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1295 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6161 hH))).trans (oldProjectionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6461 (4 : Fin 5)) = (normalNode3238).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6460 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6461 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3191).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6461 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3191).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6461 (j : Fin 5)))
      1 288 288 1 ![288, 288, 144, 144, 288] ![1, 1, 2, 2, 1] reductionProjection6461 ![reductionProjection2394, reductionProjection6307, oldProjection1295, oldProjection1295, reductionProjection6460]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6462 : Integer.Sparse (Fin 1613) := [(19, -84), (20, 5), (38, -336), (42, 32), (77, -48), (94, 39), (229, -48), (238, -48), (241, 64), (243, 160), (244, 16), (247, 64), (289, 144), (698, 80), (700, 112), (701, 48), (704, 160), (722, 144), (730, 288), (1223, -48), (1251, 42)]

def reductionPivot6462 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound6462 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3192).moment H =
      Integer.Sparse.eval reductionProjection6462 (momentVector H) := by
  have heq : reductionPivot6462 = (fun u v => (normalNode3192).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3192).moment H = injectiveMoment H reductionPivot6462 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3192).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6462 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6462 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 18, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6462 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2411, reductionProjection6315, reductionProjection2450, reductionProjection4752, reductionProjection4752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6462 (0 : Fin 5)) = (normalNode1307).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2411 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6462 (1 : Fin 5)) = (normalNode3155).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6315 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6462 (2 : Fin 5)) = canonicalInput6171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2450 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6171 hH))).trans (reductionSound2450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6462 (3 : Fin 5)) = (normalNode3248).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4752 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6462 (4 : Fin 5)) = canonicalInput6174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4752 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6462 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6174 hH))).trans (reductionSound4752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3192).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6462 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3192).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6462 (j : Fin 5)))
      1 288 288 1 ![72, 18, 288, 288, 288] ![4, 16, 1, 1, 1] reductionProjection6462 ![reductionProjection2411, reductionProjection6315, reductionProjection2450, reductionProjection4752, reductionProjection4752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6463 : Integer.Sparse (Fin 1613) := [(19, -4), (33, -48), (94, 1), (104, 16), (105, 16), (241, 32), (243, 16), (1251, 1)]

def reductionPivot6463 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -2, 2, -1], ![1, 0, 2, -3], ![-1, 2, -4, 3]]

theorem reductionSound6463 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11166).moment H =
      Integer.Sparse.eval reductionProjection6463 (momentVector H) := by
  have heq : reductionPivot6463 = (fun u v => (normalNode11166).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11166).moment H = injectiveMoment H reductionPivot6463 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11166).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11166).entries)).symm
  have hshape : reductionPivot6463 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6463 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6463 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection141, oldProjection140, reductionProjection234] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6463 (0 : Fin 3)) = canonicalInput24443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6463 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection141 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6463 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24443 hH))).trans (oldProjectionSound141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6463 (1 : Fin 3)) = canonicalInput32917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6463 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection140 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6463 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32917 hH))).trans (oldProjectionSound140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6463 (2 : Fin 3)) = canonicalInput32918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6463 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6463 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32918 hH))).trans (reductionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11166).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6463 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11166).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6463 (j : Fin 3)))
      3 144 144 3 ![3, 48, 1] ![48, 3, 144] reductionProjection6463 ![oldProjection141, oldProjection140, reductionProjection234]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

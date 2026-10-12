import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical104
import NoFourMUBs.Step2.SOS.Canonical105
import NoFourMUBs.Step2.SOS.Canonical106
import NoFourMUBs.Step2.SOS.Canonical117
import NoFourMUBs.Step2.SOS.Canonical158
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions064
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions213
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical101
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical106
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical134
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical139
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical65
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical95
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical98
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical99
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6848 : Integer.Sparse (Fin 1613) := [(0, 1), (698, -240), (700, -320), (704, -80), (803, -720), (1059, -80), (1251, -25)]

def reductionPivot6848 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]

theorem reductionSound6848 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3486).moment H =
      Integer.Sparse.eval reductionProjection6848 (momentVector H) := by
  have heq : reductionPivot6848 = (fun u v => (normalNode3486).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3486).moment H = injectiveMoment H reductionPivot6848 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3486).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6848 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6848 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6848 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1066, oldProjection1065, oldProjection599, oldProjection1063] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6848 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2088 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6848 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1066 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6848 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1066 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2088 hH))).trans (oldProjectionSound1066 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6848 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3166 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6848 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1065 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6848 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3166 hH))).trans (oldProjectionSound1065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6848 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6848 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection599 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6848 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6848 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3250 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6848 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1063 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6848 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3250 hH))).trans (oldProjectionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3486).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6848 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3486).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6848 (j : Fin 4)))
      2 1440 1440 2 ![36, 144, 1, 720] ![40, 10, 1440, 2] reductionProjection6848 ![oldProjection1066, oldProjection1065, oldProjection599, oldProjection1063]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6849 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (42, -48), (94, -5), (243, -32), (700, -32), (701, -16), (703, -16), (704, -32), (805, -144), (1251, -2)]

def reductionPivot6849 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound6849 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3488).moment H =
      Integer.Sparse.eval reductionProjection6849 (momentVector H) := by
  have heq : reductionPivot6849 = (fun u v => (normalNode3488).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3488).moment H = injectiveMoment H reductionPivot6849 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3488).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6849 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6849 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6849 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1106, reductionProjection4708, reductionProjection6809, oldProjection1156] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6849 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2093 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6849 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1106 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6849 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2093 hH))).trans (oldProjectionSound1106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6849 (1 : Fin 4)) = canonicalInput6733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6849 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4708 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6849 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4708 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6733 hH))).trans (reductionSound4708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6849 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code805).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6849 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6809 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6849 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6849 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3255 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6849 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1156 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6849 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3255 hH))).trans (oldProjectionSound1156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3488).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6849 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3488).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6849 (j : Fin 4)))
      2 288 288 2 ![9, 72, 1, 144] ![32, 4, 288, 2] reductionProjection6849 ![oldProjection1106, reductionProjection4708, reductionProjection6809, oldProjection1156]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6850 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (35, 48), (40, 48), (42, -32), (94, -4), (104, -16), (243, -16), (700, -16), (701, -48), (703, -32), (704, -32), (784, -144), (1251, -3)]

def reductionPivot6850 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound6850 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3489).moment H =
      Integer.Sparse.eval reductionProjection6850 (momentVector H) := by
  have heq : reductionPivot6850 = (fun u v => (normalNode3489).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3489).moment H = injectiveMoment H reductionPivot6850 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3489).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6850 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6850 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6850 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1158, oldProjection1307, reductionProjection6812, reductionProjection6814] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6850 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2096 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6850 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1158 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6850 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2096 hH))).trans (oldProjectionSound1158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6850 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3181 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6850 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1307 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6850 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3181 hH))).trans (oldProjectionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6850 (2 : Fin 4)) = canonicalInput6777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6850 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6850 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6777 hH))).trans (reductionSound6812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6850 (3 : Fin 4)) = canonicalInput6780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6850 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6814 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6850 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6780 hH))).trans (reductionSound6814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3489).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6850 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3489).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6850 (j : Fin 4)))
      2 288 288 2 ![9, 144, 1, 9] ![32, 2, 288, 32] reductionProjection6850 ![oldProjection1158, oldProjection1307, reductionProjection6812, reductionProjection6814]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6851 : Integer.Sparse (Fin 1613) := [(94, -1), (335, -36), (506, -36), (698, -4), (700, -4), (704, 4), (809, -36), (1251, -1)]

def reductionPivot6851 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 2, -1, -1], ![1, -1, 3, -3], ![1, 0, -2, 1]]

theorem reductionSound6851 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode3494).moment H =
      Integer.Sparse.eval reductionProjection6851 (momentVector H) := by
  have heq : reductionPivot6851 = (fun u v => (normalNode3494).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3494).moment H = injectiveMoment H reductionPivot6851 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3494).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6851 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6851 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 36, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6851 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2060, oldProjection1282, reductionProjection2475, oldProjection604] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6851 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code506).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6851 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2060 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6851 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2060 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6851 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3236 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6851 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1282 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6851 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3236 hH))).trans (oldProjectionSound1282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6851 (2 : Fin 4)) = canonicalInput6783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6851 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2475 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6851 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2475 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6783 hH))).trans (reductionSound2475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6851 (3 : Fin 4)) = canonicalInput6785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6851 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection604 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6851 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6785 hH))).trans (oldProjectionSound604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3494).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6851 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3494).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6851 (j : Fin 4)))
      2 72 72 2 ![1, 36, 1, 1] ![72, 2, 72, 72] reductionProjection6851 ![reductionProjection2060, oldProjection1282, reductionProjection2475, oldProjection604]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6852 : Integer.Sparse (Fin 1613) := [(774, -1), (775, -1), (780, -1), (807, -1)]

def reductionPivot6852 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -3, 1], ![2, -1, 1, -2]]

theorem reductionSound6852 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3507).moment H =
      Integer.Sparse.eval reductionProjection6852 (momentVector H) := by
  have heq : reductionPivot6852 = (fun u v => (normalNode3507).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3507).moment H = injectiveMoment H reductionPivot6852 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3507).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6852 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6852 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6852 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection602, reductionProjection143, oldProjection588, reductionProjection6793] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6852 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3417 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6852 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection602 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6852 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3417 hH))).trans (oldProjectionSound602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6852 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code780).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6852 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection143 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6852 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6852 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6852 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6852 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6852 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code774).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6852 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6793 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6852 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3507).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6852 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3507).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6852 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6852 ![oldProjection602, reductionProjection143, oldProjection588, reductionProjection6793]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6853 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (94, -5), (426, 720), (691, -240), (698, 80), (728, 720), (729, 720), (731, 720), (774, 720), (775, 1440), (780, 720), (781, 720), (807, 720), (865, 720), (1050, -240), (1052, -240), (1058, -240), (1221, -240), (1226, 80), (1251, 5)]

def reductionPivot6853 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -1, 1, -2]]

theorem reductionSound6853 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3495).moment H =
      Integer.Sparse.eval reductionProjection6853 (momentVector H) := by
  have heq : reductionPivot6853 = (fun u v => (normalNode3495).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3495).moment H = injectiveMoment H reductionPivot6853 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3495).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6853 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6853 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1440, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6853 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6531, reductionProjection2659, oldProjection588, reductionProjection6852, reductionProjection3880] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6853 (0 : Fin 5)) = (normalNode3234).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6531 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6531 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6853 (1 : Fin 5)) = (normalNode3471).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2659 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2659 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6853 (2 : Fin 5)) = canonicalInput6564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6564 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6853 (3 : Fin 5)) = (normalNode3507).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6852 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6853 (4 : Fin 5)) = (normalNode3509).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3880 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6853 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3880 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3495).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6853 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3495).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6853 (j : Fin 5)))
      1 1440 1440 1 ![2, 1440, 1, 2, 2] ![720, 1, 1440, 720, 720] reductionProjection6853 ![reductionProjection6531, reductionProjection2659, oldProjection588, reductionProjection6852, reductionProjection3880]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6854 : Integer.Sparse (Fin 1613) := [(1085, 1)]

theorem reductionSound6854 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1085).moment H =
      Integer.Sparse.eval reductionProjection6854 (momentVector H) := by
  have hc : coordinates (1085 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1085) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6854, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6855 : Integer.Sparse (Fin 1613) := [(19, 12), (94, 1), (104, -16), (241, -16), (682, 48), (690, 48), (698, -16), (704, -16), (774, -144), (1085, -144), (1251, 9)]

def reductionPivot6855 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![2, -1, 2, -3]]

theorem reductionSound6855 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3513).moment H =
      Integer.Sparse.eval reductionProjection6855 (momentVector H) := by
  have heq : reductionPivot6855 = (fun u v => (normalNode3513).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3513).moment H = injectiveMoment H reductionPivot6855 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3513).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6855 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6855 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6855 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6854, oldProjection1317, reductionProjection6793, oldProjection1303] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6855 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1085).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6855 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6854 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6855 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6855 (1 : Fin 4)) = canonicalInput6687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6855 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6855 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6687 hH))).trans (oldProjectionSound1317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6855 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code774).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6855 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6793 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6855 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6855 (3 : Fin 4)) = canonicalInput6571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6855 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1303 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6855 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6571 hH))).trans (oldProjectionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3513).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6855 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3513).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6855 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 72] ![288, 2, 288, 4] reductionProjection6855 ![reductionProjection6854, oldProjection1317, reductionProjection6793, oldProjection1303]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6856 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -40), (19, -80), (20, 10), (93, 60), (94, 20), (104, 320), (236, -240), (241, 400), (243, 80), (682, -480), (690, -480), (691, -240), (694, -240), (698, 400), (704, 320), (728, 720), (774, 1440), (775, 720), (1052, -240), (1085, 1440), (1226, 80), (1251, -55)]

def reductionPivot6856 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 2, -3]]

theorem reductionSound6856 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3496).moment H =
      Integer.Sparse.eval reductionProjection6856 (momentVector H) := by
  have heq : reductionPivot6856 = (fun u v => (normalNode3496).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3496).moment H = injectiveMoment H reductionPivot6856 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3496).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6856 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6856 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 24, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6856 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6460, reductionProjection6755, reductionProjection6855, reductionProjection6855, reductionProjection3864] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6856 (0 : Fin 5)) = (normalNode3238).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6460 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6856 (1 : Fin 5)) = (normalNode3483).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6755 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6856 (2 : Fin 5)) = (normalNode3513).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6855 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6856 (3 : Fin 5)) = canonicalInput6574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6855 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6574 hH))).trans (reductionSound6855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6856 (4 : Fin 5)) = (normalNode3516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3864 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6856 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3496).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6856 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3496).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6856 (j : Fin 5)))
      1 1440 1440 1 ![288, 24, 288, 288, 1440] ![5, 60, 5, 5, 1] reductionProjection6856 ![reductionProjection6460, reductionProjection6755, reductionProjection6855, reductionProjection6855, reductionProjection3864]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6857 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (241, -16), (682, 48), (690, 96), (697, 48), (698, -16), (775, -144), (1114, -144), (1251, 9)]

def reductionPivot6857 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![2, -1, 1, -2]]

theorem reductionSound6857 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3514).moment H =
      Integer.Sparse.eval reductionProjection6857 (momentVector H) := by
  have heq : reductionPivot6857 = (fun u v => (normalNode3514).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3514).moment H = injectiveMoment H reductionPivot6857 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3514).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6857 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6857 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6857 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection678, oldProjection1315, oldProjection588, oldProjection1303] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6857 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node678⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6857 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection678 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6857 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6857 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3136 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6857 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1315 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6857 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3136 hH))).trans (oldProjectionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6857 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6857 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6857 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6857 (3 : Fin 4)) = canonicalInput6571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6857 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1303 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6857 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6571 hH))).trans (oldProjectionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3514).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6857 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3514).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6857 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 72] ![288, 2, 288, 4] reductionProjection6857 ![oldProjection678, oldProjection1315, oldProjection588, oldProjection1303]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6858 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -28), (94, 8), (104, 32), (241, 96), (243, 16), (247, 16), (426, 144), (682, -48), (690, -96), (694, -96), (697, -48), (698, 128), (704, 16), (729, 144), (775, 288), (1055, -48), (1058, -48), (1114, 144), (1226, 48), (1227, 16), (1250, 12), (1251, 1)]

def reductionPivot6858 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound6858 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3497).moment H =
      Integer.Sparse.eval reductionProjection6858 (momentVector H) := by
  have heq : reductionPivot6858 = (fun u v => (normalNode3497).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3497).moment H = injectiveMoment H reductionPivot6858 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3497).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6858 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6858 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6858 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2303, oldProjection1630, reductionProjection6857, reductionProjection3864, reductionProjection3040] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6858 (0 : Fin 5)) = (normalNode3240).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2303 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6858 (1 : Fin 5)) = canonicalInput6533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1630 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6533 hH))).trans (oldProjectionSound1630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6858 (2 : Fin 5)) = (normalNode3514).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6857 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6857 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6858 (3 : Fin 5)) = (normalNode3516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3864 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6858 (4 : Fin 5)) = canonicalInput6575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6858 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6575 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3497).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6858 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3497).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6858 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 288, 1440, 288] ![1, 1, 5, 1, 5] reductionProjection6858 ![reductionProjection2303, oldProjection1630, reductionProjection6857, reductionProjection3864, reductionProjection3040]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6859 : Integer.Sparse (Fin 1613) := [(76, 48), (94, -3), (241, -16), (243, -16), (691, 96), (698, -32), (700, -32), (704, -16), (781, -144), (808, -144), (1251, 1)]

def reductionPivot6859 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, -2, 1], ![2, -1, 0, -1]]

theorem reductionSound6859 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3533).moment H =
      Integer.Sparse.eval reductionProjection6859 (momentVector H) := by
  have heq : reductionPivot6859 = (fun u v => (normalNode3533).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3533).moment H = injectiveMoment H reductionPivot6859 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3533).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6859 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6859 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 72, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6859 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection603, oldProjection1313, oldProjection589, oldProjection1305] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6859 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4479 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6859 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection603 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6859 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4479 hH))).trans (oldProjectionSound603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6859 (1 : Fin 4)) = canonicalInput6715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6859 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1313 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6859 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1313 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6715 hH))).trans (oldProjectionSound1313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6859 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6859 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection589 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6859 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6859 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3088 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6859 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1305 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6859 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3088 hH))).trans (oldProjectionSound1305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3533).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6859 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3533).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6859 (j : Fin 4)))
      2 288 288 2 ![1, 72, 1, 144] ![288, 4, 288, 2] reductionProjection6859 ![oldProjection603, oldProjection1313, oldProjection589, oldProjection1305]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6860 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (76, -240), (94, 30), (241, 320), (243, 80), (426, 720), (682, -240), (690, -480), (691, -480), (697, -240), (698, 560), (700, 160), (704, 80), (771, -1440), (775, 720), (781, 720), (808, 720), (865, 720), (869, 720), (1050, -480), (1055, -240), (1059, 160), (1114, 720), (1221, -240), (1226, 80), (1227, 80), (1251, -75)]

def reductionPivot6860 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 0, -1]]

theorem reductionSound6860 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3500).moment H =
      Integer.Sparse.eval reductionProjection6860 (momentVector H) := by
  have heq : reductionPivot6860 = (fun u v => (normalNode3500).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3500).moment H = injectiveMoment H reductionPivot6860 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3500).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6860 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6860 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 1, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6860 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2909, reductionProjection6859, reductionProjection3040, reductionProjection4026, reductionProjection6857] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6860 (0 : Fin 5)) = canonicalInput7511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2909 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7511 hH))).trans (reductionSound2909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6860 (1 : Fin 5)) = (normalNode3533).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6859 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6859 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6860 (2 : Fin 5)) = canonicalInput6575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6575 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6860 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code771).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4026 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4026 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6860 (4 : Fin 5)) = (normalNode3514).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6857 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6860 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6857 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3500).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6860 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3500).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6860 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 1, 288] ![1, 5, 5, 1440, 5] reductionProjection6860 ![reductionProjection2909, reductionProjection6859, reductionProjection3040, reductionProjection4026, reductionProjection6857]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6861 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -20), (76, -720), (81, -240), (94, 95), (241, 160), (668, 720), (682, -720), (690, -240), (691, -240), (697, -720), (698, 880), (700, 80), (704, 160), (772, -1440), (799, 720), (800, 720), (1050, -240), (1059, 80), (1221, -720), (1226, 240), (1227, 160), (1251, -35), (1321, -240), (1323, -240), (1389, -480)]

def reductionPivot6861 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound6861 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3501).moment H =
      Integer.Sparse.eval reductionProjection6861 (momentVector H) := by
  have heq : reductionPivot6861 = (fun u v => (normalNode3501).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3501).moment H = injectiveMoment H reductionPivot6861 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3501).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6861 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6861 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 360, 1, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6861 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2737, oldProjection1945, oldProjection1643, reductionProjection6821, reductionProjection6817] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6861 (0 : Fin 5)) = canonicalInput7512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7512 hH))).trans (reductionSound2737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6861 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1945⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1945 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6861 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3068 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1643 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3068 hH))).trans (oldProjectionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6861 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code772).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6821 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6861 (4 : Fin 5)) = (normalNode3515).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6817 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6861 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3501).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6861 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3501).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6861 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 360, 1, 72] ![1, 1, 4, 1440, 20] reductionProjection6861 ![reductionProjection2737, oldProjection1945, oldProjection1643, reductionProjection6821, reductionProjection6817]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6862 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -40), (90, 80), (94, 65), (241, 640), (243, 160), (426, 1440), (694, -240), (698, 800), (700, 80), (775, 720), (781, 720), (865, 720), (1047, -240), (1055, -720), (1059, 80), (1226, 400), (1227, 320), (1251, -65)]

def reductionPivot6862 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 0, -1]]

theorem reductionSound6862 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3502).moment H =
      Integer.Sparse.eval reductionProjection6862 (momentVector H) := by
  have heq : reductionPivot6862 = (fun u v => (normalNode3502).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3502).moment H = injectiveMoment H reductionPivot6862 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3502).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6862 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6862 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6862 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2013, reductionProjection2766, reductionProjection3040, reductionProjection3040, reductionProjection3864] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6862 (0 : Fin 5)) = canonicalInput7516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7516 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6862 (1 : Fin 5)) = (normalNode3534).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2766 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6862 (2 : Fin 5)) = canonicalInput6576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6576 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6862 (3 : Fin 5)) = canonicalInput6575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6575 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6862 (4 : Fin 5)) = (normalNode3516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3864 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6862 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3502).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6862 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3502).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6862 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 288, 288, 1440] ![10, 1, 5, 5, 1] reductionProjection6862 ![oldProjection2013, reductionProjection2766, reductionProjection3040, reductionProjection3040, reductionProjection3864]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6863 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (94, -20), (461, -720), (465, -720), (698, -320), (700, -240), (1059, -240), (1251, 25)]

def reductionPivot6863 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound6863 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3518).moment H =
      Integer.Sparse.eval reductionProjection6863 (momentVector H) := by
  have heq : reductionPivot6863 = (fun u v => (normalNode3518).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3518).moment H = injectiveMoment H reductionPivot6863 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3518).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6863 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6863 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6863 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection483, oldProjection805, oldProjection481, oldProjection1235] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6863 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4316 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6863 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6863 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4316 hH))).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6863 (1 : Fin 4)) = canonicalInput6698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6863 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection805 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6863 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6698 hH))).trans (oldProjectionSound805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6863 (2 : Fin 4)) = canonicalInput6587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6863 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection481 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6863 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6587 hH))).trans (oldProjectionSound481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6863 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3075 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6863 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6863 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3075 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3518).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6863 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3518).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6863 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 9] ![1440, 2, 1440, 160] reductionProjection6863 ![oldProjection483, oldProjection805, oldProjection481, oldProjection1235]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6864 : Integer.Sparse (Fin 1613) := [(0, -8), (81, -240), (90, 80), (94, 45), (241, 160), (243, 160), (426, 720), (461, 1440), (465, 720), (698, 1040), (700, 400), (782, 720), (890, 720), (1055, -240), (1058, -240), (1059, 640), (1226, 240), (1227, 480), (1251, -255)]

def reductionPivot6864 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -1, 0]]

theorem reductionSound6864 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3503).moment H =
      Integer.Sparse.eval reductionProjection6864 (momentVector H) := by
  have heq : reductionPivot6864 = (fun u v => (normalNode3503).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3503).moment H = injectiveMoment H reductionPivot6864 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3503).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6864 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6864 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6864 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2015, reductionProjection2764, reductionProjection2543, reductionProjection6863, reductionProjection3040] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6864 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3411 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2015 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3411 hH))).trans (oldProjectionSound2015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6864 (1 : Fin 5)) = (normalNode3535).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2764 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6864 (2 : Fin 5)) = canonicalInput6577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2543 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6577 hH))).trans (reductionSound2543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6864 (3 : Fin 5)) = (normalNode3518).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6863 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6863 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6864 (4 : Fin 5)) = canonicalInput6575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6864 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6575 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3503).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6864 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3503).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6864 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 1440, 288] ![1, 1, 5, 1, 5] reductionProjection6864 ![oldProjection2015, reductionProjection2764, reductionProjection2543, reductionProjection6863, reductionProjection3040]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6865 : Integer.Sparse (Fin 1613) := [(0, 1), (76, -24), (81, -48), (90, 24), (94, 17), (241, 8), (243, 8), (549, 72), (565, 72), (697, -24), (698, 168), (700, 16), (1059, 16), (1221, -24), (1226, 88), (1227, 80), (1251, -24), (1323, -24), (1389, -48)]

def reductionPivot6865 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound6865 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3504).moment H =
      Integer.Sparse.eval reductionProjection6865 (momentVector H) := by
  have heq : reductionPivot6865 = (fun u v => (normalNode3504).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3504).moment H = injectiveMoment H reductionPivot6865 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3504).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6865 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6865 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 144, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6865 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2018, oldProjection1946, oldProjection1690, oldProjection1942, oldProjection1643] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6865 (0 : Fin 5)) = canonicalInput7518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7518 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6865 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1946 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6865 (2 : Fin 5)) = canonicalInput6579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1690 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6579 hH))).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6865 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1942 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6865 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3068 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1643 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6865 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3068 hH))).trans (oldProjectionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3504).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6865 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3504).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6865 (j : Fin 5)))
      1 144 1440 10 ![1440, 1440, 288, 144, 360] ![1, 1, 5, 10, 4] reductionProjection6865 ![oldProjection2018, oldProjection1946, oldProjection1690, oldProjection1942, oldProjection1643]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6866 : Integer.Sparse (Fin 1613) := [(0, -3), (81, -120), (90, 40), (94, 50), (241, 40), (243, 40), (505, 360), (602, 360), (635, 360), (642, 360), (697, -120), (698, 560), (700, 160), (704, 40), (773, -720), (1027, 360), (1059, 160), (1117, 360), (1226, 200), (1227, 200), (1251, -95), (1389, -120)]

def reductionPivot6866 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]

theorem reductionSound6866 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3505).moment H =
      Integer.Sparse.eval reductionProjection6866 (momentVector H) := by
  have heq : reductionPivot6866 = (fun u v => (normalNode3505).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3505).moment H = injectiveMoment H reductionPivot6866 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3505).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6866 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6866 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6866 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3381, oldProjection1947, reductionProjection5810, oldProjection1690, oldProjection1689] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6866 (0 : Fin 5)) = (normalNode3991).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3381 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6866 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1947⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1947 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6866 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code773).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5810 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6866 (3 : Fin 5)) = canonicalInput6579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1690 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6579 hH))).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6866 (4 : Fin 5)) = canonicalInput6578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1689 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6866 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1689 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6578 hH))).trans (oldProjectionSound1689 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3505).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6866 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3505).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6866 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1, 288, 1440] ![1, 1, 1440, 5, 1] reductionProjection6866 ![reductionProjection3381, oldProjection1947, reductionProjection5810, oldProjection1690, oldProjection1689]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6867 : Integer.Sparse (Fin 1613) := [(0, -6), (76, -240), (81, -1200), (90, 240), (94, 135), (565, 720), (669, 720), (697, -960), (698, 1680), (700, 480), (704, 160), (801, 720), (1059, 560), (1221, -240), (1226, 320), (1227, 480), (1251, -215), (1389, -480)]

def reductionPivot6867 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0]]

theorem reductionSound6867 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3506).moment H =
      Integer.Sparse.eval reductionProjection6867 (momentVector H) := by
  have heq : reductionPivot6867 = (fun u v => (normalNode3506).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3506).moment H = injectiveMoment H reductionPivot6867 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3506).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6867 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6867 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6867 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2021, oldProjection1948, reductionProjection3017, reductionProjection2971, oldProjection1690] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6867 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2021 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6867 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1948 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6867 (2 : Fin 5)) = (normalNode3520).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3017 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6867 (3 : Fin 5)) = (normalNode3519).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2971 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6867 (4 : Fin 5)) = canonicalInput6579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1690 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6867 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6579 hH))).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3506).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6867 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3506).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6867 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 1440, 288] ![2, 1, 1, 1, 5] reductionProjection6867 ![oldProjection2021, oldProjection1948, reductionProjection3017, reductionProjection2971, oldProjection1690]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6868 : Integer.Sparse (Fin 1613) := [(0, 1), (76, -240), (81, -720), (90, 160), (94, 70), (241, 80), (243, 80), (426, 720), (565, 720), (691, -240), (697, -240), (698, 1040), (700, 240), (704, 80), (775, 1440), (781, 720), (807, 720), (808, 720), (865, 720), (1050, -240), (1055, -240), (1058, -480), (1059, 240), (1221, -240), (1226, 320), (1227, 320), (1251, -75)]

def reductionPivot6868 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6868 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3508).moment H =
      Integer.Sparse.eval reductionProjection6868 (momentVector H) := by
  have heq : reductionPivot6868 = (fun u v => (normalNode3508).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3508).moment H = injectiveMoment H reductionPivot6868 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3508).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6868 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6868 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 72, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6868 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1999, oldProjection1949, oldProjection1655, oldProjection1944, oldProjection1943] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6868 (0 : Fin 5)) = canonicalInput7525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7525 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6868 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1949⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1949 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6868 (2 : Fin 5)) = canonicalInput6583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6583 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6868 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1944 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6868 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1943⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1943 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6868 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3508).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6868 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3508).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6868 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 72, 1440, 1440] ![1, 1, 20, 1, 1] reductionProjection6868 ![oldProjection1999, oldProjection1949, oldProjection1655, oldProjection1944, oldProjection1943]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6869 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -240), (94, 25), (426, 720), (461, 720), (465, 720), (505, 720), (602, 1440), (642, 720), (698, 880), (776, -1440), (782, 720), (809, 720), (890, 720), (1058, -240), (1059, 80), (1226, 480), (1227, 320), (1251, -100)]

def reductionPivot6869 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound6869 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3510).moment H =
      Integer.Sparse.eval reductionProjection6869 (momentVector H) := by
  have heq : reductionPivot6869 = (fun u v => (normalNode3510).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3510).moment H = injectiveMoment H reductionPivot6869 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3510).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6869 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6869 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 288, 1440, 72, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6869 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2187, oldProjection1950, oldProjection1703, oldProjection1655, reductionProjection2691] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6869 (0 : Fin 5)) = (normalNode3994).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2187 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6869 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1950⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1950 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6869 (2 : Fin 5)) = canonicalInput6585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1703 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6585 hH))).trans (oldProjectionSound1703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6869 (3 : Fin 5)) = canonicalInput6583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6583 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6869 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code776).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2691 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6869 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2691 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3510).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6869 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3510).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6869 (j : Fin 5)))
      1 1440 1440 1 ![360, 288, 1440, 72, 1] ![4, 5, 1, 20, 1440] reductionProjection6869 ![reductionProjection2187, oldProjection1950, oldProjection1703, oldProjection1655, reductionProjection2691]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6870 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -60), (81, -120), (90, 40), (94, 15), (243, 20), (426, 360), (434, 180), (461, 180), (565, 180), (698, 380), (700, 60), (782, 180), (890, 180), (1058, -120), (1059, 80), (1219, -60), (1221, -60), (1226, 140), (1227, 120), (1251, -50)]

def reductionPivot6870 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6870 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode3511).moment H =
      Integer.Sparse.eval reductionProjection6870 (momentVector H) := by
  have heq : reductionPivot6870 = (fun u v => (normalNode3511).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3511).moment H = injectiveMoment H reductionPivot6870 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3511).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6870 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6870 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6870 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2023, oldProjection1951, oldProjection1704, reductionProjection4810, oldProjection1655] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6870 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2023 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6870 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1951⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1951 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6870 (2 : Fin 5)) = canonicalInput6586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1704 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6586 hH))).trans (oldProjectionSound1704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6870 (3 : Fin 5)) = (normalNode3521).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4810 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6870 (4 : Fin 5)) = canonicalInput6583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6870 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6583 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3511).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6870 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3511).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6870 (j : Fin 5)))
      1 360 1440 4 ![720, 1440, 1440, 1440, 72] ![2, 1, 1, 1, 20] reductionProjection6870 ![oldProjection2023, oldProjection1951, oldProjection1704, reductionProjection4810, oldProjection1655]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6871 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -40), (81, -240), (94, 145), (241, 160), (247, 240), (426, 720), (434, 720), (549, 720), (565, 1440), (669, 720), (697, -480), (698, 800), (700, 80), (1055, -240), (1059, 80), (1219, -240), (1226, 240), (1227, 320), (1251, -110), (1388, -240)]

def reductionPivot6871 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound6871 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3517).moment H =
      Integer.Sparse.eval reductionProjection6871 (momentVector H) := by
  have heq : reductionPivot6871 = (fun u v => (normalNode3517).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3517).moment H = injectiveMoment H reductionPivot6871 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3517).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6871 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6871 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6871 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2171, oldProjection2767, reductionProjection4810, oldProjection2750, reductionProjection2971] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6871 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2171⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2171 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6871 (1 : Fin 5)) = canonicalInput6695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2767 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6695 hH))).trans (oldProjectionSound2767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6871 (2 : Fin 5)) = (normalNode3521).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4810 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6871 (3 : Fin 5)) = canonicalInput6580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6580 hH))).trans (oldProjectionSound2750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6871 (4 : Fin 5)) = (normalNode3519).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2971 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6871 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3517).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6871 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3517).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6871 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 720, 1440] ![1, 2, 1, 2, 1] reductionProjection6871 ![oldProjection2171, oldProjection2767, reductionProjection4810, oldProjection2750, reductionProjection2971]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6872 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 5), (76, -240), (88, 80), (90, 160), (94, 40), (105, 160), (241, 480), (243, 560), (426, 720), (691, -480), (698, 640), (700, 320), (704, 80), (732, 720), (781, 1440), (782, 720), (808, 720), (1047, -480), (1055, -240), (1058, -240), (1059, 160), (1226, 400), (1227, 80), (1251, -95)]

def reductionPivot6872 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1]]

theorem reductionSound6872 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3522).moment H =
      Integer.Sparse.eval reductionProjection6872 (momentVector H) := by
  have heq : reductionPivot6872 = (fun u v => (normalNode3522).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3522).moment H = injectiveMoment H reductionPivot6872 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3522).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6872 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6872 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6872 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6528, reductionProjection3040, reductionProjection6859, reductionProjection2766, reductionProjection2764] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6872 (0 : Fin 5)) = (normalNode3254).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6528 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6528 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6872 (1 : Fin 5)) = canonicalInput6575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6575 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6872 (2 : Fin 5)) = (normalNode3533).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6859 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6859 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6872 (3 : Fin 5)) = (normalNode3534).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2766 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6872 (4 : Fin 5)) = (normalNode3535).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2764 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6872 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3522).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6872 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3522).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6872 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 288, 1440, 1440] ![5, 5, 5, 1, 1] reductionProjection6872 ![reductionProjection6528, reductionProjection3040, reductionProjection6859, reductionProjection2766, reductionProjection2764]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6873 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (94, -25), (241, -80), (642, -720), (697, 480), (698, -160), (700, -80), (704, -80), (1089, -720), (1251, 10)]

def reductionPivot6873 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 1, 0, -2]]

theorem reductionSound6873 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3536).moment H =
      Integer.Sparse.eval reductionProjection6873 (momentVector H) := by
  have heq : reductionPivot6873 = (fun u v => (normalNode3536).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3536).moment H = injectiveMoment H reductionPivot6873 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3536).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6873 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6873 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6873 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection674, oldProjection1036, oldProjection1011, oldProjection519] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6873 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node674⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6873 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection674 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6873 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6873 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3155 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6873 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6873 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3155 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6873 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3102 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6873 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1011 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6873 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1011 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3102 hH))).trans (oldProjectionSound1011 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6873 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3100 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6873 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6873 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3100 hH))).trans (oldProjectionSound519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3536).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6873 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3536).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6873 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 72, 1] ![1440, 2, 20, 1440] reductionProjection6873 ![oldProjection674, oldProjection1036, oldProjection1011, oldProjection519]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6874 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -100), (20, 10), (76, -1200), (81, -240), (88, 240), (90, 240), (94, 130), (105, 80), (231, -240), (241, 480), (242, -240), (243, 560), (247, 160), (642, 720), (691, -240), (697, -960), (698, 1120), (700, 320), (704, 160), (800, 720), (1089, 720), (1226, 640), (1227, 80), (1251, 5), (1323, -480)]

def reductionPivot6874 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound6874 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3523).moment H =
      Integer.Sparse.eval reductionProjection6874 (momentVector H) := by
  have heq : reductionPivot6874 = (fun u v => (normalNode3523).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3523).moment H = injectiveMoment H reductionPivot6874 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3523).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6874 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6874 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 360, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6874 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6555, oldProjection1643, oldProjection1945, reductionProjection6873, oldProjection1946] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6874 (0 : Fin 5)) = (normalNode3256).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6555 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6874 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3068 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1643 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3068 hH))).trans (oldProjectionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6874 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1945⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1945 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6874 (3 : Fin 5)) = (normalNode3536).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6873 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6874 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1946 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6874 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3523).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6874 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3523).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6874 (j : Fin 5)))
      1 1440 1440 1 ![144, 360, 1440, 1440, 1440] ![10, 4, 1, 1, 1] reductionProjection6874 ![reductionProjection6555, oldProjection1643, oldProjection1945, reductionProjection6873, oldProjection1946]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6875 : Integer.Sparse (Fin 1613) := [(778, 1)]

theorem reductionSound6875 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code778).moment H =
      Integer.Sparse.eval reductionProjection6875 (momentVector H) := by
  have hc : coordinates (778 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code778) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6875, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6876 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -16), (20, 1), (76, -48), (88, 16), (90, 64), (94, 22), (241, 64), (243, 64), (247, 16), (502, 144), (549, 144), (565, 144), (627, 144), (697, -48), (698, 192), (700, 80), (704, 16), (778, -288), (1059, 16), (1226, 96), (1227, 16), (1248, 144), (1251, -10), (1323, -48), (1330, 144)]

def reductionPivot6876 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound6876 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3524).moment H =
      Integer.Sparse.eval reductionProjection6876 (momentVector H) := by
  have heq : reductionPivot6876 = (fun u v => (normalNode3524).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3524).moment H = injectiveMoment H reductionPivot6876 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3524).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6876 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6876 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 1, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6876 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6468, oldProjection1942, reductionProjection6875, oldProjection1946, oldProjection2145] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6876 (0 : Fin 5)) = (normalNode3257).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6468 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6876 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1942 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6876 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code778).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6875 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6875 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6876 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1946 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6876 (4 : Fin 5)) = canonicalInput6591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2145 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6876 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6591 hH))).trans (oldProjectionSound2145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3524).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6876 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3524).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6876 (j : Fin 5)))
      1 288 1440 5 ![288, 144, 1, 1440, 720] ![5, 10, 1440, 1, 2] reductionProjection6876 ![reductionProjection6468, oldProjection1942, reductionProjection6875, oldProjection1946, oldProjection2145]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6877 : Integer.Sparse (Fin 1613) := [(81, 12), (90, -4), (94, -1), (698, -12), (700, -8), (701, -4), (704, -4), (783, -36), (1059, -8), (1251, -1)]

def reductionPivot6877 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, -1, -2, 1]]

theorem reductionSound6877 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode3539).moment H =
      Integer.Sparse.eval reductionProjection6877 (momentVector H) := by
  have heq : reductionPivot6877 = (fun u v => (normalNode3539).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3539).moment H = injectiveMoment H reductionPivot6877 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3539).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6877 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6877 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6877 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1305, reductionProjection1312, reductionProjection1307, oldProjection1193] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6877 (0 : Fin 4)) = canonicalInput10170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6877 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1305 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6877 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10170 hH))).trans (reductionSound1305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6877 (1 : Fin 4)) = canonicalInput6722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6877 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1312 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6877 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6722 hH))).trans (reductionSound1312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6877 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code783).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6877 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6877 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6877 (3 : Fin 4)) = canonicalInput6595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6877 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1193 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6877 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6595 hH))).trans (oldProjectionSound1193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3539).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6877 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3539).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6877 (j : Fin 4)))
      2 72 72 2 ![72, 72, 1, 9] ![1, 1, 72, 8] reductionProjection6877 ![reductionProjection1305, reductionProjection1312, reductionProjection1307, oldProjection1193]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6878 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -20), (20, 5), (81, -240), (88, 80), (90, 240), (241, 80), (243, 320), (244, 80), (461, 720), (698, 800), (700, 560), (701, 80), (704, 80), (733, 720), (782, 1440), (783, 720), (1058, -720), (1059, 640), (1226, 400), (1227, 240), (1251, -50)]

def reductionPivot6878 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]

theorem reductionSound6878 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3525).moment H =
      Integer.Sparse.eval reductionProjection6878 (momentVector H) := by
  have heq : reductionPivot6878 = (fun u v => (normalNode3525).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3525).moment H = injectiveMoment H reductionPivot6878 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3525).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6878 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6878 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6878 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6472, reductionProjection2543, reductionProjection2764, reductionProjection2764, reductionProjection6877] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6878 (0 : Fin 5)) = (normalNode3260).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6472 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6878 (1 : Fin 5)) = canonicalInput6577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2543 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6577 hH))).trans (reductionSound2543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6878 (2 : Fin 5)) = (normalNode3535).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2764 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6878 (3 : Fin 5)) = canonicalInput6593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2764 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6593 hH))).trans (reductionSound2764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6878 (4 : Fin 5)) = (normalNode3539).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6877 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6878 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3525).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6878 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3525).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6878 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 1440, 72] ![5, 5, 1, 1, 20] reductionProjection6878 ![reductionProjection6472, reductionProjection2543, reductionProjection2764, reductionProjection2764, reductionProjection6877]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6879 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -80), (20, 15), (76, -480), (81, -240), (88, 240), (90, 560), (94, 75), (231, -240), (241, 160), (243, 480), (642, 720), (697, -240), (698, 1440), (700, 720), (704, 240), (1059, 80), (1117, 720), (1226, 1040), (1227, 320), (1251, -10), (1323, -480), (1389, -240)]

def reductionPivot6879 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound6879 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3526).moment H =
      Integer.Sparse.eval reductionProjection6879 (momentVector H) := by
  have heq : reductionPivot6879 = (fun u v => (normalNode3526).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3526).moment H = injectiveMoment H reductionPivot6879 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3526).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6879 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6879 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6879 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1916, oldProjection1690, oldProjection1946, oldProjection1947, oldProjection1948] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6879 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1916⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1916 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6879 (1 : Fin 5)) = canonicalInput6579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1690 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6579 hH))).trans (oldProjectionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6879 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1946 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6879 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1947⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1947 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6879 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1948 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6879 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3526).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6879 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3526).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6879 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 1440, 1440] ![5, 5, 1, 1, 1] reductionProjection6879 ![oldProjection1916, oldProjection1690, oldProjection1946, oldProjection1947, oldProjection1948]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

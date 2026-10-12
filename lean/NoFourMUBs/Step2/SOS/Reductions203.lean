import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical307
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions077
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions198
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions202
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical102
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical92
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical93
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical94
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical95
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6496 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -240), (20, 10), (38, -240), (94, 155), (129, 720), (130, 720), (228, -240), (238, -720), (241, 1040), (243, 880), (244, 160), (247, 400), (465, 720), (697, -240), (698, 1360), (700, 640), (704, 160), (730, 720), (1052, -240), (1053, -240), (1059, 400), (1061, -240), (1251, -40)]

def reductionPivot6496 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]

theorem reductionSound6496 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3206).moment H =
      Integer.Sparse.eval reductionProjection6496 (momentVector H) := by
  have heq : reductionPivot6496 = (fun u v => (normalNode3206).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3206).moment H = injectiveMoment H reductionPivot6496 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3206).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6496 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6496 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6496 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1590, reductionProjection6494, reductionProjection6485, reductionProjection6495, oldProjection1471] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6496 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1590⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1590 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6496 (1 : Fin 5)) = (normalNode3243).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6494 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6496 (2 : Fin 5)) = canonicalInput6248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6485 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6248 hH))).trans (reductionSound6485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6496 (3 : Fin 5)) = canonicalInput6258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6495 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6258 hH))).trans (reductionSound6495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6496 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2954 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1471 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6496 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2954 hH))).trans (oldProjectionSound1471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3206).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6496 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3206).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6496 (j : Fin 5)))
      1 1440 1440 1 ![720, 288, 1440, 1440, 720] ![2, 5, 1, 1, 2] reductionProjection6496 ![oldProjection1590, reductionProjection6494, reductionProjection6485, reductionProjection6495, oldProjection1471]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6497 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (94, -7), (229, 144), (238, 48), (240, 48), (243, -16), (244, -16), (700, -16), (704, -16), (742, -144), (1251, -4), (1321, 48)]

def reductionPivot6497 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, 2, -3], ![1, 1, -2, 0]]

theorem reductionSound6497 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3245).moment H =
      Integer.Sparse.eval reductionProjection6497 (momentVector H) := by
  have heq : reductionPivot6497 = (fun u v => (normalNode3245).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3245).moment H = injectiveMoment H reductionPivot6497 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3245).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6497 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6497 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6497 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1504, reductionProjection6332, oldProjection1014, oldProjection1192] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6497 (0 : Fin 4)) = (normalNode7419).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6497 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6497 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6497 (1 : Fin 4)) = canonicalInput6368.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6497 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6332 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6497 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6368 hH))).trans (reductionSound6332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6497 (2 : Fin 4)) = canonicalInput6178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6497 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1014 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6497 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6178 hH))).trans (oldProjectionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6497 (3 : Fin 4)) = canonicalInput6172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6497 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1192 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6497 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6172 hH))).trans (oldProjectionSound1192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3245).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6497 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3245).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6497 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 9] ![2, 288, 2, 32] reductionProjection6497 ![reductionProjection1504, reductionProjection6332, oldProjection1014, oldProjection1192]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6498 : Integer.Sparse (Fin 1613) := [(19, 10), (20, -1), (94, 1), (242, 24), (243, -8), (246, -8), (704, -8), (1251, -4)]

def reductionPivot6498 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 0, 2], ![0, 0, 3, -3], ![0, 2, -4, 2], ![1, -1, 0, 0]]

theorem reductionSound6498 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9091).moment H =
      Integer.Sparse.eval reductionProjection6498 (momentVector H) := by
  have heq : reductionPivot6498 = (fun u v => (normalNode9091).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9091).moment H = injectiveMoment H reductionPivot6498 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9091).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6498 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6498 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6498 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1075, reductionProjection2630, oldProjection1065, oldProjection1064] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6498 (0 : Fin 4)) = canonicalInput18276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6498 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6498 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18276 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6498 (1 : Fin 4)) = (normalNode9116).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6498 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6498 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6498 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1065⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6498 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1065 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6498 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6498 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1064⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6498 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1064 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6498 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9091).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6498 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9091).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6498 (j : Fin 4)))
      2 144 144 2 ![72, 144, 144, 144] ![2, 1, 1, 1] reductionProjection6498 ![oldProjection1075, reductionProjection2630, oldProjection1065, oldProjection1064]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6499 : Integer.Sparse (Fin 1613) := [(744, 1)]

theorem reductionSound6499 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code744).moment H =
      Integer.Sparse.eval reductionProjection6499 (momentVector H) := by
  have hc : coordinates (744 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code744) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6499, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6500 : Integer.Sparse (Fin 1613) := [(741, -1), (742, -1), (744, -1), (803, -1)]

def reductionPivot6500 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 1, 2, -3], ![1, -2, 1, 0], ![1, 1, -2, 0]]

theorem reductionSound6500 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3296).moment H =
      Integer.Sparse.eval reductionProjection6500 (momentVector H) := by
  have heq : reductionPivot6500 = (fun u v => (normalNode3296).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3296).moment H = injectiveMoment H reductionPivot6500 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3296).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6500 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6500 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6500 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection599, reductionProjection6499, reductionProjection6332, oldProjection583] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6500 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6500 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection599 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6500 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6500 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code744).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6500 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6500 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6500 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code742).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6500 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6332 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6500 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6500 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node583⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6500 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection583 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6500 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3296).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6500 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3296).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6500 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6500 ![oldProjection599, reductionProjection6499, reductionProjection6332, oldProjection583]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6501 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -280), (20, 30), (94, 45), (229, -720), (238, -240), (240, -240), (241, 160), (242, -240), (243, 480), (244, 240), (246, 80), (247, 80), (330, 720), (698, 320), (700, 560), (701, 240), (704, 560), (741, 720), (742, 1440), (744, 720), (803, 720), (1059, 80), (1251, 100), (1321, -240)]

def reductionPivot6501 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]

theorem reductionSound6501 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3207).moment H =
      Integer.Sparse.eval reductionProjection6501 (momentVector H) := by
  have heq : reductionPivot6501 = (fun u v => (normalNode3207).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3207).moment H = injectiveMoment H reductionPivot6501 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3207).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6501 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6501 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 144, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6501 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1597, reductionProjection6497, reductionProjection6498, reductionProjection6500, reductionProjection6404] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6501 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1597⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1597 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6501 (1 : Fin 5)) = (normalNode3245).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6497 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6501 (2 : Fin 5)) = canonicalInput6251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6498 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6251 hH))).trans (reductionSound6498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6501 (3 : Fin 5)) = (normalNode3296).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6500 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6501 (4 : Fin 5)) = canonicalInput6261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6404 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6501 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6261 hH))).trans (reductionSound6404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3207).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6501 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3207).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6501 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 144, 2, 1440] ![10, 5, 10, 720, 1] reductionProjection6501 ![oldProjection1597, reductionProjection6497, reductionProjection6498, reductionProjection6500, reductionProjection6404]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6502 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (38, 144), (94, -7), (243, -16), (244, -16), (698, -48), (700, -96), (701, -16), (704, -16), (1053, 48), (1059, -16), (1061, 96), (1251, -6)]

def reductionPivot6502 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, 0, -1, 0]]

theorem reductionSound6502 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3297).moment H =
      Integer.Sparse.eval reductionProjection6502 (momentVector H) := by
  have heq : reductionPivot6502 = (fun u v => (normalNode3297).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3297).moment H = injectiveMoment H reductionPivot6502 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3297).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6502 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6502 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 9, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6502 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1066, reductionProjection867, oldProjection1087, oldProjection997] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6502 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3272 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6502 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1066 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6502 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1066 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3272 hH))).trans (oldProjectionSound1066 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6502 (1 : Fin 4)) = canonicalInput6362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6502 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection867 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6502 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6362 hH))).trans (reductionSound867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6502 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3045 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6502 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1087 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6502 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3045 hH))).trans (oldProjectionSound1087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6502 (3 : Fin 4)) = canonicalInput6360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6502 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6502 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6360 hH))).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3297).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6502 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3297).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6502 (j : Fin 4)))
      2 288 288 2 ![36, 144, 9, 72] ![8, 2, 32, 4] reductionProjection6502 ![oldProjection1066, reductionProjection867, oldProjection1087, oldProjection997]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6503 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -56), (20, 8), (38, -336), (94, 30), (241, 48), (243, 128), (244, 32), (247, 64), (698, 128), (700, 176), (701, 32), (704, 128), (730, 144), (1053, -96), (1059, 32), (1061, -144), (1251, 31)]

def reductionPivot6503 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6503 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3208).moment H =
      Integer.Sparse.eval reductionProjection6503 (momentVector H) := by
  have heq : reductionPivot6503 = (fun u v => (normalNode3208).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3208).moment H = injectiveMoment H reductionPivot6503 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3208).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6503 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6503 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6503 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1605, reductionProjection4752, reductionProjection6404, reductionProjection6502, oldProjection1484] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6503 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1605⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1605 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6503 (1 : Fin 5)) = (normalNode3248).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4752 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6503 (2 : Fin 5)) = canonicalInput6261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6404 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6261 hH))).trans (reductionSound6404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6503 (3 : Fin 5)) = (normalNode3297).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6502 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6503 (4 : Fin 5)) = canonicalInput6264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1484 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6503 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6264 hH))).trans (oldProjectionSound1484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3208).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6503 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3208).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6503 (j : Fin 5)))
      1 288 1440 5 ![1440, 288, 1440, 288, 720] ![1, 5, 1, 5, 2] reductionProjection6503 ![oldProjection1605, reductionProjection4752, reductionProjection6404, reductionProjection6502, oldProjection1484]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6504 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -1), (106, 8), (243, 8), (1225, 16), (1294, -24)]

def reductionPivot6504 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 1, -1], ![0, -4, 3, 1], ![2, 3, -4, -1]]

theorem reductionSound6504 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9124).moment H =
      Integer.Sparse.eval reductionProjection6504 (momentVector H) := by
  have heq : reductionPivot6504 = (fun u v => (normalNode9124).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9124).moment H = injectiveMoment H reductionPivot6504 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9124).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9124).entries)).symm
  have hshape : reductionPivot6504 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6504 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6504 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection208, reductionProjection6351, oldProjection249] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6504 (0 : Fin 3)) = canonicalInput10977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6504 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection208 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6504 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10977 hH))).trans (oldProjectionSound208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6504 (1 : Fin 3)) = canonicalInput23336.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6504 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6504 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23336 hH))).trans (reductionSound6351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6504 (2 : Fin 3)) = canonicalInput23342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6504 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6504 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23342 hH))).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9124).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6504 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9124).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6504 (j : Fin 3)))
      3 72 72 3 ![3, 1, 24] ![24, 72, 3] reductionProjection6504 ![oldProjection208, reductionProjection6351, oldProjection249]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6505 : Integer.Sparse (Fin 1613) := [(19, 16), (20, 1), (91, -48), (94, 6), (106, -16), (232, 48), (243, -64), (244, -32), (1225, -64), (1251, -3), (1294, 48)]

def reductionPivot6505 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound6505 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3271).moment H =
      Integer.Sparse.eval reductionProjection6505 (momentVector H) := by
  have heq : reductionPivot6505 = (fun u v => (normalNode3271).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3271).moment H = injectiveMoment H reductionPivot6505 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3271).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6505 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6505 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6505 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6504, oldProjection1075, reductionProjection2484, reductionProjection5661] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6505 (0 : Fin 4)) = canonicalInput9675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6505 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6504 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6505 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9675 hH))).trans (reductionSound6504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6505 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2990 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6505 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6505 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2990 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6505 (2 : Fin 4)) = canonicalInput6207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6505 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2484 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6505 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6207 hH))).trans (reductionSound2484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6505 (3 : Fin 4)) = canonicalInput6206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6505 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5661 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6505 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6206 hH))).trans (reductionSound5661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3271).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6505 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3271).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6505 (j : Fin 4)))
      2 288 288 2 ![72, 72, 144, 9] ![4, 4, 2, 32] reductionProjection6505 ![reductionProjection6504, oldProjection1075, reductionProjection2484, reductionProjection5661]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6506 : Integer.Sparse (Fin 1613) := [(1150, 1)]

theorem reductionSound6506 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1150).moment H =
      Integer.Sparse.eval reductionProjection6506 (momentVector H) := by
  have hc : coordinates (1150 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1150) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6506, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6507 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 2), (243, 8), (591, -72), (741, -72), (1150, -72), (1251, -1)]

def reductionPivot6507 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 0, 3, -3], ![1, -2, 1, 0], ![1, 1, -1, -1]]

theorem reductionSound6507 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3309).moment H =
      Integer.Sparse.eval reductionProjection6507 (momentVector H) := by
  have heq : reductionPivot6507 = (fun u v => (normalNode3309).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3309).moment H = injectiveMoment H reductionPivot6507 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3309).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6507 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6507 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6507 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6506, oldProjection583, oldProjection1075, reductionProjection5870] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6507 (0 : Fin 4)) = canonicalInput9707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6507 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6506 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6507 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9707 hH))).trans (reductionSound6506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6507 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node583⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6507 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection583 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6507 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6507 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2990 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6507 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6507 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2990 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6507 (3 : Fin 4)) = canonicalInput6295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6507 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5870 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6507 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5870 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6295 hH))).trans (reductionSound5870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3309).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6507 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3309).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6507 (j : Fin 4)))
      2 144 144 2 ![1, 1, 72, 1] ![144, 144, 2, 144] reductionProjection6507 ![reductionProjection6506, oldProjection583, oldProjection1075, reductionProjection5870]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6508 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -24), (42, 48), (91, 48), (94, 1), (105, 16), (106, 16), (232, -48), (241, 16), (243, 112), (244, 32), (591, 144), (686, -48), (698, 16), (700, 48), (704, 64), (741, 144), (1150, 144), (1225, 64), (1251, 9), (1294, -48)]

def reductionPivot6508 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound6508 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3210).moment H =
      Integer.Sparse.eval reductionProjection6508 (momentVector H) := by
  have heq : reductionPivot6508 = (fun u v => (normalNode3210).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3210).moment H = injectiveMoment H reductionPivot6508 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3210).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6508 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6508 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 72, 144, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6508 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2607, reductionProjection6505, oldProjection1075, reductionProjection6507, reductionProjection2606] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6508 (0 : Fin 5)) = (normalNode1408).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2607 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2607 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6508 (1 : Fin 5)) = (normalNode3271).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6505 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6508 (2 : Fin 5)) = canonicalInput6286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6286 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6508 (3 : Fin 5)) = (normalNode3309).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6507 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6508 (4 : Fin 5)) = canonicalInput6287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2606 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6508 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6287 hH))).trans (reductionSound2606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3210).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6508 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3210).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6508 (j : Fin 5)))
      1 288 288 1 ![288, 288, 72, 144, 72] ![1, 1, 4, 2, 4] reductionProjection6508 ![reductionProjection2607, reductionProjection6505, oldProjection1075, reductionProjection6507, reductionProjection2606]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6509 : Integer.Sparse (Fin 1613) := [(734, 1)]

theorem reductionSound6509 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code734).moment H =
      Integer.Sparse.eval reductionProjection6509 (momentVector H) := by
  have hc : coordinates (734 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code734) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6509, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6510 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -2), (91, -32), (94, 1), (105, -16), (106, -16), (232, 48), (235, 48), (241, -16), (243, -32), (244, -48), (246, -16), (734, -144), (1225, -16), (1251, -1)]

def reductionPivot6510 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, 0, 0, -1]]

theorem reductionSound6510 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3273).moment H =
      Integer.Sparse.eval reductionProjection6510 (momentVector H) := by
  have heq : reductionPivot6510 = (fun u v => (normalNode3273).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3273).moment H = injectiveMoment H reductionPivot6510 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3273).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6510 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6510 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6510 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2483, reductionProjection6354, reductionProjection2489, reductionProjection6509] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6510 (0 : Fin 4)) = (normalNode7435).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6510 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2483 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6510 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6510 (1 : Fin 4)) = canonicalInput6374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6510 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6354 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6510 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6374 hH))).trans (reductionSound6354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6510 (2 : Fin 4)) = canonicalInput6209.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6510 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2489 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6510 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2489 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6209 hH))).trans (reductionSound2489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6510 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code734).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6510 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6510 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3273).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6510 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3273).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6510 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 1] ![32, 32, 2, 288] reductionProjection6510 ![reductionProjection2483, reductionProjection6354, reductionProjection2489, reductionProjection6509]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6511 : Integer.Sparse (Fin 1613) := [(745, 1)]

theorem reductionSound6511 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code745).moment H =
      Integer.Sparse.eval reductionProjection6511 (momentVector H) := by
  have hc : coordinates (745 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code745) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6511, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6512 : Integer.Sparse (Fin 1613) := [(737, 1)]

theorem reductionSound6512 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code737).moment H =
      Integer.Sparse.eval reductionProjection6512 (momentVector H) := by
  have hc : coordinates (737 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code737) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6512, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6513 : Integer.Sparse (Fin 1613) := [(94, 3), (243, -16), (591, -144), (700, -16), (737, -144), (745, -144), (1044, 48), (1052, 48), (1251, -1)]

def reductionPivot6513 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 2, -2, 0], ![1, -2, 1, 0]]

theorem reductionSound6513 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3310).moment H =
      Integer.Sparse.eval reductionProjection6513 (momentVector H) := by
  have heq : reductionPivot6513 = (fun u v => (normalNode3310).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3310).moment H = injectiveMoment H reductionPivot6513 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3310).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6513 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6513 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6513 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1321, reductionProjection6511, reductionProjection5870, reductionProjection6512] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6513 (0 : Fin 4)) = canonicalInput19656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6513 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1321 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6513 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19656 hH))).trans (oldProjectionSound1321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6513 (1 : Fin 4)) = canonicalInput6382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6513 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6511 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6513 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6382 hH))).trans (reductionSound6511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6513 (2 : Fin 4)) = canonicalInput6299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6513 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5870 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6513 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5870 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6299 hH))).trans (reductionSound5870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6513 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code737).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6513 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6512 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6513 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3310).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6513 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3310).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6513 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6513 ![oldProjection1321, reductionProjection6511, reductionProjection5870, reductionProjection6512]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6514 : Integer.Sparse (Fin 1613) := [(747, 1)]

theorem reductionSound6514 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code747).moment H =
      Integer.Sparse.eval reductionProjection6514 (momentVector H) := by
  have hc : coordinates (747 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code747) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6514, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6515 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, 5), (242, 48), (243, -64), (244, -32), (700, -48), (737, -144), (747, -144), (1060, 48), (1251, -2)]

def reductionPivot6515 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 2, -2, 0], ![1, -1, 1, -1]]

theorem reductionSound6515 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3311).moment H =
      Integer.Sparse.eval reductionProjection6515 (momentVector H) := by
  have heq : reductionPivot6515 = (fun u v => (normalNode3311).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3311).moment H = injectiveMoment H reductionPivot6515 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3311).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6515 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6515 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6515 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2611, reductionProjection6514, oldProjection1064, reductionProjection6512] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6515 (0 : Fin 4)) = (normalNode7474).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6515 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2611 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6515 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2611 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2611 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6515 (1 : Fin 4)) = canonicalInput6378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6515 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6514 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6515 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6378 hH))).trans (reductionSound6514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6515 (2 : Fin 4)) = canonicalInput6298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6515 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1064 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6515 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6298 hH))).trans (oldProjectionSound1064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6515 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code737).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6515 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6512 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6515 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3311).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6515 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3311).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6515 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 1] ![2, 288, 2, 288] reductionProjection6515 ![reductionProjection2611, reductionProjection6514, oldProjection1064, reductionProjection6512]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6516 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -12), (20, 4), (42, 32), (91, 32), (94, -5), (105, 32), (106, 16), (232, -48), (235, -48), (241, 32), (242, -48), (243, 128), (244, 96), (246, 16), (311, 144), (591, 144), (686, -48), (692, -48), (698, 16), (700, 96), (701, 32), (704, 16), (734, 144), (737, 288), (745, 144), (747, 144), (1044, -48), (1052, -48), (1060, -48), (1225, 16), (1251, 3)]

def reductionPivot6516 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 0, 3, -3], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6516 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3211).moment H =
      Integer.Sparse.eval reductionProjection6516 (momentVector H) := by
  have heq : reductionPivot6516 = (fun u v => (normalNode3211).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3211).moment H = injectiveMoment H reductionPivot6516 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3211).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6516 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6516 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 72, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6516 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2603, reductionProjection6510, reductionProjection2606, reductionProjection6513, reductionProjection6515] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6516 (0 : Fin 5)) = (normalNode1414).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2603 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6516 (1 : Fin 5)) = (normalNode3273).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6510 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6510 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6510 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6516 (2 : Fin 5)) = canonicalInput6287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2606 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6287 hH))).trans (reductionSound2606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6516 (3 : Fin 5)) = (normalNode3310).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6513 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6516 (4 : Fin 5)) = (normalNode3311).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6515 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6516 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3211).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6516 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3211).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6516 (j : Fin 5)))
      1 288 288 1 ![288, 288, 72, 288, 288] ![1, 1, 4, 1, 1] reductionProjection6516 ![reductionProjection2603, reductionProjection6510, reductionProjection2606, reductionProjection6513, reductionProjection6515]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6517 : Integer.Sparse (Fin 1613) := [(1290, 1)]

theorem reductionSound6517 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1290).moment H =
      Integer.Sparse.eval reductionProjection6517 (momentVector H) := by
  have hc : coordinates (1290 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1290) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6517, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6518 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 3), (94, 2), (108, 16), (1251, 3), (1290, -48)]

def reductionPivot6518 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 1, -1], ![1, -1, 3, -3], ![-1, 2, -4, 3]]

theorem reductionSound6518 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11169).moment H =
      Integer.Sparse.eval reductionProjection6518 (momentVector H) := by
  have heq : reductionPivot6518 = (fun u v => (normalNode11169).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11169).moment H = injectiveMoment H reductionPivot6518 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11169).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11169).entries)).symm
  have hshape : reductionPivot6518 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6518 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6518 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection251, oldProjection241, reductionProjection6517] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6518 (0 : Fin 3)) = canonicalInput26910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6518 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection251 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6518 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26910 hH))).trans (oldProjectionSound251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6518 (1 : Fin 3)) = canonicalInput33348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6518 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection241 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6518 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33348 hH))).trans (oldProjectionSound241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6518 (2 : Fin 3)) = canonicalInput33350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6518 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6518 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33350 hH))).trans (reductionSound6517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11169).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6518 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11169).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6518 (j : Fin 3)))
      3 144 144 3 ![48, 48, 1] ![3, 3, 144] reductionProjection6518 ![oldProjection251, oldProjection241, reductionProjection6517]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6519 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 8), (20, -7), (94, -2), (108, -32), (243, -16), (247, -16), (747, -144), (1251, -3), (1290, 48)]

def reductionPivot6519 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 3, -3]]

theorem reductionSound6519 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3317).moment H =
      Integer.Sparse.eval reductionProjection6519 (momentVector H) := by
  have heq : reductionPivot6519 = (fun u v => (normalNode3317).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3317).moment H = injectiveMoment H reductionPivot6519 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3317).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6519 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6519 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6519 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6518, reductionProjection6514, reductionProjection2418, oldProjection1298] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6519 (0 : Fin 4)) = canonicalInput9717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6519 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6518 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6519 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9717 hH))).trans (reductionSound6518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6519 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code747).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6519 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6514 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6519 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6519 (2 : Fin 4)) = canonicalInput6324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6519 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6519 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6324 hH))).trans (reductionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6519 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3006 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6519 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1298 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6519 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3006 hH))).trans (oldProjectionSound1298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3317).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6519 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3317).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6519 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 144] ![2, 288, 2, 2] reductionProjection6519 ![reductionProjection6518, reductionProjection6514, reductionProjection2418, oldProjection1298]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6520 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (17, 60), (19, -160), (20, 35), (94, 85), (105, 80), (108, 160), (232, -480), (235, -240), (241, 80), (243, 240), (247, 80), (686, -480), (692, -240), (698, 80), (700, 80), (704, 160), (747, 720), (1251, 75), (1290, -240), (1294, -480)]

def reductionPivot6520 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound6520 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3212).moment H =
      Integer.Sparse.eval reductionProjection6520 (momentVector H) := by
  have heq : reductionPivot6520 = (fun u v => (normalNode3212).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3212).moment H = injectiveMoment H reductionPivot6520 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3212).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6520 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6520 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6520 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2419, reductionProjection2418, reductionProjection2418, reductionProjection6356, reductionProjection6519] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6520 (0 : Fin 5)) = (normalNode1433).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2419 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6520 (1 : Fin 5)) = canonicalInput6229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6229 hH))).trans (reductionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6520 (2 : Fin 5)) = canonicalInput6307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6307 hH))).trans (reductionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6520 (3 : Fin 5)) = (normalNode3315).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6356 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6520 (4 : Fin 5)) = canonicalInput6313.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6519 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6520 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6313 hH))).trans (reductionSound6519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3212).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6520 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3212).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6520 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 144, 288, 288] ![1, 10, 10, 5, 5] reductionProjection6520 ![reductionProjection2419, reductionProjection2418, reductionProjection2418, reductionProjection6356, reductionProjection6519]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6521 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -60), (19, -60), (20, 30), (93, 60), (94, -5), (108, 160), (243, 320), (247, 160), (698, 80), (704, 240), (750, 720), (1047, -240), (1057, -240), (1061, -240), (1214, -240), (1219, -240), (1223, -240), (1225, 80), (1226, 80), (1251, 40)]

def reductionPivot6521 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound6521 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3213).moment H =
      Integer.Sparse.eval reductionProjection6521 (momentVector H) := by
  have heq : reductionPivot6521 = (fun u v => (normalNode3213).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3213).moment H = injectiveMoment H reductionPivot6521 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3213).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6521 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6521 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6521 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1551, oldProjection1178, reductionProjection6395, reductionProjection6417, oldProjection1935] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6521 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1655 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1551 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1655 hH))).trans (oldProjectionSound1551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6521 (1 : Fin 5)) = canonicalInput6230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1178 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6230 hH))).trans (oldProjectionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6521 (2 : Fin 5)) = canonicalInput6308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6395 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6395 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6308 hH))).trans (reductionSound6395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6521 (3 : Fin 5)) = (normalNode3320).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6417 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6417 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6521 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1935⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1935 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6521 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1935 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3213).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6521 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3213).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6521 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 1440, 288, 144] ![1, 10, 1, 5, 10] reductionProjection6521 ![oldProjection1551, oldProjection1178, reductionProjection6395, reductionProjection6417, oldProjection1935]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6522 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -260), (20, 50), (37, -480), (38, -480), (94, 115), (105, 80), (108, 80), (241, 240), (243, 320), (247, 160), (698, 320), (700, 80), (704, 480), (741, 720), (1061, -240), (1214, -240), (1226, 80), (1251, 95)]

def reductionPivot6522 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound6522 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3215).moment H =
      Integer.Sparse.eval reductionProjection6522 (momentVector H) := by
  have heq : reductionPivot6522 = (fun u v => (normalNode3215).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3215).moment H = injectiveMoment H reductionPivot6522 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3215).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6522 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6522 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 72, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6522 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1563, oldProjection1031, reductionProjection2606, reductionProjection6425, oldProjection1938] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6522 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1660 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1563 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1660 hH))).trans (oldProjectionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6522 (1 : Fin 5)) = canonicalInput6232.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1031 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6232 hH))).trans (oldProjectionSound1031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6522 (2 : Fin 5)) = canonicalInput6311.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2606 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6311 hH))).trans (reductionSound2606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6522 (3 : Fin 5)) = (normalNode3325).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6425 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6522 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1938⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1938 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6522 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3215).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6522 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3215).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6522 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 72, 288, 144] ![1, 10, 20, 5, 10] reductionProjection6522 ![oldProjection1563, oldProjection1031, reductionProjection2606, reductionProjection6425, oldProjection1938]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6523 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -48), (20, 4), (94, 22), (228, -96), (231, -96), (238, -96), (241, 176), (243, 128), (244, 16), (247, 128), (698, 112), (700, 16), (704, 32), (1250, 24), (1251, 5), (1323, -96)]

def reductionPivot6523 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound6523 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3221).moment H =
      Integer.Sparse.eval reductionProjection6523 (momentVector H) := by
  have heq : reductionPivot6523 = (fun u v => (normalNode3221).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3221).moment H = injectiveMoment H reductionPivot6523 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3221).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6523 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6523 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6523 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1585, oldProjection2768, oldProjection2768, reductionProjection707, oldProjection1458] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6523 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1678 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1585 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1678 hH))).trans (oldProjectionSound1585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6523 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2958 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2768 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2958 hH))).trans (oldProjectionSound2768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6523 (2 : Fin 5)) = canonicalInput6326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2768 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6326 hH))).trans (oldProjectionSound2768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6523 (3 : Fin 5)) = (normalNode3327).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection707 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection707 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6523 (4 : Fin 5)) = canonicalInput6335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1458 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6523 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6335 hH))).trans (oldProjectionSound1458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3221).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6523 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3221).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6523 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 1440, 288, 1440] ![2, 1, 1, 5, 1] reductionProjection6523 ![oldProjection1585, oldProjection2768, oldProjection2768, reductionProjection707, oldProjection1458]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6524 : Integer.Sparse (Fin 1613) := [(19, 20), (20, -3), (94, -1), (241, -16), (243, -48), (244, -16), (247, -16), (741, -144), (1052, 48), (1053, 48), (1061, 48), (1219, 48), (1226, -16), (1251, -6)]

def reductionPivot6524 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -2, 4], ![0, 1, 2, -3], ![1, -2, 1, 0], ![1, 0, -1, 0]]

theorem reductionSound6524 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3330).moment H =
      Integer.Sparse.eval reductionProjection6524 (momentVector H) := by
  have heq : reductionPivot6524 = (fun u v => (normalNode3330).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3330).moment H = injectiveMoment H reductionPivot6524 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3330).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6524 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6524 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6524 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1067, reductionProjection867, oldProjection1082, oldProjection583] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6524 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4430 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6524 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1067 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6524 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4430 hH))).trans (oldProjectionSound1067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6524 (1 : Fin 4)) = canonicalInput6362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6524 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection867 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6524 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6362 hH))).trans (reductionSound867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6524 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3029 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6524 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1082 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6524 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3029 hH))).trans (oldProjectionSound1082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6524 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node583⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6524 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection583 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6524 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3330).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6524 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3330).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6524 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection6524 ![oldProjection1067, reductionProjection867, oldProjection1082, oldProjection583]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6525 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -100), (20, 35), (94, -5), (241, 400), (243, 640), (244, 240), (247, 160), (698, 320), (700, 240), (704, 320), (741, 720), (1052, -480), (1053, -480), (1061, -480), (1219, -240), (1226, 80), (1251, -5)]

def reductionPivot6525 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound6525 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3222).moment H =
      Integer.Sparse.eval reductionProjection6525 (momentVector H) := by
  have heq : reductionPivot6525 = (fun u v => (normalNode3222).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3222).moment H = injectiveMoment H reductionPivot6525 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3222).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6525 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6525 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6525 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1605, reductionProjection6404, reductionProjection1950, reductionProjection6524, oldProjection1467] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6525 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1684 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1605 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1684 hH))).trans (oldProjectionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6525 (1 : Fin 5)) = canonicalInput6261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6404 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6261 hH))).trans (reductionSound6404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6525 (2 : Fin 5)) = canonicalInput6327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1950 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6327 hH))).trans (reductionSound1950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6525 (3 : Fin 5)) = (normalNode3330).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6524 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6525 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3010 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1467 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6525 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3010 hH))).trans (oldProjectionSound1467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3222).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6525 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3222).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6525 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 288, 288] ![1, 1, 5, 5, 5] reductionProjection6525 ![oldProjection1605, reductionProjection6404, reductionProjection1950, reductionProjection6524, oldProjection1467]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6526 : Integer.Sparse (Fin 1613) := [(19, -4), (20, -2), (94, -3), (243, -48), (698, -16), (704, -32), (750, -144), (1057, 48), (1223, 48), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot6526 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -2, 4], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound6526 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3228).moment H =
      Integer.Sparse.eval reductionProjection6526 (momentVector H) := by
  have heq : reductionPivot6526 = (fun u v => (normalNode3228).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3228).moment H = injectiveMoment H reductionPivot6526 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3228).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6526 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6526 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6526 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1278, oldProjection1178, oldProjection584, oldProjection1275] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6526 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1715 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6526 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1278 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6526 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1715 hH))).trans (oldProjectionSound1278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6526 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3014 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6526 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1178 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6526 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3014 hH))).trans (oldProjectionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6526 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node584⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6526 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection584 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6526 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6526 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3036 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6526 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1275 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6526 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3036 hH))).trans (oldProjectionSound1275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3228).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6526 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3228).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6526 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection6526 ![oldProjection1278, oldProjection1178, oldProjection584, oldProjection1275]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6527 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -8), (19, -32), (20, 2), (33, -48), (88, 16), (94, 19), (104, 128), (105, 32), (236, -48), (241, 80), (243, 96), (247, 48), (694, -144), (698, 80), (704, 64), (728, 144), (729, 288), (731, 144), (775, 144), (1226, 16), (1251, 6)]

def reductionPivot6527 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -2, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 1, -2]]

theorem reductionSound6527 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3231).moment H =
      Integer.Sparse.eval reductionProjection6527 (momentVector H) := by
  have heq : reductionPivot6527 = (fun u v => (normalNode3231).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3231).moment H = injectiveMoment H reductionPivot6527 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3231).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6527 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6527 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6527 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3864, reductionProjection6465, reductionProjection2303, reductionProjection2303, reductionProjection6460] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6527 (0 : Fin 5)) = (normalNode3516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3864 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6527 (1 : Fin 5)) = (normalNode3252).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6465 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6527 (2 : Fin 5)) = canonicalInput6166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2303 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6166 hH))).trans (reductionSound2303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6527 (3 : Fin 5)) = (normalNode3240).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2303 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6527 (4 : Fin 5)) = (normalNode3238).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6460 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6527 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6460 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6460 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3231).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6527 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3231).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6527 (j : Fin 5)))
      1 288 1440 5 ![1440, 288, 1440, 1440, 288] ![1, 5, 1, 1, 5] reductionProjection6527 ![reductionProjection3864, reductionProjection6465, reductionProjection2303, reductionProjection2303, reductionProjection6460]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

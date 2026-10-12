import NoFourMUBs.Step2.SOS.Canonical061
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical101
import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical104
import NoFourMUBs.Step2.SOS.Canonical105
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical429
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions163
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions201
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions206
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions211
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical101
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical312
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical57
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical92
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical95
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical97
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6784 : Integer.Sparse (Fin 1613) := [(0, 1), (90, -80), (94, -10), (697, 240), (698, -240), (700, -400), (704, -80), (1059, -240), (1251, 5)]

def reductionPivot6784 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 2, -3, 1], ![1, 0, 0, -1]]

theorem reductionSound6784 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8973).moment H =
      Integer.Sparse.eval reductionProjection6784 (momentVector H) := by
  have heq : reductionPivot6784 = (fun u v => (normalNode8973).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8973).moment H = injectiveMoment H reductionPivot6784 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8973).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6784 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6784 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6784 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection843, oldProjection1015, oldProjection1053, oldProjection1056] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6784 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node843⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6784 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection843 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6784 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6784 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6784 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1015 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6784 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6784 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6784 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1053 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6784 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1053 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6784 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6784 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1056 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6784 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8973).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6784 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8973).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6784 (j : Fin 4)))
      2 1440 1440 2 ![9, 72, 72, 720] ![160, 20, 20, 2] reductionProjection6784 ![oldProjection843, oldProjection1015, oldProjection1053, oldProjection1056]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6785 : Integer.Sparse (Fin 1613) := [(0, -2), (90, 80), (94, 95), (489, 1440), (559, 720), (697, -720), (698, 960), (700, 640), (704, 80), (761, 720), (801, 1440), (1059, 560), (1219, -240), (1221, -240), (1227, 160), (1251, -155)]

def reductionPivot6785 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound6785 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3443).moment H =
      Integer.Sparse.eval reductionProjection6785 (momentVector H) := by
  have heq : reductionPivot6785 = (fun u v => (normalNode3443).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3443).moment H = injectiveMoment H reductionPivot6785 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3443).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6785 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6785 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6785 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1641, reductionProjection3016, reductionProjection6784, reductionProjection2970, oldProjection2605] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6785 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1641⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1641 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6785 (1 : Fin 5)) = (normalNode3374).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3016 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6785 (2 : Fin 5)) = canonicalInput6527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6784 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6527 hH))).trans (reductionSound6784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6785 (3 : Fin 5)) = (normalNode3485).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2970 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6785 (4 : Fin 5)) = canonicalInput6543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2605 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6785 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6543 hH))).trans (oldProjectionSound2605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3443).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6785 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3443).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6785 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 720, 720] ![1, 2, 1, 2, 2] reductionProjection6785 ![oldProjection1641, reductionProjection3016, reductionProjection6784, reductionProjection2970, oldProjection2605]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6786 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -8), (76, -48), (81, -96), (94, 15), (241, 16), (247, 32), (433, 288), (555, 144), (691, -48), (697, -48), (698, 96), (758, 144), (807, 288), (808, 288), (1050, -48), (1052, -144), (1059, 48), (1221, -48), (1251, -12)]

def reductionPivot6786 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound6786 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3444).moment H =
      Integer.Sparse.eval reductionProjection6786 (momentVector H) := by
  have heq : reductionPivot6786 = (fun u v => (normalNode3444).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3444).moment H = injectiveMoment H reductionPivot6786 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3444).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6786 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6786 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6786 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1642, reductionProjection2744, oldProjection2803, reductionProjection2670, reductionProjection5247] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6786 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1642⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6786 (1 : Fin 5)) = (normalNode3375).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2744 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6786 (2 : Fin 5)) = canonicalInput6538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2803 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6538 hH))).trans (oldProjectionSound2803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6786 (3 : Fin 5)) = (normalNode3491).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2670 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6786 (4 : Fin 5)) = canonicalInput6548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5247 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6786 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6548 hH))).trans (reductionSound5247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3444).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6786 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3444).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6786 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 288, 1440, 72] ![1, 1, 5, 1, 20] reductionProjection6786 ![oldProjection1642, reductionProjection2744, oldProjection2803, reductionProjection2670, reductionProjection5247]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6787 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -5), (94, -45), (698, 320), (700, 560), (759, 180), (1052, -120), (1059, 180), (1251, -40)]

def reductionPivot6787 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound6787 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode3445).moment H =
      Integer.Sparse.eval reductionProjection6787 (momentVector H) := by
  have heq : reductionPivot6787 = (fun u v => (normalNode3445).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3445).moment H = injectiveMoment H reductionPivot6787 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3445).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6787 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6787 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 36, 1440, 360, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6787 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1644, reductionProjection5814, reductionProjection3065, oldProjection1720, oldProjection1720] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6787 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1644⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1644 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1644 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6787 (1 : Fin 5)) = (normalNode3378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5814 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6787 (2 : Fin 5)) = canonicalInput6545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6545 hH))).trans (reductionSound3065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6787 (3 : Fin 5)) = canonicalInput6552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1720 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6552 hH))).trans (oldProjectionSound1720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6787 (4 : Fin 5)) = canonicalInput6553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1720 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6787 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6553 hH))).trans (oldProjectionSound1720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3445).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6787 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3445).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6787 (j : Fin 5)))
      1 360 1440 4 ![1440, 36, 1440, 360, 360] ![1, 40, 1, 4, 4] reductionProjection6787 ![oldProjection1644, reductionProjection5814, reductionProjection3065, oldProjection1720, oldProjection1720]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6788 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -8), (76, -96), (79, -48), (94, -4), (241, 16), (423, 144), (691, -48), (694, -48), (698, 32), (762, 144), (775, 144), (1058, -48), (1226, 16), (1251, -3)]

def reductionPivot6788 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 0, -2]]

theorem reductionSound6788 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3447).moment H =
      Integer.Sparse.eval reductionProjection6788 (momentVector H) := by
  have heq : reductionPivot6788 = (fun u v => (normalNode3447).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3447).moment H = injectiveMoment H reductionPivot6788 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3447).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6788 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6788 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 144, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6788 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1646, reductionProjection2207, oldProjection1296, oldProjection1296, reductionProjection3864] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6788 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1646⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1646 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6788 (1 : Fin 5)) = (normalNode3388).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6788 (2 : Fin 5)) = canonicalInput6562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1296 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6562 hH))).trans (oldProjectionSound1296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6788 (3 : Fin 5)) = canonicalInput6572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1296 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6572 hH))).trans (oldProjectionSound1296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6788 (4 : Fin 5)) = (normalNode3516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3864 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6788 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3447).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6788 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3447).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6788 (j : Fin 5)))
      1 288 1440 5 ![720, 288, 144, 144, 1440] ![2, 5, 10, 10, 1] reductionProjection6788 ![oldProjection1646, reductionProjection2207, oldProjection1296, oldProjection1296, reductionProjection3864]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6789 : Integer.Sparse (Fin 1613) := [(76, -48), (79, -48), (81, -48), (90, 32), (94, 3), (241, 48), (243, 32), (426, 288), (698, 144), (700, 48), (763, 144), (1055, -48), (1058, -96), (1059, 48), (1226, 80), (1227, 48), (1251, -9)]

def reductionPivot6789 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1]]

theorem reductionSound6789 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3448).moment H =
      Integer.Sparse.eval reductionProjection6789 (momentVector H) := by
  have heq : reductionPivot6789 = (fun u v => (normalNode3448).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3448).moment H = injectiveMoment H reductionPivot6789 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3448).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6789 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6789 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 18, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6789 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1647, reductionProjection302, oldProjection946, reductionProjection6740, reductionProjection3040] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6789 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1647 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6789 (1 : Fin 5)) = (normalNode3390).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection302 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6789 (2 : Fin 5)) = canonicalInput6563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection946 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6563 hH))).trans (oldProjectionSound946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6789 (3 : Fin 5)) = canonicalInput6573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6740 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6740 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6573 hH))).trans (reductionSound6740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6789 (4 : Fin 5)) = canonicalInput6575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6789 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6575 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3448).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6789 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3448).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6789 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 720, 18, 288] ![1, 1, 2, 80, 5] reductionProjection6789 ![oldProjection1647, reductionProjection302, oldProjection946, reductionProjection6740, reductionProjection3040]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6790 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -20), (76, -240), (79, -240), (81, -720), (90, 80), (94, 105), (241, 160), (247, 80), (433, 720), (697, -720), (698, 960), (700, 160), (704, 80), (767, 720), (1058, -240), (1226, 400), (1227, 160), (1251, -20)]

def reductionPivot6790 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound6790 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3449).moment H =
      Integer.Sparse.eval reductionProjection6790 (momentVector H) := by
  have heq : reductionPivot6790 = (fun u v => (normalNode3449).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3449).moment H = injectiveMoment H reductionPivot6790 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3449).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6790 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6790 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 720, 360, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6790 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1648, reductionProjection2274, oldProjection1003, oldProjection1643, oldProjection2719] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6790 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1648 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6790 (1 : Fin 5)) = (normalNode3391).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6790 (2 : Fin 5)) = canonicalInput6565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1003 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6565 hH))).trans (oldProjectionSound1003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6790 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3068 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1643 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3068 hH))).trans (oldProjectionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6790 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3070 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2719 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6790 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3070 hH))).trans (oldProjectionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3449).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6790 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3449).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6790 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 720, 360, 1440] ![10, 1, 2, 4, 1] reductionProjection6790 ![oldProjection1648, reductionProjection2274, oldProjection1003, oldProjection1643, oldProjection2719]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6791 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -10), (76, -240), (79, -120), (81, -240), (94, 25), (241, 120), (423, 360), (565, 720), (691, -120), (698, 600), (762, 360), (775, 720), (808, 720), (1052, -120), (1055, -240), (1058, -120), (1059, 80), (1226, 160), (1227, 240), (1251, -80)]

def reductionPivot6791 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound6791 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3450).moment H =
      Integer.Sparse.eval reductionProjection6791 (momentVector H) := by
  have heq : reductionPivot6791 = (fun u v => (normalNode3450).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3450).moment H = injectiveMoment H reductionPivot6791 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3450).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6791 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6791 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6791 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1654, reductionProjection2207, oldProjection2812, oldProjection1944, oldProjection1944] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6791 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6791 (1 : Fin 5)) = canonicalInput6468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6468 hH))).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6791 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3071 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2812 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3071 hH))).trans (oldProjectionSound2812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6791 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1944 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6791 (4 : Fin 5)) = canonicalInput6582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1944 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6791 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6582 hH))).trans (oldProjectionSound1944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3450).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6791 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3450).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6791 (j : Fin 5)))
      1 720 1440 2 ![1440, 288, 1440, 1440, 1440] ![1, 5, 1, 1, 1] reductionProjection6791 ![oldProjection1654, reductionProjection2207, oldProjection2812, oldProjection1944, oldProjection1944]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6792 : Integer.Sparse (Fin 1613) := [(0, 6), (76, -240), (79, -240), (81, -720), (90, 80), (94, 75), (243, 80), (426, 2160), (434, 720), (565, 720), (698, 1200), (700, 80), (763, 720), (1058, -720), (1219, -240), (1226, 880), (1227, 560), (1251, -135)]

def reductionPivot6792 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound6792 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3452).moment H =
      Integer.Sparse.eval reductionProjection6792 (momentVector H) := by
  have heq : reductionPivot6792 = (fun u v => (normalNode3452).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3452).moment H = injectiveMoment H reductionPivot6792 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3452).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6792 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6792 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 1440, 720, 72, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6792 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1655, reductionProjection302, oldProjection2750, oldProjection1655, reductionProjection4810] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6792 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6792 (1 : Fin 5)) = canonicalInput6469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection302 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6469 hH))).trans (reductionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6792 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3073 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3073 hH))).trans (oldProjectionSound2750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6792 (3 : Fin 5)) = canonicalInput6583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1655 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6583 hH))).trans (oldProjectionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6792 (4 : Fin 5)) = canonicalInput6584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4810 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6792 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6584 hH))).trans (reductionSound4810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3452).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6792 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3452).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6792 (j : Fin 5)))
      1 1440 1440 1 ![72, 1440, 720, 72, 1440] ![20, 1, 2, 20, 1] reductionProjection6792 ![oldProjection1655, reductionProjection302, oldProjection2750, oldProjection1655, reductionProjection4810]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6793 : Integer.Sparse (Fin 1613) := [(774, 1)]

theorem reductionSound6793 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code774).moment H =
      Integer.Sparse.eval reductionProjection6793 (momentVector H) := by
  have hc : coordinates (774 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code774) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6793, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6794 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (691, 48), (728, -144), (774, -144), (775, -144), (1052, 48), (1251, 1)]

def reductionPivot6794 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -2, 0], ![2, -1, 2, -3]]

theorem reductionSound6794 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3498).moment H =
      Integer.Sparse.eval reductionProjection6794 (momentVector H) := by
  have heq : reductionPivot6794 = (fun u v => (normalNode3498).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3498).moment H = injectiveMoment H reductionPivot6794 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3498).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6794 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6794 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6794 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6459, oldProjection1376, reductionProjection6793, oldProjection588] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6794 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code728).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6794 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6459 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6794 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6459 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6794 (1 : Fin 4)) = canonicalInput6550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6794 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1376 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6794 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6550 hH))).trans (oldProjectionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6794 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code774).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6794 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6793 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6794 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6794 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6794 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6794 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3498).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6794 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3498).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6794 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection6794 ![reductionProjection6459, oldProjection1376, reductionProjection6793, oldProjection588]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6795 : Integer.Sparse (Fin 1613) := [(235, -1), (691, -1), (1057, -1)]

def reductionPivot6795 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, 2, -2], ![4, -2, 0, -2], ![-3, 2, -2, 3]]

theorem reductionSound6795 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode10929).moment H =
      Integer.Sparse.eval reductionProjection6795 (momentVector H) := by
  have heq : reductionPivot6795 = (fun u v => (normalNode10929).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10929).moment H = injectiveMoment H reductionPivot6795 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10929).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10929).entries)).symm
  have hshape : reductionPivot6795 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6795 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6795 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection211, oldProjection163, reductionProjection1729] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6795 (0 : Fin 3)) = canonicalInput22420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6795 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6795 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22420 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6795 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9993 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6795 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6795 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9993 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6795 (2 : Fin 3)) = canonicalInput31817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6795 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1729 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6795 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31817 hH))).trans (reductionSound1729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10929).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6795 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10929).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6795 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection6795 ![oldProjection211, oldProjection163, reductionProjection1729]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6796 : Integer.Sparse (Fin 1613) := [(35, -1), (691, -2)]

def reductionPivot6796 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 2, -3], ![3, -2, 0, -1], ![-3, 2, -2, 3]]

theorem reductionSound6796 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode11194).moment H =
      Integer.Sparse.eval reductionProjection6796 (momentVector H) := by
  have heq : reductionPivot6796 = (fun u v => (normalNode11194).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11194).moment H = injectiveMoment H reductionPivot6796 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11194).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11194).entries)).symm
  have hshape : reductionPivot6796 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6796 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6796 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection163, oldProjection163, reductionProjection238] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6796 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9993 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6796 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6796 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9993 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6796 (1 : Fin 3)) = canonicalInput33876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6796 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6796 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33876 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6796 (2 : Fin 3)) = canonicalInput33877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6796 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection238 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6796 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33877 hH))).trans (reductionSound238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11194).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6796 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11194).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6796 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection6796 ![oldProjection163, oldProjection163, reductionProjection238]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6797 : Integer.Sparse (Fin 1613) := [(35, 1), (235, 1), (691, 1), (1050, 1), (1057, 1), (1058, 1)]

def reductionPivot6797 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -2, 3, -3]]

theorem reductionSound6797 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode3569).moment H =
      Integer.Sparse.eval reductionProjection6797 (momentVector H) := by
  have heq : reductionPivot6797 = (fun u v => (normalNode3569).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3569).moment H = injectiveMoment H reductionPivot6797 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3569).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6797 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6797 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6797 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6795, oldProjection163, reductionProjection6796, oldProjection1322] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6797 (0 : Fin 4)) = canonicalInput6263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6797 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6795 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6797 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6263 hH))).trans (reductionSound6795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6797 (1 : Fin 4)) = canonicalInput6673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6797 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection163 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6797 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6673 hH))).trans (oldProjectionSound163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6797 (2 : Fin 4)) = canonicalInput6700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6797 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6796 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6797 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6700 hH))).trans (reductionSound6796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6797 (3 : Fin 4)) = canonicalInput6701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6797 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1322 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6797 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6701 hH))).trans (oldProjectionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3569).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6797 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3569).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6797 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection6797 ![reductionProjection6795, oldProjection163, reductionProjection6796, oldProjection1322]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6798 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -20), (20, 5), (35, -240), (40, -240), (76, -240), (94, 20), (104, 160), (235, -240), (241, 160), (691, -960), (692, -480), (698, 240), (704, 160), (728, 720), (774, 720), (775, 720), (1050, -480), (1052, -720), (1057, -240), (1058, -480), (1221, -240), (1223, -480), (1226, 80), (1251, -15)]

def reductionPivot6798 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -1, 2, -3]]

theorem reductionSound6798 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3458).moment H =
      Integer.Sparse.eval reductionProjection6798 (momentVector H) := by
  have heq : reductionPivot6798 = (fun u v => (normalNode3458).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3458).moment H = injectiveMoment H reductionPivot6798 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3458).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6798 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6798 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 72, 288, 1440, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6798 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4581, reductionProjection6760, reductionProjection6794, reductionProjection6756, reductionProjection6797] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6798 (0 : Fin 5)) = (normalNode1955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4581 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6798 (1 : Fin 5)) = (normalNode3425).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6760 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6798 (2 : Fin 5)) = canonicalInput6636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6794 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6794 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6636 hH))).trans (reductionSound6794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6798 (3 : Fin 5)) = canonicalInput6643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6643 hH))).trans (reductionSound6756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6798 (4 : Fin 5)) = (normalNode3569).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6797 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6798 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3458).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6798 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3458).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6798 (j : Fin 5)))
      1 1440 1440 1 ![288, 72, 288, 1440, 6] ![5, 20, 5, 1, 240] reductionProjection6798 ![reductionProjection4581, reductionProjection6760, reductionProjection6794, reductionProjection6756, reductionProjection6797]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6799 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5), (426, -720), (698, -80), (729, -720), (775, -720), (1058, 240), (1226, -80), (1251, 40)]

def reductionPivot6799 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, -1, 1, -2]]

theorem reductionSound6799 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3499).moment H =
      Integer.Sparse.eval reductionProjection6799 (momentVector H) := by
  have heq : reductionPivot6799 = (fun u v => (normalNode3499).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3499).moment H = injectiveMoment H reductionPivot6799 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3499).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6799 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6799 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6799 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection579, oldProjection1347, oldProjection588, oldProjection473] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6799 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node579⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6799 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection579 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6799 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6799 (1 : Fin 4)) = canonicalInput6551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6799 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6799 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6551 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6799 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6799 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6799 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6799 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3079 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6799 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection473 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6799 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3079 hH))).trans (oldProjectionSound473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3499).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6799 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3499).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6799 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection6799 ![oldProjection579, oldProjection1347, oldProjection588, oldProjection473]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6800 : Integer.Sparse (Fin 1613) := [(0, 1), (238, 240), (691, 240), (698, -160), (700, -80), (1050, 240), (1057, 240), (1059, -160), (1251, 15)]

def reductionPivot6800 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -2, 2, -2]]

theorem reductionSound6800 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3571).moment H =
      Integer.Sparse.eval reductionProjection6800 (momentVector H) := by
  have heq : reductionPivot6800 = (fun u v => (normalNode3571).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3571).moment H = injectiveMoment H reductionPivot6800 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3571).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6800 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6800 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6800 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection916, oldProjection212, oldProjection1322, oldProjection975] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6800 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2968 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6800 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection916 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6800 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2968 hH))).trans (oldProjectionSound916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6800 (1 : Fin 4)) = canonicalInput6675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6800 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection212 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6800 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6675 hH))).trans (oldProjectionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6800 (2 : Fin 4)) = canonicalInput6701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6800 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1322 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6800 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6701 hH))).trans (oldProjectionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6800 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3133 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6800 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection975 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6800 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3133 hH))).trans (oldProjectionSound975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3571).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6800 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3571).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6800 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 3, 720] ![480, 1440, 480, 2] reductionProjection6800 ![oldProjection916, oldProjection212, oldProjection1322, oldProjection975]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6801 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -10), (94, 5), (238, -120), (241, 120), (243, 80), (247, 40), (426, 360), (691, -120), (698, 320), (700, 80), (729, 360), (775, 360), (1050, -120), (1052, -120), (1057, -120), (1058, -360), (1059, 160), (1221, -120), (1223, -240), (1226, 120), (1227, 40), (1251, -10)]

def reductionPivot6801 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -1, 1, -2]]

theorem reductionSound6801 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3459).moment H =
      Integer.Sparse.eval reductionProjection6801 (momentVector H) := by
  have heq : reductionPivot6801 = (fun u v => (normalNode3459).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3459).moment H = injectiveMoment H reductionPivot6801 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3459).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6801 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6801 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6801 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4583, reductionProjection2657, reductionProjection6799, reductionProjection2645, reductionProjection6800] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6801 (0 : Fin 5)) = (normalNode1957).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4583 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6801 (1 : Fin 5)) = canonicalInput6497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2657 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6497 hH))).trans (reductionSound2657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6801 (2 : Fin 5)) = canonicalInput6637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6799 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6637 hH))).trans (reductionSound6799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6801 (3 : Fin 5)) = canonicalInput6644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2645 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6644 hH))).trans (reductionSound2645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6801 (4 : Fin 5)) = (normalNode3571).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6800 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6801 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3459).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6801 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3459).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6801 (j : Fin 5)))
      1 720 1440 2 ![1440, 720, 1440, 1440, 1440] ![1, 2, 1, 1, 1] reductionProjection6801 ![reductionProjection4583, reductionProjection2657, reductionProjection6799, reductionProjection2645, reductionProjection6800]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6802 : Integer.Sparse (Fin 1613) := [(731, -1), (775, -1), (780, -1), (781, -1)]

def reductionPivot6802 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -1, 3, -2], ![0, 2, -2, 0], ![2, -1, 1, -2]]

theorem reductionSound6802 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3527).moment H =
      Integer.Sparse.eval reductionProjection6802 (momentVector H) := by
  have heq : reductionPivot6802 = (fun u v => (normalNode3527).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3527).moment H = injectiveMoment H reductionPivot6802 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3527).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6802 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6802 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6802 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6464, oldProjection588, reductionProjection143, oldProjection589] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6802 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code731).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6802 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6802 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6802 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6802 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6802 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6802 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code780).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6802 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection143 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6802 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6802 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6802 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection589 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6802 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3527).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6802 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3527).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6802 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6802 ![reductionProjection6464, oldProjection588, reductionProjection143, oldProjection589]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6803 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (94, -20), (104, -80), (241, -80), (247, -80), (690, 240), (697, 240), (1251, 5)]

def reductionPivot6803 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -2, -1, 2]]

theorem reductionSound6803 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10853).moment H =
      Integer.Sparse.eval reductionProjection6803 (momentVector H) := by
  have heq : reductionPivot6803 = (fun u v => (normalNode10853).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10853).moment H = injectiveMoment H reductionPivot6803 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10853).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot6803 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6803 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6803 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1083, oldProjection1315, oldProjection1378, oldProjection169] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6803 (0 : Fin 4)) = canonicalInput20288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6803 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6803 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20288 hH))).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6803 (1 : Fin 4)) = canonicalInput27612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6803 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1315 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6803 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27612 hH))).trans (oldProjectionSound1315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6803 (2 : Fin 4)) = canonicalInput27695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6803 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1378 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6803 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1378 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27695 hH))).trans (oldProjectionSound1378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6803 (3 : Fin 4)) = canonicalInput27784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6803 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection169 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6803 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27784 hH))).trans (oldProjectionSound169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10853).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6803 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10853).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6803 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 720, 48] ![2, 10, 2, 30] reductionProjection6803 ![oldProjection1083, oldProjection1315, oldProjection1378, oldProjection169]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6804 : Integer.Sparse (Fin 1613) := [(788, 1)]

theorem reductionSound6804 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code788).moment H =
      Integer.Sparse.eval reductionProjection6804 (momentVector H) := by
  have hc : coordinates (788 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code788) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6804, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6805 : Integer.Sparse (Fin 1613) := [(691, 1), (736, -3), (788, -3), (789, -3), (1050, 1), (1058, 1)]

def reductionPivot6805 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, 0, 2, -2], ![0, 2, -2, 0], ![2, -2, 2, -2]]

theorem reductionSound6805 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode3573).moment H =
      Integer.Sparse.eval reductionProjection6805 (momentVector H) := by
  have heq : reductionPivot6805 = (fun u v => (normalNode3573).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3573).moment H = injectiveMoment H reductionPivot6805 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3573).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6805 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6805 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6805 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6592, oldProjection1322, reductionProjection6804, oldProjection591] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6805 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code736).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6805 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6592 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6805 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6592 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6805 (1 : Fin 4)) = canonicalInput6701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6805 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1322 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6805 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6701 hH))).trans (oldProjectionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6805 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code788).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6805 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6804 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6805 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6805 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node591⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6805 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection591 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6805 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3573).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6805 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3573).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6805 (j : Fin 4)))
      2 6 6 2 ![1, 3, 1, 1] ![6, 2, 6, 6] reductionProjection6805 ![reductionProjection6592, oldProjection1322, reductionProjection6804, oldProjection591]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6806 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (94, 30), (104, 80), (241, 160), (247, 80), (307, 1440), (427, 720), (458, 720), (690, -480), (691, -240), (697, -480), (698, 160), (731, 720), (736, 720), (775, 1440), (780, 720), (781, 720), (788, 720), (789, 1440), (1050, -240), (1052, -240), (1058, -240), (1221, -240), (1226, 80), (1251, -35)]

def reductionPivot6806 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 2, -2, 0], ![2, -1, 1, -2]]

theorem reductionSound6806 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3460).moment H =
      Integer.Sparse.eval reductionProjection6806 (momentVector H) := by
  have heq : reductionPivot6806 = (fun u v => (normalNode3460).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3460).moment H = injectiveMoment H reductionPivot6806 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3460).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6806 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6806 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 2, 1440, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6806 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4589, reductionProjection6761, reductionProjection6802, reductionProjection6803, reductionProjection6805] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6806 (0 : Fin 5)) = (normalNode1961).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4589 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6806 (1 : Fin 5)) = (normalNode3426).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6761 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6806 (2 : Fin 5)) = canonicalInput6638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6802 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6802 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6638 hH))).trans (reductionSound6802 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6806 (3 : Fin 5)) = canonicalInput6645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6803 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6645 hH))).trans (reductionSound6803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6806 (4 : Fin 5)) = (normalNode3573).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6805 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6806 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3460).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6806 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3460).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6806 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 2, 1440, 6] ![5, 5, 720, 1, 240] reductionProjection6806 ![reductionProjection4589, reductionProjection6761, reductionProjection6802, reductionProjection6803, reductionProjection6805]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6807 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, 10), (20, 10), (93, 60), (94, 15), (104, 80), (241, 120), (243, 40), (691, -240), (694, -120), (698, 120), (704, 80), (1052, -240), (1057, -120), (1058, -240), (1223, -240), (1226, 40), (1250, 60), (1251, 5)]

def reductionPivot6807 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]

theorem reductionSound6807 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3461).moment H =
      Integer.Sparse.eval reductionProjection6807 (momentVector H) := by
  have heq : reductionPivot6807 = (fun u v => (normalNode3461).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3461).moment H = injectiveMoment H reductionPivot6807 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3461).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6807 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6807 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6807 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1495, oldProjection1492, oldProjection1252, reductionProjection6756, reductionProjection6748] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6807 (0 : Fin 5)) = canonicalInput3931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1495 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3931 hH))).trans (oldProjectionSound1495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6807 (1 : Fin 5)) = canonicalInput6499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1492 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6499 hH))).trans (oldProjectionSound1492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6807 (2 : Fin 5)) = canonicalInput6641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1252 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6641 hH))).trans (oldProjectionSound1252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6807 (3 : Fin 5)) = canonicalInput6648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6648 hH))).trans (reductionSound6756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6807 (4 : Fin 5)) = (normalNode3579).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6748 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6807 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3461).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6807 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3461).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6807 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 720, 1440, 1440] ![1, 1, 2, 1, 1] reductionProjection6807 ![oldProjection1495, oldProjection1492, oldProjection1252, reductionProjection6756, reductionProjection6748]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6808 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -200), (20, 45), (94, 75), (104, 80), (241, 80), (243, 480), (698, 480), (700, 80), (704, 480), (798, 720), (1061, -240), (1214, -240), (1219, -240), (1223, -480), (1251, 50)]

def reductionPivot6808 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound6808 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3462).moment H =
      Integer.Sparse.eval reductionProjection6808 (momentVector H) := by
  have heq : reductionPivot6808 = (fun u v => (normalNode3462).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3462).moment H = injectiveMoment H reductionPivot6808 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3462).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6808 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6808 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6808 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1563, oldProjection1551, oldProjection1170, oldProjection1953, reductionProjection6753] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6808 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw1841 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1563 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1841 hH))).trans (oldProjectionSound1563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6808 (1 : Fin 5)) = canonicalInput6500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1551 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6500 hH))).trans (oldProjectionSound1551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6808 (2 : Fin 5)) = canonicalInput6642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6642 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6808 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1953⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1953 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6808 (4 : Fin 5)) = canonicalInput6649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6753 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6808 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6649 hH))).trans (reductionSound6753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3462).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6808 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3462).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6808 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 1440] ![1, 1, 2, 1, 1] reductionProjection6808 ![oldProjection1563, oldProjection1551, oldProjection1170, oldProjection1953, reductionProjection6753]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6809 : Integer.Sparse (Fin 1613) := [(805, 1)]

theorem reductionSound6809 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code805).moment H =
      Integer.Sparse.eval reductionProjection6809 (momentVector H) := by
  have hc : coordinates (805 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code805) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6809, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6810 : Integer.Sparse (Fin 1613) := [(744, -1), (803, -1), (804, -1), (805, -1)]

def reductionPivot6810 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, 1, 3, -4], ![1, -2, 1, 0], ![1, 1, -2, 0]]

theorem reductionSound6810 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3587).moment H =
      Integer.Sparse.eval reductionProjection6810 (momentVector H) := by
  have heq : reductionPivot6810 = (fun u v => (normalNode3587).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3587).moment H = injectiveMoment H reductionPivot6810 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3587).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6810 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6810 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6810 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6499, oldProjection599, oldProjection600, reductionProjection6809] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6810 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code744).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6810 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6810 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6810 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6810 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection599 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6810 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6810 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node600⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6810 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection600 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6810 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection600 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6810 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code805).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6810 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6809 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6810 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6809 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6809 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3587).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6810 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3587).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6810 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6810 ![reductionProjection6499, oldProjection599, oldProjection600, reductionProjection6809]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6811 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -260), (20, 35), (42, 240), (94, 90), (243, 240), (244, 240), (246, 80), (498, 720), (698, 240), (700, 800), (701, 960), (703, 80), (704, 880), (744, 720), (803, 720), (804, 1440), (805, 720), (1059, 80), (1251, 100)]

def reductionPivot6811 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, -1, 3], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 1, -2, 0]]

theorem reductionSound6811 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3463).moment H =
      Integer.Sparse.eval reductionProjection6811 (momentVector H) := by
  have heq : reductionPivot6811 = (fun u v => (normalNode3463).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3463).moment H = injectiveMoment H reductionPivot6811 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3463).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot6811 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6811 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 288, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6811 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4632, reductionProjection6771, reductionProjection6762, reductionProjection6810, reductionProjection6769] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6811 (0 : Fin 5)) = (normalNode1989).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4632 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6811 (1 : Fin 5)) = (normalNode3432).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6771 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6811 (2 : Fin 5)) = canonicalInput6646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6762 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6646 hH))).trans (reductionSound6762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6811 (3 : Fin 5)) = (normalNode3587).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6810 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6811 (4 : Fin 5)) = canonicalInput6659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6769 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6811 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6659 hH))).trans (reductionSound6769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3463).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6811 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3463).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6811 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 288, 2, 1440] ![10, 5, 5, 720, 1] reductionProjection6811 ![reductionProjection4632, reductionProjection6771, reductionProjection6762, reductionProjection6810, reductionProjection6769]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6812 : Integer.Sparse (Fin 1613) := [(784, 1)]

theorem reductionSound6812 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code784).moment H =
      Integer.Sparse.eval reductionProjection6812 (momentVector H) := by
  have hc : coordinates (784 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code784) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6812, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6813 : Integer.Sparse (Fin 1613) := [(745, -1), (784, -1), (796, -1), (806, -1)]

def reductionPivot6813 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 0, 3, -4]]

theorem reductionSound6813 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3588).moment H =
      Integer.Sparse.eval reductionProjection6813 (momentVector H) := by
  have heq : reductionPivot6813 = (fun u v => (normalNode3588).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3588).moment H = injectiveMoment H reductionPivot6813 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3588).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6813 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6813 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6813 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6511, reductionProjection6812, oldProjection595, oldProjection601] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6813 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code745).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6813 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6511 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6813 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6813 (1 : Fin 4)) = canonicalInput6777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6813 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6813 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6777 hH))).trans (reductionSound6812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6813 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3257 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6813 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection595 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6813 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3257 hH))).trans (oldProjectionSound595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6813 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6813 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection601 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6813 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3588).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6813 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3588).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6813 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6813 ![reductionProjection6511, reductionProjection6812, oldProjection595, oldProjection601]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6814 : Integer.Sparse (Fin 1613) := [(35, -3), (701, 2), (703, 2), (704, 2)]

def reductionPivot6814 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 3, -2], ![2, -3, 1, 0], ![-1, 4, -4, 1]]

theorem reductionSound6814 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode10889).moment H =
      Integer.Sparse.eval reductionProjection6814 (momentVector H) := by
  have heq : reductionPivot6814 = (fun u v => (normalNode10889).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10889).moment H = injectiveMoment H reductionPivot6814 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10889).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10889).entries)).symm
  have hshape : reductionPivot6814 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot6814 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6814 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection80, oldProjection80, reductionProjection238] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6814 (0 : Fin 3)) = canonicalInput19147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6814 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6814 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19147 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6814 (1 : Fin 3)) = canonicalInput27479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6814 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6814 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27479 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6814 (2 : Fin 3)) = canonicalInput27481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6814 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection238 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6814 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27481 hH))).trans (reductionSound238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10889).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6814 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10889).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot6814 (j : Fin 3)))
      3 9 9 3 ![3, 3, 1] ![3, 3, 9] reductionProjection6814 ![oldProjection80, oldProjection80, reductionProjection238]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6815 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (35, 48), (94, -3), (106, -16), (235, 48), (243, -32), (244, -32), (246, -16), (319, -144), (691, 48), (698, -16), (700, -32), (701, -32), (703, -32), (704, -48), (1251, -2)]

def reductionPivot6815 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, -1, 4, -4]]

theorem reductionSound6815 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3589).moment H =
      Integer.Sparse.eval reductionProjection6815 (momentVector H) := by
  have heq : reductionPivot6815 = (fun u v => (normalNode3589).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3589).moment H = injectiveMoment H reductionPivot6815 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3589).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot6815 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6815 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6815 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6604, reductionProjection6814, reductionProjection2530, oldProjection1313] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6815 (0 : Fin 4)) = canonicalInput6358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6815 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6604 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6815 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6358 hH))).trans (reductionSound6604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6815 (1 : Fin 4)) = canonicalInput6780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6815 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6814 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6815 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6780 hH))).trans (reductionSound6814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6815 (2 : Fin 4)) = canonicalInput6782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6815 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2530 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6815 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2530 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6782 hH))).trans (reductionSound2530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6815 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3261 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6815 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1313 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6815 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1313 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3261 hH))).trans (oldProjectionSound1313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3589).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6815 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3589).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6815 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 72] ![2, 32, 288, 4] reductionProjection6815 ![reductionProjection6604, reductionProjection6814, reductionProjection2530, oldProjection1313]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

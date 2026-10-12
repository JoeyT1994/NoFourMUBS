import NoFourMUBs.Step2.SOS.Canonical100
import NoFourMUBs.Step2.SOS.Canonical101
import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical106
import NoFourMUBs.Step2.SOS.Canonical114
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical156
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions023
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions091
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions140
import NoFourMUBs.Step2.SOS.Reductions145
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions181
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions198
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical104
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical90
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical95
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical96
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection6656 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 3), (243, -16), (449, -144), (757, -144), (804, -144), (1040, 48), (1223, 48), (1225, -16)]

def reductionPivot6656 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -2, 1, 1], ![0, 1, 3, -4], ![1, 1, -2, 0]]

theorem reductionSound6656 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3342).moment H =
      Integer.Sparse.eval reductionProjection6656 (momentVector H) := by
  have heq : reductionPivot6656 = (fun u v => (normalNode3342).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3342).moment H = injectiveMoment H reductionPivot6656 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3342).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6656 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6656 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6656 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1020, oldProjection600, oldProjection586, reductionProjection4507] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6656 (0 : Fin 4)) = canonicalInput19546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6656 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1020 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6656 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19546 hH))).trans (oldProjectionSound1020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6656 (1 : Fin 4)) = canonicalInput6790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6656 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection600 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6656 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection600 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6790 hH))).trans (oldProjectionSound600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6656 (2 : Fin 4)) = canonicalInput6429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6656 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection586 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6656 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6429 hH))).trans (oldProjectionSound586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6656 (3 : Fin 4)) = canonicalInput6422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6656 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4507 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6656 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6422 hH))).trans (reductionSound4507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3342).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6656 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3342).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6656 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection6656 ![oldProjection1020, oldProjection600, oldProjection586, reductionProjection4507]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6657 : Integer.Sparse (Fin 1613) := [(19, 2), (94, 1), (285, -72), (682, 24), (690, 24), (758, -72), (775, -72), (1251, 3)]

def reductionPivot6657 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -2, 1], ![2, 0, 1, -3]]

theorem reductionSound6657 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode3362).moment H =
      Integer.Sparse.eval reductionProjection6657 (momentVector H) := by
  have heq : reductionPivot6657 = (fun u v => (normalNode3362).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3362).moment H = injectiveMoment H reductionPivot6657 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3362).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot6657 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6657 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 72, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6657 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection588, oldProjection1303, oldProjection587, oldProjection448] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6657 (0 : Fin 4)) = canonicalInput10026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6657 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection588 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6657 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10026 hH))).trans (oldProjectionSound588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6657 (1 : Fin 4)) = canonicalInput6571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6657 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1303 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6657 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6571 hH))).trans (oldProjectionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6657 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node587⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6657 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection587 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6657 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6657 (3 : Fin 4)) = canonicalInput6432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6657 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection448 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6657 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6432 hH))).trans (oldProjectionSound448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3362).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6657 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3362).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6657 (j : Fin 4)))
      2 144 144 2 ![1, 72, 1, 1] ![144, 2, 144, 144] reductionProjection6657 ![oldProjection588, oldProjection1303, oldProjection587, oldProjection448]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6658 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, -15), (104, 40), (241, 120), (243, 80), (285, 360), (418, 360), (423, 360), (682, -120), (690, -120), (691, -240), (692, -120), (698, 120), (704, 40), (716, 360), (758, 720), (775, 360), (1050, -120), (1052, -720), (1053, -120), (1058, -120), (1221, -120), (1223, -120), (1226, 80), (1251, -15)]

def reductionPivot6658 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]

theorem reductionSound6658 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3344).moment H =
      Integer.Sparse.eval reductionProjection6658 (momentVector H) := by
  have heq : reductionPivot6658 = (fun u v => (normalNode3344).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3344).moment H = injectiveMoment H reductionPivot6658 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3344).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6658 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6658 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6658 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6308, oldProjection1629, reductionProjection6657, reductionProjection2719, oldProjection1632] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6658 (0 : Fin 5)) = (normalNode3129).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6308 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6658 (1 : Fin 5)) = canonicalInput6416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1629 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6416 hH))).trans (oldProjectionSound1629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6658 (2 : Fin 5)) = (normalNode3362).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6657 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6658 (3 : Fin 5)) = (normalNode3364).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6658 (4 : Fin 5)) = canonicalInput6433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6658 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6433 hH))).trans (oldProjectionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3344).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6658 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3344).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6658 (j : Fin 5)))
      1 720 1440 2 ![288, 1440, 144, 144, 1440] ![5, 1, 10, 10, 1] reductionProjection6658 ![reductionProjection6308, oldProjection1629, reductionProjection6657, reductionProjection2719, oldProjection1632]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6659 : Integer.Sparse (Fin 1613) := [(81, 3), (289, -9), (698, -2), (700, -2), (759, -9), (777, -9), (1059, -2)]

def reductionPivot6659 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, 1, -3], ![1, 0, -2, 1]]

theorem reductionSound6659 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode3377).moment H =
      Integer.Sparse.eval reductionProjection6659 (momentVector H) := by
  have heq : reductionPivot6659 = (fun u v => (normalNode3377).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3377).moment H = injectiveMoment H reductionPivot6659 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3377).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6659 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6659 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6659 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1235, reductionProjection5418, oldProjection451, reductionProjection4394] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6659 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6659 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6659 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6659 (1 : Fin 4)) = canonicalInput6798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6659 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5418 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6659 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6798 hH))).trans (reductionSound5418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6659 (2 : Fin 4)) = canonicalInput6458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6659 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6659 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6458 hH))).trans (oldProjectionSound451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6659 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code759).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6659 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6659 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3377).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6659 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3377).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6659 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection6659 ![oldProjection1235, reductionProjection5418, oldProjection451, reductionProjection4394]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6660 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -4), (38, -96), (81, -96), (94, 21), (241, 16), (243, 48), (244, 16), (289, 144), (427, 144), (479, 144), (698, 224), (700, 320), (701, 32), (704, 48), (717, 144), (759, 288), (777, 144), (1052, -96), (1053, -48), (1059, 144), (1061, -48), (1251, 6)]

def reductionPivot6660 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound6660 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3345).moment H =
      Integer.Sparse.eval reductionProjection6660 (momentVector H) := by
  have heq : reductionPivot6660 = (fun u v => (normalNode3345).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3345).moment H = injectiveMoment H reductionPivot6660 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3345).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6660 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6660 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 1440, 18, 36] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6660 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6319, oldProjection1668, oldProjection1702, reductionProjection6659, reductionProjection5814] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6660 (0 : Fin 5)) = (normalNode3136).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6319 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6319 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6660 (1 : Fin 5)) = canonicalInput6424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1668 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1668 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6424 hH))).trans (oldProjectionSound1668 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6660 (2 : Fin 5)) = canonicalInput6450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1702 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6450 hH))).trans (oldProjectionSound1702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6660 (3 : Fin 5)) = (normalNode3377).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6659 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6659 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6660 (4 : Fin 5)) = (normalNode3378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5814 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6660 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3345).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6660 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3345).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6660 (j : Fin 5)))
      1 288 1440 5 ![144, 1440, 1440, 18, 36] ![10, 1, 1, 80, 40] reductionProjection6660 ![reductionProjection6319, oldProjection1668, oldProjection1702, reductionProjection6659, reductionProjection5814]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6661 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -40), (76, -480), (79, -240), (94, -45), (241, 320), (423, 1440), (691, -480), (698, 640), (758, 720), (762, 720), (864, 720), (1050, -960), (1052, -1680), (1221, -960), (1226, 320), (1251, 5)]

def reductionPivot6661 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 0, -2]]

theorem reductionSound6661 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3346).moment H =
      Integer.Sparse.eval reductionProjection6661 (momentVector H) := by
  have heq : reductionPivot6661 = (fun u v => (normalNode3346).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3346).moment H = injectiveMoment H reductionPivot6661 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3346).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6661 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6661 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 288, 1440, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6661 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1998, reductionProjection2207, oldProjection1632, oldProjection1632, reductionProjection2719] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6661 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1998⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1998 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6661 (1 : Fin 5)) = (normalNode3388).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6661 (2 : Fin 5)) = canonicalInput6438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6438 hH))).trans (oldProjectionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6661 (3 : Fin 5)) = canonicalInput6433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6433 hH))).trans (oldProjectionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6661 (4 : Fin 5)) = (normalNode3364).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6661 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3346).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6661 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3346).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6661 (j : Fin 5)))
      1 1440 1440 1 ![360, 288, 1440, 1440, 144] ![4, 5, 1, 1, 10] reductionProjection6661 ![oldProjection1998, reductionProjection2207, oldProjection1632, oldProjection1632, reductionProjection2719]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6662 : Integer.Sparse (Fin 1613) := [(0, -3), (76, -240), (79, -240), (81, -240), (90, 80), (94, 10), (241, 80), (243, 80), (423, 720), (427, 1440), (508, 720), (559, 720), (698, 640), (700, 80), (763, 720), (865, 720), (1050, -480), (1052, -720), (1058, -240), (1059, 320), (1221, -960), (1226, 400), (1227, 320), (1251, -75)]

def reductionPivot6662 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1]]

theorem reductionSound6662 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3347).moment H =
      Integer.Sparse.eval reductionProjection6662 (momentVector H) := by
  have heq : reductionPivot6662 = (fun u v => (normalNode3347).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3347).moment H = injectiveMoment H reductionPivot6662 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3347).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6662 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6662 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6662 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1999, reductionProjection302, oldProjection1672, reductionProjection2960, oldProjection1632] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6662 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6662 (1 : Fin 5)) = (normalNode3390).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection302 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6662 (2 : Fin 5)) = canonicalInput6439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1672 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6439 hH))).trans (oldProjectionSound1672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6662 (3 : Fin 5)) = (normalNode3367).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2960 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6662 (4 : Fin 5)) = canonicalInput6433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6662 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6433 hH))).trans (oldProjectionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3347).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6662 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3347).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6662 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 720, 1440] ![1, 1, 1, 2, 1] reductionProjection6662 ![oldProjection1999, reductionProjection302, oldProjection1672, reductionProjection2960, oldProjection1632]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6663 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -60), (79, -60), (81, -120), (90, 20), (94, 10), (243, 20), (433, 360), (697, -120), (698, 320), (700, 180), (704, 20), (761, 180), (767, 180), (865, 180), (1050, -60), (1052, -300), (1059, 160), (1219, -60), (1221, -120), (1226, 40), (1227, 40), (1251, -35)]

def reductionPivot6663 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]

theorem reductionSound6663 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode3348).moment H =
      Integer.Sparse.eval reductionProjection6663 (momentVector H) := by
  have heq : reductionPivot6663 = (fun u v => (normalNode3348).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3348).moment H = injectiveMoment H reductionPivot6663 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3348).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6663 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6663 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6663 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1999, reductionProjection2274, oldProjection1687, oldProjection1642, reductionProjection4131] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6663 (0 : Fin 5)) = canonicalInput7306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7306 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6663 (1 : Fin 5)) = (normalNode3391).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6663 (2 : Fin 5)) = canonicalInput6440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1687 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6440 hH))).trans (oldProjectionSound1687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6663 (3 : Fin 5)) = canonicalInput6435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6435 hH))).trans (oldProjectionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6663 (4 : Fin 5)) = (normalNode3368).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4131 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6663 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4131 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3348).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6663 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3348).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6663 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 288, 1440, 720] ![1, 1, 5, 1, 2] reductionProjection6663 ![oldProjection1999, reductionProjection2274, oldProjection1687, oldProjection1642, reductionProjection4131]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6664 : Integer.Sparse (Fin 1613) := [(0, 1), (76, -480), (79, -240), (81, -480), (94, 70), (433, 2160), (484, 720), (555, 720), (697, -240), (698, 800), (768, 720), (869, 720), (1050, -240), (1052, -720), (1059, 240), (1221, -720), (1226, 240), (1227, 160), (1251, -155), (1323, -240), (1389, -480)]

def reductionPivot6664 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound6664 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3349).moment H =
      Integer.Sparse.eval reductionProjection6664 (momentVector H) := by
  have heq : reductionPivot6664 = (fun u v => (normalNode3349).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3349).moment H = injectiveMoment H reductionPivot6664 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3349).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6664 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6664 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 36, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6664 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2000, reductionProjection307, oldProjection1688, reductionProjection2934, oldProjection1642] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6664 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2000⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2000 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6664 (1 : Fin 5)) = (normalNode3392).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection307 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6664 (2 : Fin 5)) = canonicalInput6441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6441 hH))).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6664 (3 : Fin 5)) = (normalNode3369).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2934 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6664 (4 : Fin 5)) = canonicalInput6435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6664 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6435 hH))).trans (oldProjectionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3349).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6664 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3349).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6664 (j : Fin 5)))
      1 1440 1440 1 ![1440, 36, 720, 288, 1440] ![1, 40, 2, 5, 1] reductionProjection6664 ![oldProjection2000, reductionProjection307, oldProjection1688, reductionProjection2934, oldProjection1642]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6665 : Integer.Sparse (Fin 1613) := [(81, 3), (559, -9), (674, -9), (698, -2), (700, -2), (759, -9), (1059, -2)]

def reductionPivot6665 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]

theorem reductionSound6665 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode3371).moment H =
      Integer.Sparse.eval reductionProjection6665 (momentVector H) := by
  have heq : reductionPivot6665 = (fun u v => (normalNode3371).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3371).moment H = injectiveMoment H reductionPivot6665 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3371).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6665 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6665 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6665 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection523, oldProjection1235, reductionProjection4394, oldProjection504] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6665 (0 : Fin 4)) = canonicalInput10030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6665 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection523 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6665 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection523 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10030 hH))).trans (oldProjectionSound523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6665 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3075 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6665 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6665 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3075 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6665 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code759).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6665 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6665 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6665 (3 : Fin 4)) = canonicalInput6447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6665 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection504 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6665 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6447 hH))).trans (oldProjectionSound504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3371).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6665 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3371).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6665 (j : Fin 4)))
      2 18 18 2 ![1, 9, 1, 1] ![18, 2, 18, 18] reductionProjection6665 ![oldProjection523, oldProjection1235, reductionProjection4394, oldProjection504]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6666 : Integer.Sparse (Fin 1613) := [(0, -11), (79, -240), (81, -960), (90, 160), (94, 10), (427, 720), (559, 1440), (674, 1440), (698, 1200), (700, 480), (759, 1440), (764, 720), (867, 720), (1050, -240), (1052, -240), (1059, 640), (1221, -480), (1226, 160), (1227, 160), (1251, -195)]

def reductionPivot6666 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0]]

theorem reductionSound6666 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3350).moment H =
      Integer.Sparse.eval reductionProjection6666 (momentVector H) := by
  have heq : reductionPivot6666 = (fun u v => (normalNode3350).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3350).moment H = injectiveMoment H reductionPivot6666 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3350).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6666 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6666 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![180, 18, 18, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6666 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2001, reductionProjection5746, reductionProjection6665, reductionProjection6665, oldProjection1672] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6666 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2001⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2001 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6666 (1 : Fin 5)) = (normalNode3395).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5746 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6666 (2 : Fin 5)) = canonicalInput6443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6665 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6443 hH))).trans (reductionSound6665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6666 (3 : Fin 5)) = (normalNode3371).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6665 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6666 (4 : Fin 5)) = canonicalInput6439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1672 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6666 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6439 hH))).trans (oldProjectionSound1672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3350).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6666 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3350).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6666 (j : Fin 5)))
      1 1440 1440 1 ![180, 18, 18, 18, 1440] ![8, 80, 80, 80, 1] reductionProjection6666 ![oldProjection2001, reductionProjection5746, reductionProjection6665, reductionProjection6665, oldProjection1672]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6667 : Integer.Sparse (Fin 1613) := [(0, -1), (79, -120), (81, -480), (90, 80), (94, 45), (433, 1080), (489, 360), (559, 360), (698, 720), (700, 240), (768, 360), (869, 360), (1050, -120), (1052, -240), (1059, 320), (1221, -240), (1226, 120), (1227, 160), (1251, -130), (1389, -240)]

def reductionPivot6667 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]

theorem reductionSound6667 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3351).moment H =
      Integer.Sparse.eval reductionProjection6667 (momentVector H) := by
  have heq : reductionPivot6667 = (fun u v => (normalNode3351).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3351).moment H = injectiveMoment H reductionPivot6667 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3351).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6667 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6667 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 720, 1440, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6667 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2003, reductionProjection2270, reductionProjection3029, oldProjection1688, oldProjection1687] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6667 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2003⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2003 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6667 (1 : Fin 5)) = (normalNode3398).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2270 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6667 (2 : Fin 5)) = (normalNode3373).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3029 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6667 (3 : Fin 5)) = canonicalInput6441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6441 hH))).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6667 (4 : Fin 5)) = canonicalInput6440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1687 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6667 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6440 hH))).trans (oldProjectionSound1687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3351).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6667 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3351).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6667 (j : Fin 5)))
      1 720 1440 2 ![360, 720, 1440, 720, 288] ![4, 2, 1, 2, 5] reductionProjection6667 ![oldProjection2003, reductionProjection2270, reductionProjection3029, oldProjection1688, oldProjection1687]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6668 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -240), (79, -240), (81, -720), (90, 80), (94, 80), (433, 720), (555, 720), (559, 720), (668, 720), (697, -480), (698, 960), (700, 160), (704, 80), (761, 1440), (767, 720), (801, 720), (865, 720), (1050, -240), (1052, -240), (1059, 400), (1221, -720), (1226, 160), (1227, 240), (1251, -95), (1389, -240)]

def reductionPivot6668 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]

theorem reductionSound6668 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3352).moment H =
      Integer.Sparse.eval reductionProjection6668 (momentVector H) := by
  have heq : reductionPivot6668 = (fun u v => (normalNode3352).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3352).moment H = injectiveMoment H reductionPivot6668 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3352).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6668 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6668 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6668 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1999, reductionProjection2274, reductionProjection3016, reductionProjection4098, oldProjection1688] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6668 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3333 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3333 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6668 (1 : Fin 5)) = canonicalInput6463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6463 hH))).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6668 (2 : Fin 5)) = (normalNode3374).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3016 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6668 (3 : Fin 5)) = (normalNode3372).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4098 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6668 (4 : Fin 5)) = canonicalInput6441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6668 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6441 hH))).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3352).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6668 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3352).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6668 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 720] ![1, 1, 2, 1, 2] reductionProjection6668 ![oldProjection1999, reductionProjection2274, reductionProjection3016, reductionProjection4098, oldProjection1688]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6669 : Integer.Sparse (Fin 1613) := [(0, -7), (76, -480), (79, -240), (81, -480), (94, 35), (241, 160), (423, 720), (555, 1440), (691, -240), (698, 640), (758, 1440), (762, 720), (807, 1440), (864, 720), (1050, -960), (1052, -240), (1058, -240), (1059, 160), (1221, -960), (1226, 160), (1227, 160), (1251, 30)]

def reductionPivot6669 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound6669 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3353).moment H =
      Integer.Sparse.eval reductionProjection6669 (momentVector H) := by
  have heq : reductionPivot6669 = (fun u v => (normalNode3353).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3353).moment H = injectiveMoment H reductionPivot6669 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3353).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6669 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6669 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6669 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1998, reductionProjection2207, oldProjection1654, reductionProjection2744, reductionProjection2744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6669 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3337 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1998 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3337 hH))).trans (oldProjectionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6669 (1 : Fin 5)) = canonicalInput6468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6468 hH))).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6669 (2 : Fin 5)) = canonicalInput6449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6449 hH))).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6669 (3 : Fin 5)) = canonicalInput6448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2744 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6448 hH))).trans (reductionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6669 (4 : Fin 5)) = (normalNode3375).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2744 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6669 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3353).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6669 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3353).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6669 (j : Fin 5)))
      1 1440 1440 1 ![360, 288, 1440, 1440, 1440] ![4, 5, 1, 1, 1] reductionProjection6669 ![oldProjection1998, reductionProjection2207, oldProjection1654, reductionProjection2744, reductionProjection2744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6670 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -120), (79, -120), (81, -600), (90, 40), (94, 10), (243, 40), (423, 720), (427, 360), (433, 360), (555, 360), (698, 560), (700, 240), (763, 360), (865, 360), (1050, -120), (1052, -360), (1058, -240), (1059, 320), (1221, -120), (1226, 80), (1227, 160), (1251, -45)]

def reductionPivot6670 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound6670 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3355).moment H =
      Integer.Sparse.eval reductionProjection6670 (momentVector H) := by
  have heq : reductionPivot6670 = (fun u v => (normalNode3355).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3355).moment H = injectiveMoment H reductionPivot6670 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3355).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6670 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6670 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6670 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1999, reductionProjection302, oldProjection1702, oldProjection1654, reductionProjection2816] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6670 (0 : Fin 5)) = canonicalInput7315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7315 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6670 (1 : Fin 5)) = canonicalInput6469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection302 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6469 hH))).trans (reductionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6670 (2 : Fin 5)) = canonicalInput6450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1702 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6450 hH))).trans (oldProjectionSound1702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6670 (3 : Fin 5)) = canonicalInput6449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6449 hH))).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6670 (4 : Fin 5)) = (normalNode3376).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2816 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6670 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3355).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6670 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3355).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6670 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection6670 ![oldProjection1999, reductionProjection302, oldProjection1702, oldProjection1654, reductionProjection2816]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6671 : Integer.Sparse (Fin 1613) := [(0, -7), (79, -120), (81, -480), (90, 80), (94, 30), (427, 720), (698, 840), (700, 760), (759, 360), (764, 360), (867, 360), (1050, -120), (1052, -360), (1059, 400), (1251, -75)]

def reductionPivot6671 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound6671 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3357).moment H =
      Integer.Sparse.eval reductionProjection6671 (momentVector H) := by
  have heq : reductionPivot6671 = (fun u v => (normalNode3357).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3357).moment H = injectiveMoment H reductionPivot6671 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3357).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6671 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6671 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![180, 18, 36, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6671 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2001, reductionProjection5746, reductionProjection5814, oldProjection1702, oldProjection1702] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6671 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3341 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2001 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3341 hH))).trans (oldProjectionSound2001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6671 (1 : Fin 5)) = canonicalInput6471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5746 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6471 hH))).trans (reductionSound5746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6671 (2 : Fin 5)) = (normalNode3378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5814 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6671 (3 : Fin 5)) = canonicalInput6451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1702 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6451 hH))).trans (oldProjectionSound1702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6671 (4 : Fin 5)) = canonicalInput6450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1702 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6671 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6450 hH))).trans (oldProjectionSound1702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3357).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6671 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3357).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6671 (j : Fin 5)))
      1 720 1440 2 ![180, 18, 36, 1440, 1440] ![8, 80, 40, 1, 1] reductionProjection6671 ![oldProjection2001, reductionProjection5746, reductionProjection5814, oldProjection1702, oldProjection1702]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6672 : Integer.Sparse (Fin 1613) := [(427, -1), (759, -1), (764, -1), (867, -1)]

def reductionPivot6672 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 2, 0, -2], ![2, 0, -2, 0]]

theorem reductionSound6672 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3358).moment H =
      Integer.Sparse.eval reductionProjection6672 (momentVector H) := by
  have heq : reductionPivot6672 = (fun u v => (normalNode3358).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3358).moment H = injectiveMoment H reductionPivot6672 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3358).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6672 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6672 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6672 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection607, reductionProjection4657, reductionProjection4394, oldProjection474] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6672 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node607⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6672 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection607 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6672 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection607 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6672 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code764).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6672 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4657 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6672 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6672 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code759).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6672 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6672 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6672 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3060 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6672 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection474 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6672 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection474 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3060 hH))).trans (oldProjectionSound474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3358).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6672 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3358).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6672 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6672 ![oldProjection607, reductionProjection4657, reductionProjection4394, oldProjection474]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6673 : Integer.Sparse (Fin 1613) := [(760, 1)]

theorem reductionSound6673 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code760).moment H =
      Integer.Sparse.eval reductionProjection6673 (momentVector H) := by
  have hc : coordinates (760 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code760) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6673, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6674 : Integer.Sparse (Fin 1613) := [(760, -1), (761, -1), (763, -1), (766, -1)]

def reductionPivot6674 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 1, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound6674 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3359).moment H =
      Integer.Sparse.eval reductionProjection6674 (momentVector H) := by
  have heq : reductionPivot6674 = (fun u v => (normalNode3359).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3359).moment H = injectiveMoment H reductionPivot6674 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3359).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6674 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6674 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6674 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection197, reductionProjection181, reductionProjection178, reductionProjection6673] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6674 (0 : Fin 4)) = canonicalInput7325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6674 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection197 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6674 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7325 hH))).trans (reductionSound197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6674 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code766).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6674 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection181 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6674 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6674 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code761).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6674 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6674 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6674 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code760).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6674 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6673 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6674 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3359).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6674 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3359).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6674 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6674 ![reductionProjection197, reductionProjection181, reductionProjection178, reductionProjection6673]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6675 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -8), (81, -48), (94, 15), (241, 16), (247, 32), (433, 288), (484, 288), (555, 288), (691, -48), (694, -48), (697, -96), (698, 96), (758, 144), (807, 144), (1050, -48), (1052, -144), (1059, 48), (1221, -48), (1251, -12)]

def reductionPivot6675 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound6675 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3363).moment H =
      Integer.Sparse.eval reductionProjection6675 (momentVector H) := by
  have heq : reductionPivot6675 = (fun u v => (normalNode3363).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3363).moment H = injectiveMoment H reductionPivot6675 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3363).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6675 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6675 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6675 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2041, oldProjection2803, reductionProjection2744, reductionProjection2934, oldProjection1642] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6675 (0 : Fin 5)) = canonicalInput9755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2041 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9755 hH))).trans (oldProjectionSound2041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6675 (1 : Fin 5)) = canonicalInput6538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2803 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6538 hH))).trans (oldProjectionSound2803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6675 (2 : Fin 5)) = (normalNode3375).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2744 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6675 (3 : Fin 5)) = canonicalInput6436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2934 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6436 hH))).trans (reductionSound2934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6675 (4 : Fin 5)) = canonicalInput6435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6675 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6435 hH))).trans (oldProjectionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3363).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6675 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3363).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6675 (j : Fin 5)))
      1 288 1440 5 ![1440, 288, 1440, 288, 1440] ![1, 5, 1, 5, 1] reductionProjection6675 ![oldProjection2041, oldProjection2803, reductionProjection2744, reductionProjection2934, oldProjection1642]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6676 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -5), (81, -120), (94, 10), (241, 40), (243, 20), (247, 20), (423, 180), (433, 360), (484, 180), (555, 360), (668, 180), (697, -60), (698, 200), (700, 80), (761, 180), (1050, -60), (1052, -180), (1055, -60), (1059, 60), (1219, -60), (1221, -60), (1226, 20), (1227, 20), (1251, -20)]

def reductionPivot6676 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound6676 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode3365).moment H =
      Integer.Sparse.eval reductionProjection6676 (momentVector H) := by
  have heq : reductionPivot6676 = (fun u v => (normalNode3365).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3365).moment H = injectiveMoment H reductionPivot6676 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3365).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6676 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6676 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6676 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2043, oldProjection2748, reductionProjection2816, reductionProjection4098, oldProjection1687] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6676 (0 : Fin 5)) = canonicalInput9757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2043 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2043 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9757 hH))).trans (oldProjectionSound2043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6676 (1 : Fin 5)) = canonicalInput6541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2748 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6541 hH))).trans (oldProjectionSound2748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6676 (2 : Fin 5)) = (normalNode3376).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2816 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6676 (3 : Fin 5)) = canonicalInput6442.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4098 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6442 hH))).trans (reductionSound4098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6676 (4 : Fin 5)) = canonicalInput6440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1687 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6676 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6440 hH))).trans (oldProjectionSound1687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3365).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6676 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3365).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6676 (j : Fin 5)))
      1 360 1440 4 ![1440, 1440, 1440, 1440, 288] ![1, 1, 1, 1, 5] reductionProjection6676 ![oldProjection2043, oldProjection2748, reductionProjection2816, reductionProjection4098, oldProjection1687]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6677 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -240), (94, 25), (243, 40), (427, 360), (433, 360), (489, 360), (508, 360), (559, 720), (697, -240), (698, 360), (700, 280), (704, 40), (761, 360), (801, 360), (1052, -240), (1059, 200), (1219, -120), (1221, -120), (1227, 80), (1251, -70)]

def reductionPivot6677 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound6677 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode3366).moment H =
      Integer.Sparse.eval reductionProjection6677 (momentVector H) := by
  have heq : reductionPivot6677 = (fun u v => (normalNode3366).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3366).moment H = injectiveMoment H reductionPivot6677 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3366).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6677 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6677 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6677 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2049, oldProjection2605, oldProjection1702, reductionProjection3016, reductionProjection3029] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6677 (0 : Fin 5)) = canonicalInput9758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2049 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9758 hH))).trans (oldProjectionSound2049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6677 (1 : Fin 5)) = canonicalInput6542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2605 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6542 hH))).trans (oldProjectionSound2605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6677 (2 : Fin 5)) = canonicalInput6450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1702 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6450 hH))).trans (oldProjectionSound1702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6677 (3 : Fin 5)) = canonicalInput6445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3016 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6445 hH))).trans (reductionSound3016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6677 (4 : Fin 5)) = (normalNode3373).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3029 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6677 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3366).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6677 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3366).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6677 (j : Fin 5)))
      1 720 1440 2 ![720, 720, 1440, 720, 1440] ![2, 2, 1, 2, 1] reductionProjection6677 ![oldProjection2049, oldProjection2605, oldProjection1702, reductionProjection3016, reductionProjection3029]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6678 : Integer.Sparse (Fin 1613) := [(0, -4), (81, -144), (94, 25), (433, 288), (489, 288), (559, 288), (674, 144), (698, 288), (700, 176), (759, 144), (1052, -48), (1059, 160), (1221, -48), (1226, 16), (1227, 64), (1251, -23)]

def reductionPivot6678 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound6678 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode3370).moment H =
      Integer.Sparse.eval reductionProjection6678 (momentVector H) := by
  have heq : reductionPivot6678 = (fun u v => (normalNode3370).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3370).moment H = injectiveMoment H reductionPivot6678 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3370).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6678 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6678 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 36, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6678 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1846, reductionProjection4454, reductionProjection5814, reductionProjection3029, reductionProjection3029] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6678 (0 : Fin 5)) = canonicalInput10029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1846 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10029 hH))).trans (oldProjectionSound1846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6678 (1 : Fin 5)) = canonicalInput6581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4454 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6581 hH))).trans (reductionSound4454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6678 (2 : Fin 5)) = (normalNode3378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5814 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6678 (3 : Fin 5)) = canonicalInput6446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3029 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6446 hH))).trans (reductionSound3029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6678 (4 : Fin 5)) = (normalNode3373).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3029 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6678 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3029 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3029 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3370).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6678 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3370).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6678 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 36, 1440, 1440] ![1, 1, 40, 1, 1] reductionProjection6678 ![oldProjection1846, reductionProjection4454, reductionProjection5814, reductionProjection3029, reductionProjection3029]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6679 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -40), (20, 5), (76, -960), (77, -240), (79, -720), (81, -960), (88, 80), (90, 320), (94, 135), (231, -240), (241, 80), (243, 160), (302, 720), (433, 720), (697, -240), (698, 1280), (700, 400), (704, 80), (767, 720), (768, 1440), (1052, -240), (1059, 80), (1221, -240), (1226, 480), (1227, 160), (1251, -30), (1323, -480), (1389, -480)]

def reductionPivot6679 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound6679 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3379).moment H =
      Integer.Sparse.eval reductionProjection6679 (momentVector H) := by
  have heq : reductionPivot6679 = (fun u v => (normalNode3379).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3379).moment H = injectiveMoment H reductionPivot6679 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3379).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6679 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6679 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 36, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6679 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection831, oldProjection1688, reductionProjection307, reductionProjection2270, reductionProjection2274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6679 (0 : Fin 5)) = (normalNode3150).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection831 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6679 (1 : Fin 5)) = canonicalInput6441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1688 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6441 hH))).trans (oldProjectionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6679 (2 : Fin 5)) = (normalNode3392).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection307 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6679 (3 : Fin 5)) = (normalNode3398).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2270 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6679 (4 : Fin 5)) = canonicalInput6463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6679 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6463 hH))).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3379).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6679 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3379).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6679 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 36, 720, 1440] ![1, 2, 40, 2, 1] reductionProjection6679 ![reductionProjection831, oldProjection1688, reductionProjection307, reductionProjection2270, reductionProjection2274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6680 : Integer.Sparse (Fin 1613) := [(0, -3), (76, -960), (77, -240), (79, -720), (81, -960), (90, 320), (94, 15), (231, -480), (241, 160), (243, 320), (297, 720), (423, 720), (691, -240), (698, 880), (700, 320), (762, 720), (763, 1440), (1052, -240), (1057, -240), (1058, -720), (1059, 160), (1226, 640), (1227, 320), (1251, -90)]

def reductionPivot6680 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound6680 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3380).moment H =
      Integer.Sparse.eval reductionProjection6680 (momentVector H) := by
  have heq : reductionPivot6680 = (fun u v => (normalNode3380).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3380).moment H = injectiveMoment H reductionPivot6680 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3380).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6680 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6680 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 1440, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6680 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection739, oldProjection1654, reductionProjection2207, reductionProjection302, reductionProjection302] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6680 (0 : Fin 5)) = (normalNode3153).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection739 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection739 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6680 (1 : Fin 5)) = canonicalInput6449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1654 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6449 hH))).trans (oldProjectionSound1654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6680 (2 : Fin 5)) = canonicalInput6468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6468 hH))).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6680 (3 : Fin 5)) = canonicalInput6469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection302 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6469 hH))).trans (reductionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6680 (4 : Fin 5)) = canonicalInput6470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection302 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6680 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6470 hH))).trans (reductionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3380).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6680 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3380).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6680 (j : Fin 5)))
      1 1440 1440 1 ![18, 1440, 288, 1440, 1440] ![80, 1, 5, 1, 1] reductionProjection6680 ![reductionProjection739, oldProjection1654, reductionProjection2207, reductionProjection302, reductionProjection302]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6681 : Integer.Sparse (Fin 1613) := [(297, -1), (423, -1), (762, -1), (763, -1)]

def reductionPivot6681 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, -1, -1], ![2, 0, 0, -2]]

theorem reductionSound6681 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3381).moment H =
      Integer.Sparse.eval reductionProjection6681 (momentVector H) := by
  have heq : reductionPivot6681 = (fun u v => (normalNode3381).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3381).moment H = injectiveMoment H reductionPivot6681 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3381).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6681 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6681 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6681 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection455, oldProjection472, reductionProjection2206, reductionProjection197] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6681 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2890 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6681 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection455 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6681 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2890 hH))).trans (oldProjectionSound455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6681 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3059 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6681 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection472 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6681 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection472 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3059 hH))).trans (oldProjectionSound472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6681 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code762).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6681 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2206 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6681 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6681 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code763).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6681 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection197 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6681 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3381).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6681 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3381).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6681 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6681 ![oldProjection455, oldProjection472, reductionProjection2206, reductionProjection197]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6682 : Integer.Sparse (Fin 1613) := [(81, 3), (428, -9), (698, -2), (700, -2), (764, -9), (810, -9), (1059, -2)]

def reductionPivot6682 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 0, -2, 1]]

theorem reductionSound6682 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode3399).moment H =
      Integer.Sparse.eval reductionProjection6682 (momentVector H) := by
  have heq : reductionPivot6682 = (fun u v => (normalNode3399).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3399).moment H = injectiveMoment H reductionPivot6682 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3399).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot6682 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6682 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6682 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1235, reductionProjection4070, reductionProjection4307, reductionProjection4657] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6682 (0 : Fin 4)) = canonicalInput20180.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6682 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1235 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6682 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20180 hH))).trans (oldProjectionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6682 (1 : Fin 4)) = canonicalInput6800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6682 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4070 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6682 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6800 hH))).trans (reductionSound4070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6682 (2 : Fin 4)) = canonicalInput6477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6682 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6682 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6477 hH))).trans (reductionSound4307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6682 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code764).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6682 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4657 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6682 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3399).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6682 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3399).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6682 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection6682 ![oldProjection1235, reductionProjection4070, reductionProjection4307, reductionProjection4657]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6683 : Integer.Sparse (Fin 1613) := [(0, -4), (38, -240), (42, 80), (76, -240), (77, -240), (79, -480), (81, -1200), (90, 320), (94, 15), (231, -240), (238, -240), (243, 160), (244, 80), (299, 720), (427, 720), (428, 720), (698, 1120), (700, 880), (701, 80), (763, 720), (764, 1440), (810, 720), (1052, -240), (1058, -240), (1059, 640), (1226, 160), (1227, 80), (1251, -65)]

def reductionPivot6683 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound6683 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode3382).moment H =
      Integer.Sparse.eval reductionProjection6683 (momentVector H) := by
  have heq : reductionPivot6683 = (fun u v => (normalNode3382).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3382).moment H = injectiveMoment H reductionPivot6683 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3382).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6683 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6683 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 1440, 1440, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6683 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6347, oldProjection1702, reductionProjection302, reductionProjection6682, reductionProjection5746] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6683 (0 : Fin 5)) = (normalNode3154).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6347 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6683 (1 : Fin 5)) = canonicalInput6450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1702 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1702 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6450 hH))).trans (oldProjectionSound1702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6683 (2 : Fin 5)) = canonicalInput6469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection302 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6469 hH))).trans (reductionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6683 (3 : Fin 5)) = (normalNode3399).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6682 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6683 (4 : Fin 5)) = canonicalInput6471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5746 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6683 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6471 hH))).trans (reductionSound5746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3382).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6683 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3382).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6683 (j : Fin 5)))
      1 1440 1440 1 ![18, 1440, 1440, 18, 18] ![80, 1, 1, 80, 80] reductionProjection6683 ![reductionProjection6347, oldProjection1702, reductionProjection302, reductionProjection6682, reductionProjection5746]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6684 : Integer.Sparse (Fin 1613) := [(765, 1)]

theorem reductionSound6684 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code765).moment H =
      Integer.Sparse.eval reductionProjection6684 (momentVector H) := by
  have hc : coordinates (765 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code765) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection6684, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection6685 : Integer.Sparse (Fin 1613) := [(428, -9), (683, 3), (695, 3), (700, -2), (701, -1), (765, -9), (777, -9)]

def reductionPivot6685 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 1, 1, -2], ![2, 0, -3, 1]]

theorem reductionSound6685 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode3396).moment H =
      Integer.Sparse.eval reductionProjection6685 (momentVector H) := by
  have heq : reductionPivot6685 = (fun u v => (normalNode3396).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3396).moment H = injectiveMoment H reductionPivot6685 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3396).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6685 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6685 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6685 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5418, reductionProjection1219, reductionProjection6684, reductionProjection4307] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6685 (0 : Fin 4)) = canonicalInput10041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6685 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5418 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6685 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10041 hH))).trans (reductionSound5418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6685 (1 : Fin 4)) = canonicalInput6596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6685 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1219 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6685 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6596 hH))).trans (reductionSound1219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6685 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code765).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6685 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6684 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6685 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6685 (3 : Fin 4)) = canonicalInput6467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6685 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6685 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6467 hH))).trans (reductionSound4307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3396).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6685 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3396).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6685 (j : Fin 4)))
      2 18 18 2 ![1, 9, 1, 1] ![18, 2, 18, 18] reductionProjection6685 ![reductionProjection5418, reductionProjection1219, reductionProjection6684, reductionProjection4307]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6686 : Integer.Sparse (Fin 1613) := [(38, -18), (42, 4), (77, -6), (79, -6), (81, -12), (90, 4), (94, 1), (428, 36), (683, -12), (695, -12), (698, 18), (700, 34), (701, 6), (704, 4), (722, 18), (759, 18), (764, 18), (765, 36), (777, 36), (1052, -6), (1059, 12), (1251, 1)]

def reductionPivot6686 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound6686 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode3383).moment H =
      Integer.Sparse.eval reductionProjection6686 (momentVector H) := by
  have heq : reductionPivot6686 = (fun u v => (normalNode3383).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3383).moment H = injectiveMoment H reductionPivot6686 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3383).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot6686 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot6686 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 36, 18, 18, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6686 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6315, reductionProjection5814, reductionProjection5746, reductionProjection6685, reductionProjection6685] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6686 (0 : Fin 5)) = (normalNode3155).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6315 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6686 (1 : Fin 5)) = (normalNode3378).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5814 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6686 (2 : Fin 5)) = canonicalInput6471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5746 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6471 hH))).trans (reductionSound5746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6686 (3 : Fin 5)) = canonicalInput6472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6685 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6472 hH))).trans (reductionSound6685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6686 (4 : Fin 5)) = canonicalInput6473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6685 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6686 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6473 hH))).trans (reductionSound6685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode3383).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6686 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3383).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot6686 (j : Fin 5)))
      1 36 36 1 ![18, 36, 18, 18, 18] ![2, 1, 2, 2, 2] reductionProjection6686 ![reductionProjection6315, reductionProjection5814, reductionProjection5746, reductionProjection6685, reductionProjection6685]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection6687 : Integer.Sparse (Fin 1613) := [(302, -1), (433, -1), (767, -1), (768, -1)]

def reductionPivot6687 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, -1, 3], ![0, -2, 3, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]

theorem reductionSound6687 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3384).moment H =
      Integer.Sparse.eval reductionProjection6687 (momentVector H) := by
  have heq : reductionPivot6687 = (fun u v => (normalNode3384).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3384).moment H = injectiveMoment H reductionPivot6687 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3384).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot6687 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot6687 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6687 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection458, oldProjection476, reductionProjection2259, reductionProjection211] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot6687 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2892 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6687 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection458 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6687 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2892 hH))).trans (oldProjectionSound458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6687 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3061 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6687 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6687 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3061 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6687 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code767).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6687 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2259 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6687 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot6687 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code768).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot6687 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot6687 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3384).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6687 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3384).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot6687 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection6687 ![oldProjection458, oldProjection476, reductionProjection2259, reductionProjection211]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

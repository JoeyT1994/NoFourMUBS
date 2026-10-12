import NoFourMUBs.Step2.SOS.Canonical029
import NoFourMUBs.Step2.SOS.Canonical194
import NoFourMUBs.Step2.SOS.Canonical195
import NoFourMUBs.Step2.SOS.Canonical196
import NoFourMUBs.Step2.SOS.Canonical197
import NoFourMUBs.Step2.SOS.Canonical198
import NoFourMUBs.Step2.SOS.Canonical199
import NoFourMUBs.Step2.SOS.Canonical200
import NoFourMUBs.Step2.SOS.Canonical214
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical220
import NoFourMUBs.Step2.SOS.Canonical372
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions117
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions142
import NoFourMUBs.Step2.SOS.Reductions158
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions190
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions306
import NoFourMUBs.Step2.SOS.Reductions308
import NoFourMUBs.Step2.SOS.Reductions309
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9920 : Integer.Sparse (Fin 1613) := [(0, 14), (19, -100), (20, 5), (76, -240), (94, 135), (241, 80), (247, 320), (549, 2160), (617, 720), (622, 720), (682, -240), (697, -480), (698, 400), (1144, 720), (1226, 80), (1227, 80), (1250, 60), (1251, -120), (1321, -240), (1323, -480), (1333, 720), (1388, -240), (1389, -480)]

def reductionPivot9920 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound9920 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6150).moment H =
      Integer.Sparse.eval reductionProjection9920 (momentVector H) := by
  have heq : reductionPivot9920 = (fun u v => (normalNode6150).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6150).moment H = injectiveMoment H reductionPivot9920 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6150).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9920 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9920 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9920 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2833, oldProjection1506, oldProjection2161, reductionProjection9907, reductionProjection5065] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9920 (0 : Fin 5)) = canonicalInput12794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2833 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12794 hH))).trans (oldProjectionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9920 (1 : Fin 5)) = canonicalInput12616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1506 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12616 hH))).trans (oldProjectionSound1506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9920 (2 : Fin 5)) = canonicalInput12601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2161 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12601 hH))).trans (oldProjectionSound2161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9920 (3 : Fin 5)) = (normalNode6159).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9907 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9920 (4 : Fin 5)) = canonicalInput12598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9920 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12598 hH))).trans (reductionSound5065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6150).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9920 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6150).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9920 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 2, 1440] ![1, 1, 2, 720, 1] reductionProjection9920 ![oldProjection2833, oldProjection1506, oldProjection2161, reductionProjection9907, reductionProjection5065]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9921 : Integer.Sparse (Fin 1613) := [(0, 4), (81, 480), (94, -45), (228, 240), (484, -720), (698, -160), (1144, -720), (1251, -45)]

def reductionPivot9921 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, 1, -2]]

theorem reductionSound9921 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6164).moment H =
      Integer.Sparse.eval reductionProjection9921 (momentVector H) := by
  have heq : reductionPivot9921 = (fun u v => (normalNode6164).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6164).moment H = injectiveMoment H reductionPivot9921 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6164).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9921 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9921 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9921 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1013, oldProjection731, reductionProjection1384, oldProjection488] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9921 (0 : Fin 4)) = canonicalInput23856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9921 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1013 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9921 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23856 hH))).trans (oldProjectionSound1013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9921 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9921 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection731 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9921 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9921 (2 : Fin 4)) = canonicalInput12615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9921 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9921 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12615 hH))).trans (reductionSound1384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9921 (3 : Fin 4)) = canonicalInput12606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9921 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9921 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12606 hH))).trans (oldProjectionSound488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6164).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9921 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6164).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9921 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 1, 1] ![2, 2, 1440, 1440] reductionProjection9921 ![oldProjection1013, oldProjection731, reductionProjection1384, oldProjection488]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9922 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -140), (20, 5), (81, -480), (94, 120), (228, -240), (241, 80), (243, 80), (247, 240), (478, 720), (483, 720), (484, 1440), (698, 560), (704, 80), (1055, -240), (1144, 720), (1219, -240), (1226, 160), (1250, 60), (1251, -10), (1321, -240), (1323, -480)]

def reductionPivot9922 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9922 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6151).moment H =
      Integer.Sparse.eval reductionProjection9922 (momentVector H) := by
  have heq : reductionPivot9922 = (fun u v => (normalNode6151).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6151).moment H = injectiveMoment H reductionPivot9922 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6151).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9922 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9922 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9922 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9811, oldProjection1505, oldProjection2162, reductionProjection1350, reductionProjection9921] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9922 (0 : Fin 5)) = canonicalInput12795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9811 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12795 hH))).trans (reductionSound9811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9922 (1 : Fin 5)) = canonicalInput12617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1505 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12617 hH))).trans (oldProjectionSound1505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9922 (2 : Fin 5)) = canonicalInput12607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2162 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12607 hH))).trans (oldProjectionSound2162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9922 (3 : Fin 5)) = canonicalInput12605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1350 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12605 hH))).trans (reductionSound1350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9922 (4 : Fin 5)) = (normalNode6164).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9921 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9922 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6151).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9922 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6151).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9922 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 1440, 1440, 1440] ![1, 20, 1, 1, 1] reductionProjection9922 ![reductionProjection9811, oldProjection1505, oldProjection2162, reductionProjection1350, reductionProjection9921]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9923 : Integer.Sparse (Fin 1613) := [(94, 5), (243, -48), (493, -144), (624, -144), (698, -32), (700, -16), (1058, 48), (1226, -48), (1251, 1), (1323, 48)]

def reductionPivot9923 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 0, -2, 1], ![1, 2, 0, -3]]

theorem reductionSound9923 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6152).moment H =
      Integer.Sparse.eval reductionProjection9923 (momentVector H) := by
  have heq : reductionPivot9923 = (fun u v => (normalNode6152).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6152).moment H = injectiveMoment H reductionPivot9923 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6152).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9923 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9923 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9923 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection492, oldProjection1215, oldProjection1074, reductionProjection5833] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9923 (0 : Fin 4)) = canonicalInput12796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9923 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection492 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9923 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12796 hH))).trans (oldProjectionSound492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9923 (1 : Fin 4)) = canonicalInput12618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9923 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1215 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9923 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12618 hH))).trans (oldProjectionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9923 (2 : Fin 4)) = canonicalInput12609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9923 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1074 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9923 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12609 hH))).trans (oldProjectionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9923 (3 : Fin 4)) = canonicalInput12608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9923 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5833 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9923 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12608 hH))).trans (reductionSound5833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6152).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9923 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6152).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9923 (j : Fin 4)))
      2 288 288 2 ![1, 144, 72, 1] ![288, 2, 4, 288] reductionProjection9923 ![oldProjection492, oldProjection1215, oldProjection1074, reductionProjection5833]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9924 : Integer.Sparse (Fin 1613) := [(94, -1), (241, -16), (483, -72), (549, -72), (596, -72), (698, -16), (1055, 24), (1251, 3)]

def reductionPivot9924 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 1, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound9924 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6153).moment H =
      Integer.Sparse.eval reductionProjection9924 (momentVector H) := by
  have heq : reductionPivot9924 = (fun u v => (normalNode6153).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6153).moment H = injectiveMoment H reductionPivot9924 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6153).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9924 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9924 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 72, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9924 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection487, oldProjection976, oldProjection502, oldProjection509] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9924 (0 : Fin 4)) = canonicalInput12797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9924 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9924 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12797 hH))).trans (oldProjectionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9924 (1 : Fin 4)) = canonicalInput12619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9924 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection976 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9924 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12619 hH))).trans (oldProjectionSound976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9924 (2 : Fin 4)) = canonicalInput12612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9924 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection502 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9924 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12612 hH))).trans (oldProjectionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9924 (3 : Fin 4)) = canonicalInput12611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9924 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9924 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12611 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6153).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9924 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6153).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9924 (j : Fin 4)))
      2 144 144 2 ![1, 72, 1, 1] ![144, 2, 144, 144] reductionProjection9924 ![oldProjection487, oldProjection976, oldProjection502, oldProjection509]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9925 : Integer.Sparse (Fin 1613) := [(87, 3), (88, -1), (90, -2), (243, -1), (564, -9), (596, -9), (698, -4), (1226, -5), (1227, -2)]

def reductionPivot9925 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound9925 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6155).moment H =
      Integer.Sparse.eval reductionProjection9925 (momentVector H) := by
  have heq : reductionPivot9925 = (fun u v => (normalNode6155).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6155).moment H = injectiveMoment H reductionPivot9925 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6155).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9925 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9925 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9925 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection304, reductionProjection5436, oldProjection509, reductionProjection2264] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9925 (0 : Fin 4)) = canonicalInput23878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9925 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9925 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23878 hH))).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9925 (1 : Fin 4)) = canonicalInput12746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9925 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5436 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9925 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5436 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12746 hH))).trans (reductionSound5436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9925 (2 : Fin 4)) = canonicalInput12611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9925 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9925 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12611 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9925 (3 : Fin 4)) = canonicalInput12597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9925 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9925 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12597 hH))).trans (reductionSound2264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6155).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9925 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6155).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9925 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection9925 ![reductionProjection304, reductionProjection5436, oldProjection509, reductionProjection2264]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9926 : Integer.Sparse (Fin 1613) := [(0, -2), (81, -240), (87, -240), (88, 80), (90, 160), (94, 25), (228, -240), (241, 80), (243, 160), (435, 720), (444, 720), (465, 720), (564, 720), (565, 720), (596, 720), (610, 720), (698, 1040), (700, 80), (1055, -240), (1058, -480), (1059, 80), (1144, 720), (1226, 640), (1227, 480), (1251, -105), (1286, -1440)]

def reductionPivot9926 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound9926 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6154).moment H =
      Integer.Sparse.eval reductionProjection9926 (momentVector H) := by
  have heq : reductionPivot9926 = (fun u v => (normalNode6154).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6154).moment H = injectiveMoment H reductionPivot9926 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6154).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9926 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9926 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1440, 1, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9926 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1667, reductionProjection1409, reductionProjection9909, reductionProjection916, reductionProjection9925] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9926 (0 : Fin 5)) = canonicalInput14032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1667 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1667 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14032 hH))).trans (reductionSound1667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9926 (1 : Fin 5)) = (normalNode6189).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1409 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9926 (2 : Fin 5)) = (normalNode6163).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9909 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9926 (3 : Fin 5)) = canonicalInput12596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection916 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12596 hH))).trans (reductionSound916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9926 (4 : Fin 5)) = (normalNode6155).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9925 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9926 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6154).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9926 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6154).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9926 (j : Fin 5)))
      1 1440 1440 1 ![720, 720, 1440, 1, 18] ![2, 2, 1, 1440, 80] reductionProjection9926 ![reductionProjection1667, reductionProjection1409, reductionProjection9909, reductionProjection916, reductionProjection9925]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9927 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -5), (76, -120), (81, -120), (84, -60), (94, 15), (241, 60), (243, 60), (435, 180), (549, 360), (617, 360), (622, 360), (698, 280), (700, 40), (1058, -60), (1059, 60), (1144, 360), (1226, 80), (1227, 80), (1251, -55), (1323, -60)]

def reductionPivot9927 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound9927 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode6156).moment H =
      Integer.Sparse.eval reductionProjection9927 (momentVector H) := by
  have heq : reductionPivot9927 = (fun u v => (normalNode6156).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6156).moment H = injectiveMoment H reductionPivot9927 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6156).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9927 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9927 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9927 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1830, reductionProjection9877, reductionProjection9909, reductionProjection9907, reductionProjection5065] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9927 (0 : Fin 5)) = canonicalInput13707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1830 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13707 hH))).trans (oldProjectionSound1830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9927 (1 : Fin 5)) = (normalNode6179).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9877 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9927 (2 : Fin 5)) = (normalNode6163).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9909 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9927 (3 : Fin 5)) = canonicalInput12599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9907 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12599 hH))).trans (reductionSound9907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9927 (4 : Fin 5)) = canonicalInput12598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9927 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12598 hH))).trans (reductionSound5065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6156).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9927 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6156).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9927 (j : Fin 5)))
      1 360 1440 4 ![288, 720, 1440, 2, 1440] ![5, 2, 1, 720, 1] reductionProjection9927 ![oldProjection1830, reductionProjection9877, reductionProjection9909, reductionProjection9907, reductionProjection5065]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9928 : Integer.Sparse (Fin 1613) := [(0, 3), (76, -240), (81, -480), (88, 80), (90, 160), (94, 70), (228, -240), (241, 80), (243, 160), (465, 720), (484, 720), (549, 720), (596, 720), (610, 720), (617, 720), (622, 720), (697, -240), (698, 1200), (700, 160), (1052, -240), (1059, 240), (1144, 1440), (1221, -240), (1226, 480), (1227, 400), (1251, -165), (1323, -240), (1389, -240)]

def reductionPivot9928 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound9928 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6157).moment H =
      Integer.Sparse.eval reductionProjection9928 (momentVector H) := by
  have heq : reductionPivot9928 = (fun u v => (normalNode6157).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6157).moment H = injectiveMoment H reductionPivot9928 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6157).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9928 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9928 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1440, 1440, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9928 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1826, reductionProjection9872, reductionProjection9921, reductionProjection1385, oldProjection2167] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9928 (0 : Fin 5)) = canonicalInput13709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1826 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13709 hH))).trans (oldProjectionSound1826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9928 (1 : Fin 5)) = (normalNode6180).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9872 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9928 (2 : Fin 5)) = (normalNode6164).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9921 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9928 (3 : Fin 5)) = canonicalInput12602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1385 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12602 hH))).trans (reductionSound1385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9928 (4 : Fin 5)) = canonicalInput12600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2167 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9928 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12600 hH))).trans (oldProjectionSound2167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6157).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9928 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6157).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9928 (j : Fin 5)))
      1 1440 1440 1 ![360, 1440, 1440, 2, 288] ![4, 1, 1, 720, 5] reductionProjection9928 ![oldProjection1826, reductionProjection9872, reductionProjection9921, reductionProjection1385, oldProjection2167]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9929 : Integer.Sparse (Fin 1613) := [(1288, 1)]

theorem reductionSound9929 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1288).moment H =
      Integer.Sparse.eval reductionProjection9929 (momentVector H) := by
  have hc : coordinates (1288 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1288) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9929, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9930 : Integer.Sparse (Fin 1613) := [(94, 3), (243, -32), (698, -16), (700, -16), (1058, 48), (1144, -144), (1206, -144), (1226, -16), (1251, -1), (1288, -144)]

def reductionPivot9930 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 1, 1, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]

theorem reductionSound9930 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6173).moment H =
      Integer.Sparse.eval reductionProjection9930 (momentVector H) := by
  have heq : reductionPivot9930 = (fun u v => (normalNode6173).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6173).moment H = injectiveMoment H reductionPivot9930 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6173).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9930 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9930 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9930 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1964, oldProjection1215, reductionProjection9929, reductionProjection1384] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9930 (0 : Fin 4)) = canonicalInput12419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9930 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1964 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9930 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12419 hH))).trans (reductionSound1964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9930 (1 : Fin 4)) = canonicalInput12618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9930 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1215 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9930 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12618 hH))).trans (oldProjectionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9930 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1288).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9930 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9929 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9930 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9929 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9929 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9930 (3 : Fin 4)) = canonicalInput12621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9930 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9930 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12621 hH))).trans (reductionSound1384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6173).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9930 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6173).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9930 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection9930 ![reductionProjection1964, oldProjection1215, reductionProjection9929, reductionProjection1384]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9931 : Integer.Sparse (Fin 1613) := [(42, 1), (88, 1), (90, 2), (91, 1), (243, 1), (698, 1), (700, 1), (1226, 1)]

def reductionPivot9931 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![0, 1, -3, 2], ![1, 2, 0, -3]]

theorem reductionSound9931 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6237).moment H =
      Integer.Sparse.eval reductionProjection9931 (momentVector H) := by
  have heq : reductionPivot9931 = (fun u v => (normalNode6237).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6237).moment H = injectiveMoment H reductionPivot9931 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6237).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot9931 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9931 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9931 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection95, oldProjection209, reductionProjection54] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9931 (0 : Fin 3)) = canonicalInput12809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9931 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection95 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9931 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection95 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12809 hH))).trans (oldProjectionSound95 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9931 (1 : Fin 3)) = canonicalInput12743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9931 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection209 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9931 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12743 hH))).trans (oldProjectionSound209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9931 (2 : Fin 3)) = canonicalInput12736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9931 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9931 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12736 hH))).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6237).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9931 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6237).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9931 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection9931 ![oldProjection95, oldProjection209, reductionProjection54]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9932 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (42, -80), (88, -80), (90, -160), (91, -80), (243, -80), (698, -80), (700, -80), (704, -80), (1225, -80), (1226, -80)]

def reductionPivot9932 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 2, 0, -3]]

theorem reductionSound9932 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6225).moment H =
      Integer.Sparse.eval reductionProjection9932 (momentVector H) := by
  have heq : reductionPivot9932 = (fun u v => (normalNode6225).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6225).moment H = injectiveMoment H reductionPivot9932 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6225).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9932 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9932 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 3, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9932 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1200, oldProjection209, reductionProjection9931, reductionProjection6098] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9932 (0 : Fin 4)) = canonicalInput12510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9932 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1200 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9932 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12510 hH))).trans (oldProjectionSound1200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9932 (1 : Fin 4)) = canonicalInput12716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9932 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection209 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9932 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12716 hH))).trans (oldProjectionSound209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9932 (2 : Fin 4)) = (normalNode6237).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9932 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9931 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9932 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9932 (3 : Fin 4)) = canonicalInput12721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9932 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9932 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12721 hH))).trans (reductionSound6098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6225).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9932 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6225).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9932 (j : Fin 4)))
      2 1440 1440 2 ![144, 3, 9, 720] ![10, 480, 160, 2] reductionProjection9932 ![oldProjection1200, oldProjection209, reductionProjection9931, reductionProjection6098]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9933 : Integer.Sparse (Fin 1613) := [(42, 32), (60, 16), (91, 16), (94, -3), (243, 32), (700, 32), (1251, 1)]

def reductionPivot9933 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![0, 3, 0, -3], ![1, 0, -3, 2]]

theorem reductionSound9933 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6240).moment H =
      Integer.Sparse.eval reductionProjection9933 (momentVector H) := by
  have heq : reductionPivot9933 = (fun u v => (normalNode6240).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6240).moment H = injectiveMoment H reductionPivot9933 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6240).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot9933 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9933 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9933 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection92, reductionProjection48, oldProjection214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9933 (0 : Fin 3)) = canonicalInput12812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9933 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection92 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9933 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection92 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12812 hH))).trans (oldProjectionSound92 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9933 (1 : Fin 3)) = canonicalInput12788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9933 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection48 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9933 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection48 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12788 hH))).trans (reductionSound48 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9933 (2 : Fin 3)) = canonicalInput12787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9933 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9933 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12787 hH))).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6240).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9933 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6240).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9933 (j : Fin 3)))
      3 144 144 3 ![3, 3, 48] ![48, 48, 3] reductionProjection9933 ![oldProjection92, reductionProjection48, oldProjection214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9934 : Integer.Sparse (Fin 1613) := [(19, 2), (20, -1), (42, -16), (60, -8), (91, -8), (94, -4), (243, -16), (700, -16), (704, -8), (1225, -8), (1251, -1)]

def reductionPivot9934 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 3, 0, -3], ![1, 0, -2, 1]]

theorem reductionSound9934 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6227).moment H =
      Integer.Sparse.eval reductionProjection9934 (momentVector H) := by
  have heq : reductionPivot9934 = (fun u v => (normalNode6227).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6227).moment H = injectiveMoment H reductionPivot9934 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6227).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9934 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9934 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 48, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9934 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7907, oldProjection214, oldProjection1337, reductionProjection9933] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9934 (0 : Fin 4)) = canonicalInput12523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9934 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7907 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9934 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12523 hH))).trans (reductionSound7907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9934 (1 : Fin 4)) = canonicalInput12718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9934 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9934 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12718 hH))).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9934 (2 : Fin 4)) = canonicalInput12735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9934 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1337 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9934 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12735 hH))).trans (oldProjectionSound1337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9934 (3 : Fin 4)) = (normalNode6240).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9934 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9933 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9934 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9933 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6227).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9934 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6227).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9934 (j : Fin 4)))
      2 144 144 2 ![72, 48, 72, 144] ![2, 3, 2, 1] reductionProjection9934 ![reductionProjection7907, oldProjection214, oldProjection1337, reductionProjection9933]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9935 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -60), (20, 15), (42, 240), (56, -240), (60, 80), (82, -240), (88, 80), (90, 160), (91, 160), (243, 640), (493, 720), (624, 720), (697, -240), (698, 320), (700, 400), (704, 160), (1058, -480), (1144, 720), (1206, 720), (1223, -240), (1225, 160), (1226, 400), (1250, 60), (1251, -5), (1288, 720), (1323, -240)]

def reductionPivot9935 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]

theorem reductionSound9935 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6165).moment H =
      Integer.Sparse.eval reductionProjection9935 (momentVector H) := by
  have heq : reductionPivot9935 = (fun u v => (normalNode6165).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6165).moment H = injectiveMoment H reductionPivot9935 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6165).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9935 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9935 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 1440, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9935 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1566, reductionProjection9923, reductionProjection9930, reductionProjection9932, reductionProjection9934] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9935 (0 : Fin 5)) = canonicalInput1904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1566 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1566 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1904 hH))).trans (reductionSound1566 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9935 (1 : Fin 5)) = (normalNode6152).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9923 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9935 (2 : Fin 5)) = canonicalInput12699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9930 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12699 hH))).trans (reductionSound9930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9935 (3 : Fin 5)) = (normalNode6225).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9932 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9932 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9935 (4 : Fin 5)) = canonicalInput12705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9934 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9935 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12705 hH))).trans (reductionSound9934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6165).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9935 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6165).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9935 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 1440, 144] ![1, 5, 5, 1, 10] reductionProjection9935 ![reductionProjection1566, reductionProjection9923, reductionProjection9930, reductionProjection9932, reductionProjection9934]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9936 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (88, -80), (90, -80), (94, -5), (243, -160), (247, -80), (698, -80), (700, -80), (1226, -160), (1251, -20)]

def reductionPivot9936 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound9936 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6226).moment H =
      Integer.Sparse.eval reductionProjection9936 (momentVector H) := by
  have heq : reductionPivot9936 = (fun u v => (normalNode6226).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6226).moment H = injectiveMoment H reductionPivot9936 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6226).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9936 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9936 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 48, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9936 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection819, oldProjection169, reductionProjection1181, oldProjection1083] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9936 (0 : Fin 4)) = canonicalInput12517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9936 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection819 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9936 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12517 hH))).trans (oldProjectionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9936 (1 : Fin 4)) = canonicalInput12717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9936 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection169 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9936 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12717 hH))).trans (oldProjectionSound169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9936 (2 : Fin 4)) = canonicalInput12730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9936 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1181 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9936 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12730 hH))).trans (reductionSound1181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9936 (3 : Fin 4)) = canonicalInput12731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9936 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9936 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12731 hH))).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6226).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9936 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6226).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9936 (j : Fin 4)))
      2 1440 1440 2 ![720, 48, 72, 720] ![2, 30, 20, 2] reductionProjection9936 ![oldProjection819, oldProjection169, reductionProjection1181, oldProjection1083]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9937 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -8), (87, -24), (88, 16), (90, 16), (94, 5), (241, 32), (243, 32), (247, 32), (483, 144), (549, 144), (596, 144), (698, 48), (700, 16), (1055, -48), (1219, -48), (1226, 32), (1251, 2), (1388, -24)]

def reductionPivot9937 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound9937 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6166).moment H =
      Integer.Sparse.eval reductionProjection9937 (momentVector H) := by
  have heq : reductionPivot9937 = (fun u v => (normalNode6166).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6166).moment H = injectiveMoment H reductionPivot9937 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6166).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9937 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9937 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 144, 144, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9937 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1618, reductionProjection9924, reductionProjection9924, reductionProjection9936, reductionProjection9936] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9937 (0 : Fin 5)) = (normalNode857).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1618 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9937 (1 : Fin 5)) = (normalNode6153).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9924 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9937 (2 : Fin 5)) = canonicalInput12700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9924 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12700 hH))).trans (reductionSound9924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9937 (3 : Fin 5)) = (normalNode6226).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9936 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9937 (4 : Fin 5)) = canonicalInput12706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9936 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9937 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12706 hH))).trans (reductionSound9936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6166).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9937 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6166).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9937 (j : Fin 5)))
      1 144 1440 10 ![360, 144, 144, 1440, 1440] ![4, 10, 10, 1, 1] reductionProjection9937 ![reductionProjection1618, reductionProjection9924, reductionProjection9924, reductionProjection9936, reductionProjection9936]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9938 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (88, -80), (90, -160), (94, -20), (241, -80), (243, -80), (642, -720), (697, 240), (698, -320), (700, -240), (704, -80), (1226, -160), (1251, -5)]

def reductionPivot9938 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 2, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound9938 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6184).moment H =
      Integer.Sparse.eval reductionProjection9938 (momentVector H) := by
  have heq : reductionPivot9938 = (fun u v => (normalNode6184).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6184).moment H = injectiveMoment H reductionPivot9938 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6184).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9938 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9938 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9938 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1105, reductionProjection361, oldProjection519, oldProjection1036] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9938 (0 : Fin 4)) = canonicalInput12448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9938 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1105 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9938 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1105 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12448 hH))).trans (oldProjectionSound1105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9938 (1 : Fin 4)) = canonicalInput12631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9938 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection361 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9938 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12631 hH))).trans (reductionSound361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9938 (2 : Fin 4)) = canonicalInput12643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9938 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9938 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12643 hH))).trans (oldProjectionSound519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9938 (3 : Fin 4)) = canonicalInput12644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9938 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1036 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9938 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1036 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12644 hH))).trans (oldProjectionSound1036 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6184).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9938 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6184).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9938 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 1, 720] ![10, 160, 1440, 2] reductionProjection9938 ![oldProjection1105, reductionProjection361, oldProjection519, oldProjection1036]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9939 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -60), (20, 10), (76, -480), (87, -480), (88, 480), (90, 640), (94, 25), (241, 240), (243, 640), (596, 720), (642, 720), (697, -240), (698, 1600), (700, 400), (704, 80), (1055, -240), (1058, -480), (1219, -240), (1226, 1360), (1227, 400), (1250, 60), (1251, -105), (1323, -240)]

def reductionPivot9939 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound9939 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6167).moment H =
      Integer.Sparse.eval reductionProjection9939 (momentVector H) := by
  have heq : reductionPivot9939 = (fun u v => (normalNode6167).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6167).moment H = injectiveMoment H reductionPivot9939 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6167).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9939 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9939 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 720, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9939 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1300, reductionProjection7785, reductionProjection9938, reductionProjection9887, reductionProjection9905] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9939 (0 : Fin 5)) = (normalNode887).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1300 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9939 (1 : Fin 5)) = (normalNode6158).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7785 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9939 (2 : Fin 5)) = canonicalInput12701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9938 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12701 hH))).trans (reductionSound9938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9939 (3 : Fin 5)) = (normalNode6230).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9887 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9939 (4 : Fin 5)) = canonicalInput12708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9905 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9939 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12708 hH))).trans (reductionSound9905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6167).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9939 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6167).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9939 (j : Fin 5)))
      1 1440 1440 1 ![72, 720, 1440, 288, 1440] ![20, 2, 1, 5, 1] reductionProjection9939 ![reductionProjection1300, reductionProjection7785, reductionProjection9938, reductionProjection9887, reductionProjection9905]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9940 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (88, -80), (90, -80), (94, -25), (241, -160), (243, -240), (698, -640), (704, -80), (1226, -400), (1227, -240), (1251, 70)]

def reductionPivot9940 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound9940 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6233).moment H =
      Integer.Sparse.eval reductionProjection9940 (momentVector H) := by
  have heq : reductionPivot9940 = (fun u v => (normalNode6233).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6233).moment H = injectiveMoment H reductionPivot9940 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6233).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9940 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9940 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9940 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection800, oldProjection827, oldProjection959, reductionProjection5436] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9940 (0 : Fin 4)) = canonicalInput12553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9940 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection800 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9940 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12553 hH))).trans (oldProjectionSound800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9940 (1 : Fin 4)) = canonicalInput12753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9940 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9940 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12753 hH))).trans (oldProjectionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9940 (2 : Fin 4)) = canonicalInput12764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9940 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection959 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9940 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection959 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12764 hH))).trans (oldProjectionSound959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9940 (3 : Fin 4)) = canonicalInput12766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9940 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5436 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9940 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5436 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12766 hH))).trans (reductionSound5436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6233).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9940 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6233).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9940 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 9] ![2, 2, 2, 160] reductionProjection9940 ![oldProjection800, oldProjection827, oldProjection959, reductionProjection5436]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9941 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (88, -80), (90, -80), (94, 5), (241, -160), (243, -240), (698, -480), (700, -320), (704, -80), (1059, -160), (1226, -160), (1251, 10)]

def reductionPivot9941 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, 0, 1, -2]]

theorem reductionSound9941 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6234).moment H =
      Integer.Sparse.eval reductionProjection9941 (momentVector H) := by
  have heq : reductionPivot9941 = (fun u v => (normalNode6234).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6234).moment H = injectiveMoment H reductionPivot9941 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6234).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9941 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9941 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9941 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection799, oldProjection796, reductionProjection1548, oldProjection1032] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9941 (0 : Fin 4)) = canonicalInput12555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9941 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection799 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9941 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12555 hH))).trans (oldProjectionSound799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9941 (1 : Fin 4)) = canonicalInput12756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9941 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection796 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9941 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12756 hH))).trans (oldProjectionSound796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9941 (2 : Fin 4)) = canonicalInput12767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9941 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1548 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9941 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12767 hH))).trans (reductionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9941 (3 : Fin 4)) = canonicalInput12768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9941 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1032 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9941 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1032 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12768 hH))).trans (oldProjectionSound1032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6234).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9941 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6234).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9941 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 72, 720] ![2, 2, 20, 2] reductionProjection9941 ![oldProjection799, oldProjection796, reductionProjection1548, oldProjection1032]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9942 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -40), (87, -240), (88, 160), (90, 160), (94, 45), (241, 400), (243, 480), (465, 1440), (505, 720), (596, 720), (610, 720), (642, 720), (697, -480), (698, 1520), (700, 320), (704, 160), (1055, -480), (1058, -480), (1059, 160), (1144, 720), (1219, -240), (1226, 640), (1227, 480), (1250, 60), (1251, -165)]

def reductionPivot9942 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound9942 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6168).moment H =
      Integer.Sparse.eval reductionProjection9942 (momentVector H) := by
  have heq : reductionPivot9942 = (fun u v => (normalNode6168).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6168).moment H = injectiveMoment H reductionPivot9942 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6168).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9942 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9942 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9942 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1386, reductionProjection1385, reductionProjection3746, reductionProjection9940, reductionProjection9941] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9942 (0 : Fin 5)) = (normalNode893).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9942 (1 : Fin 5)) = (normalNode6161).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1385 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9942 (2 : Fin 5)) = canonicalInput12702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3746 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12702 hH))).trans (reductionSound3746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9942 (3 : Fin 5)) = (normalNode6233).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9940 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9942 (4 : Fin 5)) = canonicalInput12709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9941 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9942 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12709 hH))).trans (reductionSound9941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6168).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9942 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6168).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9942 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1440, 1440, 1440] ![1, 720, 1, 1, 1] reductionProjection9942 ![reductionProjection1386, reductionProjection1385, reductionProjection3746, reductionProjection9940, reductionProjection9941]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9943 : Integer.Sparse (Fin 1613) := [(210, -1), (465, -1), (622, -1), (1022, -1)]

def reductionPivot9943 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 2, 1, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound9943 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6201).moment H =
      Integer.Sparse.eval reductionProjection9943 (momentVector H) := by
  have heq : reductionPivot9943 = (fun u v => (normalNode6201).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6201).moment H = injectiveMoment H reductionPivot9943 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6201).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9943 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9943 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9943 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection925, oldProjection483, reductionProjection1664, reductionProjection3351] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9943 (0 : Fin 4)) = canonicalInput12465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9943 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection925 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9943 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12465 hH))).trans (reductionSound925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9943 (1 : Fin 4)) = canonicalInput12658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9943 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9943 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12658 hH))).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9943 (2 : Fin 4)) = canonicalInput12669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9943 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1664 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9943 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1664 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12669 hH))).trans (reductionSound1664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9943 (3 : Fin 4)) = canonicalInput12670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9943 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9943 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12670 hH))).trans (reductionSound3351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6201).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9943 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6201).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9943 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9943 ![reductionProjection925, oldProjection483, reductionProjection1664, reductionProjection3351]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9944 : Integer.Sparse (Fin 1613) := [(0, 1), (82, 240), (87, 240), (90, -80), (94, -5), (228, 240), (241, -80), (243, -80), (698, -560), (1219, 240), (1223, 240), (1226, -400), (1227, -320), (1251, 30)]

def reductionPivot9944 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound9944 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6229).moment H =
      Integer.Sparse.eval reductionProjection9944 (momentVector H) := by
  have heq : reductionPivot9944 = (fun u v => (normalNode6229).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6229).moment H = injectiveMoment H reductionPivot9944 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6229).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9944 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9944 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 720, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9944 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1239, reductionProjection1167, oldProjection827, oldProjection730] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9944 (0 : Fin 4)) = canonicalInput12530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9944 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9944 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12530 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9944 (1 : Fin 4)) = (normalNode6243).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9944 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1167 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9944 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9944 (2 : Fin 4)) = canonicalInput12739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9944 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9944 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12739 hH))).trans (oldProjectionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9944 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node730⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9944 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection730 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9944 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6229).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9944 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6229).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9944 (j : Fin 4)))
      2 1440 1440 2 ![9, 9, 720, 9] ![160, 160, 2, 160] reductionProjection9944 ![oldProjection1239, reductionProjection1167, oldProjection827, oldProjection730]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9945 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (56, 120), (81, 120), (82, 120), (228, 120), (241, -40), (243, -40), (698, -120), (700, -40), (1058, 240), (1059, -40), (1223, 120), (1251, 5)]

def reductionPivot9945 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![0, 1, 1, -2], ![0, 2, 0, -2], ![1, 0, -2, 1]]

theorem reductionSound9945 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6235).moment H =
      Integer.Sparse.eval reductionProjection9945 (momentVector H) := by
  have heq : reductionPivot9945 = (fun u v => (normalNode6235).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6235).moment H = injectiveMoment H reductionPivot9945 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6235).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9945 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9945 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9945 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1329, oldProjection796, oldProjection731, reductionProjection1204] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9945 (0 : Fin 4)) = canonicalInput12561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9945 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9945 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12561 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9945 (1 : Fin 4)) = canonicalInput12769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9945 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection796 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9945 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12769 hH))).trans (oldProjectionSound796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9945 (2 : Fin 4)) = canonicalInput12772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9945 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection731 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9945 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12772 hH))).trans (oldProjectionSound731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9945 (3 : Fin 4)) = (normalNode6252).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9945 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1204 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9945 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6235).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9945 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6235).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9945 (j : Fin 4)))
      2 720 720 2 ![144, 720, 720, 3] ![5, 1, 1, 240] reductionProjection9945 ![oldProjection1329, oldProjection796, oldProjection731, reductionProjection1204]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9946 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -20), (56, -240), (81, -240), (82, -480), (87, -240), (90, 80), (94, 5), (174, 720), (210, 720), (211, 720), (228, -480), (241, 160), (243, 160), (465, 720), (616, 720), (622, 720), (698, 880), (700, 80), (1022, 720), (1055, -240), (1058, -720), (1059, 80), (1219, -240), (1223, -480), (1226, 400), (1227, 400), (1251, -55), (1287, -1440)]

def reductionPivot9946 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound9946 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6169).moment H =
      Integer.Sparse.eval reductionProjection9946 (momentVector H) := by
  have heq : reductionPivot9946 = (fun u v => (normalNode6169).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6169).moment H = injectiveMoment H reductionPivot9946 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6169).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9946 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9946 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1, 2, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9946 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1626, reductionProjection933, reductionProjection9943, reductionProjection9944, reductionProjection9945] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9946 (0 : Fin 5)) = canonicalInput1919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1626 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1919 hH))).trans (reductionSound1626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9946 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1287).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection933 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection933 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9946 (2 : Fin 5)) = canonicalInput12703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9943 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12703 hH))).trans (reductionSound9943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9946 (3 : Fin 5)) = canonicalInput12710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9944 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12710 hH))).trans (reductionSound9944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9946 (4 : Fin 5)) = canonicalInput12711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9945 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9946 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12711 hH))).trans (reductionSound9945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6169).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9946 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6169).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9946 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1, 2, 1440, 720] ![1, 1440, 720, 1, 2] reductionProjection9946 ![reductionProjection1626, reductionProjection933, reductionProjection9943, reductionProjection9944, reductionProjection9945]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9947 : Integer.Sparse (Fin 1613) := [(210, -1), (596, -1), (623, -1), (1288, -1)]

def reductionPivot9947 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 1, 1, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]

theorem reductionSound9947 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6174).moment H =
      Integer.Sparse.eval reductionProjection9947 (momentVector H) := by
  have heq : reductionPivot9947 = (fun u v => (normalNode6174).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6174).moment H = injectiveMoment H reductionPivot9947 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6174).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9947 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9947 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9947 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection516, reductionProjection1664, oldProjection509, reductionProjection9929] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9947 (0 : Fin 4)) = canonicalInput14042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9947 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection516 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9947 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14042 hH))).trans (oldProjectionSound516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9947 (1 : Fin 4)) = canonicalInput12669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9947 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1664 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9947 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1664 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12669 hH))).trans (reductionSound1664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9947 (2 : Fin 4)) = canonicalInput12623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9947 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9947 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12623 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9947 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1288).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9947 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9929 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9947 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9929 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9929 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6174).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9947 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6174).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9947 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9947 ![oldProjection516, reductionProjection1664, oldProjection509, reductionProjection9929]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9948 : Integer.Sparse (Fin 1613) := [(210, -1), (442, -1), (465, -1), (469, -1)]

def reductionPivot9948 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 2, 0, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]

theorem reductionSound9948 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6196).moment H =
      Integer.Sparse.eval reductionProjection9948 (momentVector H) := by
  have heq : reductionPivot9948 = (fun u v => (normalNode6196).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6196).moment H = injectiveMoment H reductionPivot9948 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6196).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9948 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9948 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9948 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4560, reductionProjection1664, oldProjection483, reductionProjection4312] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9948 (0 : Fin 4)) = canonicalInput12805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9948 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4560 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9948 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4560 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12805 hH))).trans (reductionSound4560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9948 (1 : Fin 4)) = canonicalInput12669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9948 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1664 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9948 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1664 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12669 hH))).trans (reductionSound1664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9948 (2 : Fin 4)) = canonicalInput12658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9948 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9948 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12658 hH))).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9948 (3 : Fin 4)) = canonicalInput12657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9948 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4312 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9948 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12657 hH))).trans (reductionSound4312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6196).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9948 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6196).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9948 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9948 ![reductionProjection4560, reductionProjection1664, oldProjection483, reductionProjection4312]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9949 : Integer.Sparse (Fin 1613) := [(88, 2), (90, 3), (91, 1), (698, 1), (1226, 2)]

def reductionPivot9949 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![0, 1, -3, 2], ![1, 1, 1, -3]]

theorem reductionSound9949 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6242).moment H =
      Integer.Sparse.eval reductionProjection9949 (momentVector H) := by
  have heq : reductionPivot9949 = (fun u v => (normalNode6242).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6242).moment H = injectiveMoment H reductionPivot9949 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6242).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot9949 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9949 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9949 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection109, oldProjection108, reductionProjection54] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9949 (0 : Fin 3)) = canonicalInput14105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9949 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection109 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9949 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14105 hH))).trans (oldProjectionSound109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9949 (1 : Fin 3)) = canonicalInput12775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9949 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9949 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12775 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9949 (2 : Fin 3)) = canonicalInput12736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9949 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9949 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12736 hH))).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6242).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9949 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6242).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9949 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection9949 ![oldProjection109, oldProjection108, reductionProjection54]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9950 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -80), (82, 240), (87, 240), (88, -160), (90, -400), (91, -80), (241, -80), (243, -160), (698, -480), (700, -160), (1226, -400), (1227, -80), (1251, 15)]

def reductionPivot9950 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound9950 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6236).moment H =
      Integer.Sparse.eval reductionProjection9950 (momentVector H) := by
  have heq : reductionPivot9950 = (fun u v => (normalNode6236).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6236).moment H = injectiveMoment H reductionPivot9950 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6236).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9950 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9950 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9950 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection161, oldProjection827, reductionProjection1167, reductionProjection9949] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9950 (0 : Fin 4)) = canonicalInput12808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9950 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection161 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9950 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12808 hH))).trans (reductionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9950 (1 : Fin 4)) = canonicalInput12739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9950 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9950 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12739 hH))).trans (oldProjectionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9950 (2 : Fin 4)) = (normalNode6243).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9950 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1167 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9950 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9950 (3 : Fin 4)) = (normalNode6242).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9950 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9949 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9950 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9949 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6236).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9950 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6236).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9950 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 9, 9] ![10, 2, 160, 160] reductionProjection9950 ![reductionProjection161, oldProjection827, reductionProjection1167, reductionProjection9949]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9951 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -160), (56, 240), (60, -80), (82, 240), (88, -80), (90, -160), (91, -80), (94, 10), (241, -80), (243, -240), (698, -320), (700, -480), (1058, 240), (1059, -160), (1226, -80), (1251, 25)]

def reductionPivot9951 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![0, 1, 0, -1], ![0, 2, 0, -2], ![1, 0, -3, 2]]

theorem reductionSound9951 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6239).moment H =
      Integer.Sparse.eval reductionProjection9951 (momentVector H) := by
  have heq : reductionPivot9951 = (fun u v => (normalNode6239).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6239).moment H = injectiveMoment H reductionPivot9951 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6239).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9951 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9951 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 3, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9951 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9894, reductionProjection1204, reductionProjection9931, oldProjection796] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9951 (0 : Fin 4)) = canonicalInput12811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9951 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9894 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9951 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12811 hH))).trans (reductionSound9894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9951 (1 : Fin 4)) = (normalNode6252).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9951 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1204 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9951 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9951 (2 : Fin 4)) = canonicalInput12770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9951 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9931 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9951 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12770 hH))).trans (reductionSound9931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9951 (3 : Fin 4)) = canonicalInput12769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9951 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection796 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9951 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12769 hH))).trans (oldProjectionSound796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6239).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9951 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6239).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9951 (j : Fin 4)))
      2 1440 1440 2 ![9, 3, 9, 720] ![160, 480, 160, 2] reductionProjection9951 ![reductionProjection9894, reductionProjection1204, reductionProjection9931, oldProjection796]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

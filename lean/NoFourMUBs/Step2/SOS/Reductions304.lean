import NoFourMUBs.Step2.SOS.Canonical016
import NoFourMUBs.Step2.SOS.Canonical165
import NoFourMUBs.Step2.SOS.Canonical189
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical192
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical372
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions088
import NoFourMUBs.Step2.SOS.Reductions089
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions221
import NoFourMUBs.Step2.SOS.Reductions228
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions258
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions291
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions302
import NoFourMUBs.Step2.SOS.Reductions303
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical169
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical170
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical171
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical249
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9728 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (20, -5), (94, 5), (105, -40), (241, -40), (243, -120), (698, -120), (700, -40), (1047, 120), (1219, 120), (1226, -80), (1227, -40), (1251, -5)]

def reductionPivot9728 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, 2, -2], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, -2, 0, 1]]

theorem reductionSound9728 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode11182).moment H =
      Integer.Sparse.eval reductionProjection9728 (momentVector H) := by
  have heq : reductionPivot9728 = (fun u v => (normalNode11182).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11182).moment H = injectiveMoment H reductionPivot9728 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11182).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9728 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9728 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 360, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9728 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7895, oldProjection1316, oldProjection1369, oldProjection1231] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9728 (0 : Fin 4)) = (normalNode11191).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9728 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7895 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9728 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9728 (1 : Fin 4)) = canonicalInput23402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9728 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1316 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9728 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23402 hH))).trans (oldProjectionSound1316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9728 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1369⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9728 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1369 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9728 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9728 (3 : Fin 4)) = canonicalInput23401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9728 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1231 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9728 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23401 hH))).trans (oldProjectionSound1231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11182).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9728 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11182).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9728 (j : Fin 4)))
      2 720 720 2 ![72, 360, 144, 144] ![10, 2, 5, 5] reductionProjection9728 ![reductionProjection7895, oldProjection1316, oldProjection1369, oldProjection1231]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9729 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -8), (20, 4), (72, -96), (81, -48), (94, -7), (105, 16), (241, 16), (243, 128), (682, -96), (698, 128), (700, 96), (704, 16), (750, 144), (806, 144), (1040, -48), (1044, -144), (1045, -48), (1047, -48), (1050, -96), (1052, -192), (1059, 32), (1174, 288), (1217, -96), (1219, -48), (1221, -144), (1225, 16), (1226, 80), (1227, 16), (1251, 2)]

def reductionPivot9729 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound9729 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5950).moment H =
      Integer.Sparse.eval reductionProjection9729 (momentVector H) := by
  have heq : reductionPivot9729 = (fun u v => (normalNode5950).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5950).moment H = injectiveMoment H reductionPivot9729 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5950).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9729 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9729 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9729 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9728, oldProjection2366, reductionProjection7301, reductionProjection2965, oldProjection2370] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9729 (0 : Fin 5)) = canonicalInput10586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9728 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10586 hH))).trans (reductionSound9728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9729 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2366⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2366 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9729 (2 : Fin 5)) = canonicalInput12152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7301 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12152 hH))).trans (reductionSound7301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9729 (3 : Fin 5)) = canonicalInput12155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2965 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12155 hH))).trans (reductionSound2965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9729 (4 : Fin 5)) = canonicalInput12156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2370 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9729 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12156 hH))).trans (oldProjectionSound2370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5950).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9729 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5950).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9729 (j : Fin 5)))
      1 288 1440 5 ![720, 288, 288, 1440, 1440] ![2, 5, 5, 1, 1] reductionProjection9729 ![reductionProjection9728, oldProjection2366, reductionProjection7301, reductionProjection2965, oldProjection2370]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9730 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (105, 16), (243, 64), (700, 16), (1044, -144), (1045, -48), (1052, -48), (1184, 144), (1197, 144), (1217, -144), (1225, 16), (1226, 16), (1251, 1), (1276, 144)]

def reductionPivot9730 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound9730 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5951).moment H =
      Integer.Sparse.eval reductionProjection9730 (momentVector H) := by
  have heq : reductionPivot9730 = (fun u v => (normalNode5951).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5951).moment H = injectiveMoment H reductionPivot9730 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5951).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9730 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9730 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 288, 288, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9730 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9034, reductionProjection9398, reductionProjection2878, reductionProjection8109, reductionProjection2876] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9730 (0 : Fin 5)) = canonicalInput10589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9034 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9034 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10589 hH))).trans (reductionSound9034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9730 (1 : Fin 5)) = (normalNode5921).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9398 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9730 (2 : Fin 5)) = canonicalInput12153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2878 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2878 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12153 hH))).trans (reductionSound2878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9730 (3 : Fin 5)) = canonicalInput12159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8109 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12159 hH))).trans (reductionSound8109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9730 (4 : Fin 5)) = (normalNode5962).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2876 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9730 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2876 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5951).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9730 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5951).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9730 (j : Fin 5)))
      1 144 288 2 ![144, 288, 288, 288, 72] ![2, 1, 1, 1, 4] reductionProjection9730 ![reductionProjection9034, reductionProjection9398, reductionProjection2878, reductionProjection8109, reductionProjection2876]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9731 : Integer.Sparse (Fin 1613) := [(93, 3), (94, 1), (243, 16), (1044, -24), (1047, -24), (1060, -24), (1147, 36), (1154, 72), (1174, 36), (1184, 72), (1197, 72), (1217, -24), (1225, 8), (1226, 8), (1275, -72), (1276, 36)]

def reductionPivot9731 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound9731 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode5952).moment H =
      Integer.Sparse.eval reductionProjection9731 (momentVector H) := by
  have heq : reductionPivot9731 = (fun u v => (normalNode5952).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5952).moment H = injectiveMoment H reductionPivot9731 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5952).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9731 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9731 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 288, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9731 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9407, reductionProjection9700, reductionProjection9706, reductionProjection8109, reductionProjection9401] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9731 (0 : Fin 5)) = canonicalInput10590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9407 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10590 hH))).trans (reductionSound9407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9731 (1 : Fin 5)) = (normalNode5922).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9700 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9731 (2 : Fin 5)) = canonicalInput12154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9706 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9706 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12154 hH))).trans (reductionSound9706 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9731 (3 : Fin 5)) = canonicalInput12160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8109 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12160 hH))).trans (reductionSound8109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9731 (4 : Fin 5)) = canonicalInput12161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9401 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9731 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12161 hH))).trans (reductionSound9401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5952).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9731 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5952).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9731 (j : Fin 5)))
      1 72 288 4 ![288, 288, 288, 288, 1] ![1, 1, 1, 1, 288] reductionProjection9731 ![reductionProjection9407, reductionProjection9700, reductionProjection9706, reductionProjection8109, reductionProjection9401]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9732 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -10), (418, -144), (1044, 48), (1147, -144), (1217, 48), (1251, -1), (1269, -144)]

def reductionPivot9732 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![1, -1, -1, 1], ![1, -1, 3, -3]]

theorem reductionSound9732 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5959).moment H =
      Integer.Sparse.eval reductionProjection9732 (momentVector H) := by
  have heq : reductionPivot9732 = (fun u v => (normalNode5959).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5959).moment H = injectiveMoment H reductionPivot9732 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5959).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9732 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9732 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9732 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9659, oldProjection471, oldProjection1375, reductionProjection9021] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9732 (0 : Fin 4)) = canonicalInput12247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9732 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9659 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9732 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9659 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12247 hH))).trans (reductionSound9659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9732 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5424 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9732 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection471 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9732 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5424 hH))).trans (oldProjectionSound471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9732 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5415 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9732 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1375 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9732 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5415 hH))).trans (oldProjectionSound1375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9732 (3 : Fin 4)) = canonicalInput12165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9732 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9021 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9732 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12165 hH))).trans (reductionSound9021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5959).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9732 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5959).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9732 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 1] ![288, 288, 2, 288] reductionProjection9732 ![reductionProjection9659, oldProjection471, oldProjection1375, reductionProjection9021]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9733 : Integer.Sparse (Fin 1613) := [(20, 1), (72, -48), (94, 6), (418, 144), (553, 144), (682, -48), (1044, -48), (1050, -48), (1147, 72), (1174, 72), (1217, -48), (1221, -72), (1251, 5), (1258, 72), (1269, 144), (1274, -144), (1389, -24)]

def reductionPivot9733 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]

theorem reductionSound9733 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5955).moment H =
      Integer.Sparse.eval reductionProjection9733 (momentVector H) := by
  have heq : reductionPivot9733 = (fun u v => (normalNode5955).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5955).moment H = injectiveMoment H reductionPivot9733 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5955).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9733 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9733 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9733 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9688, oldProjection2372, reductionProjection7087, oldProjection2370, reductionProjection9732] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9733 (0 : Fin 5)) = canonicalInput12243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9688 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12243 hH))).trans (reductionSound9688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9733 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2372⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2372 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9733 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1274).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7087 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9733 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2370⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2370 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9733 (4 : Fin 5)) = (normalNode5959).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9732 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9733 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9732 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9732 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5955).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9733 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5955).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9733 (j : Fin 5)))
      1 144 1440 10 ![288, 1440, 1, 1440, 288] ![5, 1, 1440, 1, 5] reductionProjection9733 ![reductionProjection9688, oldProjection2372, reductionProjection7087, oldProjection2370, reductionProjection9732]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9734 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 5), (72, -720), (94, 15), (418, 720), (682, -480), (758, 720), (869, 1440), (1044, -240), (1050, -480), (1174, 2880), (1217, -240), (1221, -960), (1251, 20), (1270, 1440), (1321, -240), (1389, -480)]

def reductionPivot9734 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound9734 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5956).moment H =
      Integer.Sparse.eval reductionProjection9734 (momentVector H) := by
  have heq : reductionPivot9734 = (fun u v => (normalNode5956).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5956).moment H = injectiveMoment H reductionPivot9734 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5956).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9734 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9734 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 288, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9734 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2903, oldProjection2000, reductionProjection2723, reductionProjection2822, oldProjection2370] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9734 (0 : Fin 5)) = canonicalInput12244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2903 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12244 hH))).trans (reductionSound2903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9734 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5420 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2000 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5420 hH))).trans (oldProjectionSound2000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9734 (2 : Fin 5)) = (normalNode5961).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2723 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9734 (3 : Fin 5)) = (normalNode5960).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2822 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9734 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2370⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2370 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9734 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5956).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9734 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5956).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9734 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 288, 2, 1440] ![2, 1, 5, 720, 1] reductionProjection9734 ![reductionProjection2903, oldProjection2000, reductionProjection2723, reductionProjection2822, oldProjection2370]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9735 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (72, -60), (94, 5), (418, 360), (682, -120), (690, -60), (758, 540), (864, 180), (1044, -120), (1050, -120), (1174, 360), (1217, -120), (1221, -120), (1251, 5), (1276, 180)]

def reductionPivot9735 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound9735 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode5957).moment H =
      Integer.Sparse.eval reductionProjection9735 (momentVector H) := by
  have heq : reductionPivot9735 = (fun u v => (normalNode5957).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5957).moment H = injectiveMoment H reductionPivot9735 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5957).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9735 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9735 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 360, 72, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9735 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2356, oldProjection1998, reductionProjection2876, reductionProjection2723, reductionProjection2723] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9735 (0 : Fin 5)) = canonicalInput12245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2356 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12245 hH))).trans (oldProjectionSound2356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9735 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5422 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1998 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5422 hH))).trans (oldProjectionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9735 (2 : Fin 5)) = (normalNode5962).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2876 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2876 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9735 (3 : Fin 5)) = canonicalInput12157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2723 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12157 hH))).trans (reductionSound2723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9735 (4 : Fin 5)) = (normalNode5961).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2723 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9735 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5957).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9735 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5957).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9735 (j : Fin 5)))
      1 360 1440 4 ![144, 360, 72, 288, 288] ![10, 4, 20, 5, 5] reductionProjection9735 ![oldProjection2356, oldProjection1998, reductionProjection2876, reductionProjection2723, reductionProjection2723]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9736 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -4), (94, 9), (418, 144), (553, 144), (758, 144), (864, 144), (869, 144), (1050, -144), (1114, 144), (1174, 144), (1221, -192), (1250, 12), (1251, 14), (1266, 144), (1277, -288), (1389, -48)]

def reductionPivot9736 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, 0, 0], ![0, 0, -2, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound9736 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5963).moment H =
      Integer.Sparse.eval reductionProjection9736 (momentVector H) := by
  have heq : reductionPivot9736 = (fun u v => (normalNode5963).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5963).moment H = injectiveMoment H reductionPivot9736 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5963).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9736 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9736 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 1440, 1, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9736 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2355, reductionProjection2723, oldProjection2000, reductionProjection2813, oldProjection1998] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9736 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2355⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2355 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9736 (1 : Fin 5)) = (normalNode5961).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2723 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9736 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5420 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2000 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5420 hH))).trans (oldProjectionSound2000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9736 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1277).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2813 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9736 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5422 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1998 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9736 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5422 hH))).trans (oldProjectionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5963).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9736 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5963).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9736 (j : Fin 5)))
      1 288 1440 5 ![720, 288, 1440, 1, 360] ![2, 5, 1, 1440, 4] reductionProjection9736 ![oldProjection2355, reductionProjection2723, oldProjection2000, reductionProjection2813, oldProjection1998]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9737 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 15), (418, 360), (541, 360), (553, 720), (869, 360), (1050, -240), (1221, -720), (1251, -25), (1277, -720), (1389, -720)]

def reductionPivot9737 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]

theorem reductionSound9737 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5964).moment H =
      Integer.Sparse.eval reductionProjection9737 (momentVector H) := by
  have heq : reductionPivot9737 = (fun u v => (normalNode5964).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5964).moment H = injectiveMoment H reductionPivot9737 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5964).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9737 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9737 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 1, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9737 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4799, oldProjection2017, reductionProjection2813, oldProjection2000, oldProjection2372] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9737 (0 : Fin 5)) = canonicalInput12249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4799 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12249 hH))).trans (reductionSound4799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9737 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5435 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5435 hH))).trans (oldProjectionSound2017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9737 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1277).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2813 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9737 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5420 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2000 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5420 hH))).trans (oldProjectionSound2000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9737 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2372⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2372 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9737 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5964).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9737 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5964).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9737 (j : Fin 5)))
      1 720 1440 2 ![288, 144, 1, 1440, 1440] ![5, 10, 1440, 1, 1] reductionProjection9737 ![reductionProjection4799, oldProjection2017, reductionProjection2813, oldProjection2000, oldProjection2372]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9738 : Integer.Sparse (Fin 1613) := [(4, 1), (19, -4), (20, -8), (27, 32), (94, 3), (106, 48), (244, 48)]

def reductionPivot9738 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 4, -2], ![-1, -4, 5], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound9738 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5968).moment H =
      Integer.Sparse.eval reductionProjection9738 (momentVector H) := by
  have heq : reductionPivot9738 = (fun u v => (normalNode5968).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5968).moment H = injectiveMoment H reductionPivot9738 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5968).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9738 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9738 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 24, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9738 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection236, oldProjection157, reductionProjection8264, reductionProjection8264] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9738 (0 : Fin 4)) = canonicalInput23800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9738 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection236 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9738 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23800 hH))).trans (oldProjectionSound236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9738 (1 : Fin 4)) = canonicalInput12334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9738 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection157 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9738 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12334 hH))).trans (oldProjectionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9738 (2 : Fin 4)) = canonicalInput12324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9738 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8264 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9738 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12324 hH))).trans (reductionSound8264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9738 (3 : Fin 4)) = canonicalInput12323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9738 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8264 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9738 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12323 hH))).trans (reductionSound8264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5968).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9738 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5968).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9738 (j : Fin 4)))
      2 96 96 2 ![48, 24, 3, 3] ![2, 4, 32, 32] reductionProjection9738 ![oldProjection236, oldProjection157, reductionProjection8264, reductionProjection8264]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9739 : Integer.Sparse (Fin 1613) := [(3, 12), (4, -1), (19, 28), (20, -2), (27, -32), (42, -32), (46, -48), (94, -5), (106, -48), (243, -48), (244, -48), (700, -48), (701, -96), (703, -96), (704, -48), (1033, 144), (1251, -4)]

def reductionPivot9739 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 3, -1], ![-1, -4, 5], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound9739 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5966).moment H =
      Integer.Sparse.eval reductionProjection9739 (momentVector H) := by
  have heq : reductionPivot9739 = (fun u v => (normalNode5966).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5966).moment H = injectiveMoment H reductionPivot9739 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5966).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9739 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9739 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9739 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9738, oldProjection312, reductionProjection9693, reductionProjection9693, reductionProjection9693] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9739 (0 : Fin 5)) = (normalNode5968).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9738 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9738 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9738 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9739 (1 : Fin 5)) = canonicalInput12287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection312 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12287 hH))).trans (oldProjectionSound312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9739 (2 : Fin 5)) = canonicalInput12285.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9693 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12285 hH))).trans (reductionSound9693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9739 (3 : Fin 5)) = canonicalInput12283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9693 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12283 hH))).trans (reductionSound9693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9739 (4 : Fin 5)) = (normalNode5967).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9693 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9739 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5966).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9739 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5966).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9739 (j : Fin 5)))
      1 96 96 1 ![96, 96, 96, 96, 96] ![1, 1, 1, 1, 1] reductionProjection9739 ![reductionProjection9738, oldProjection312, reductionProjection9693, reductionProjection9693, reductionProjection9693]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9740 : Integer.Sparse (Fin 1613) := [(4, -1), (19, 16), (20, 10), (27, -32), (42, -32), (91, -96), (94, 16), (106, -48), (243, -192), (244, -96), (700, -48), (1225, -96), (1251, -7)]

def reductionPivot9740 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 4, -2], ![-1, -3, 4], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound9740 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5969).moment H =
      Integer.Sparse.eval reductionProjection9740 (momentVector H) := by
  have heq : reductionPivot9740 = (fun u v => (normalNode5969).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5969).moment H = injectiveMoment H reductionPivot9740 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5969).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9740 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9740 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9740 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection312, reductionProjection9738, oldProjection428, oldProjection428, oldProjection428] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9740 (0 : Fin 5)) = canonicalInput12287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection312 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12287 hH))).trans (oldProjectionSound312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9740 (1 : Fin 5)) = (normalNode5968).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9738 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9738 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9738 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9740 (2 : Fin 5)) = canonicalInput12325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection428 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12325 hH))).trans (oldProjectionSound428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9740 (3 : Fin 5)) = canonicalInput12326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection428 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12326 hH))).trans (oldProjectionSound428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9740 (4 : Fin 5)) = canonicalInput12327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection428 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9740 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12327 hH))).trans (oldProjectionSound428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5969).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9740 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5969).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9740 (j : Fin 5)))
      1 96 96 1 ![96, 96, 96, 96, 96] ![1, 1, 1, 1, 1] reductionProjection9740 ![oldProjection312, reductionProjection9738, oldProjection428, oldProjection428, oldProjection428]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9741 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 4), (20, -3), (57, 96), (88, -16), (94, -12), (231, 144), (238, 144), (241, -64), (243, -48), (247, -48), (1057, 144), (1251, -9)]

def reductionPivot9741 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 4, -2], ![-1, -2, 3], ![0, -2, 2], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound9741 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5970).moment H =
      Integer.Sparse.eval reductionProjection9741 (momentVector H) := by
  have heq : reductionPivot9741 = (fun u v => (normalNode5970).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5970).moment H = injectiveMoment H reductionPivot9741 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5970).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9741 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9741 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 24, 96, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9741 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection877, oldProjection446, oldProjection427, reductionProjection8262, reductionProjection8262] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9741 (0 : Fin 5)) = canonicalInput23801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection877 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23801 hH))).trans (oldProjectionSound877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9741 (1 : Fin 5)) = canonicalInput12335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection446 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12335 hH))).trans (oldProjectionSound446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9741 (2 : Fin 5)) = canonicalInput12330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection427 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12330 hH))).trans (oldProjectionSound427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9741 (3 : Fin 5)) = canonicalInput12329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8262 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12329 hH))).trans (reductionSound8262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9741 (4 : Fin 5)) = canonicalInput12328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8262 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9741 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12328 hH))).trans (reductionSound8262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5970).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9741 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5970).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9741 (j : Fin 5)))
      1 96 96 1 ![96, 24, 96, 2, 2] ![1, 4, 1, 48, 48] reductionProjection9741 ![oldProjection877, oldProjection446, oldProjection427, reductionProjection8262, reductionProjection8262]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9742 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 36), (20, -1), (59, 96), (94, -1), (229, 144), (243, -80), (244, -48), (700, -48), (704, -48), (1060, 144), (1251, -12)]

def reductionPivot9742 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 4, -2], ![-1, -1, 2], ![0, -3, 3], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound9742 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5971).moment H =
      Integer.Sparse.eval reductionProjection9742 (momentVector H) := by
  have heq : reductionPivot9742 = (fun u v => (normalNode5971).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5971).moment H = injectiveMoment H reductionPivot9742 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5971).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9742 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9742 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 96, 96, 6, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9742 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1144, oldProjection445, oldProjection425, reductionProjection8263, reductionProjection8263] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9742 (0 : Fin 5)) = canonicalInput23802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1144 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23802 hH))).trans (oldProjectionSound1144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9742 (1 : Fin 5)) = canonicalInput12336.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection445 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12336 hH))).trans (oldProjectionSound445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9742 (2 : Fin 5)) = canonicalInput12333.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection425 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12333 hH))).trans (oldProjectionSound425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9742 (3 : Fin 5)) = canonicalInput12332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8263 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12332 hH))).trans (reductionSound8263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9742 (4 : Fin 5)) = canonicalInput12331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8263 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9742 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12331 hH))).trans (reductionSound8263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5971).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9742 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5971).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9742 (j : Fin 5)))
      1 96 96 1 ![48, 96, 96, 6, 6] ![2, 1, 1, 16, 16] reductionProjection9742 ![oldProjection1144, oldProjection445, oldProjection425, reductionProjection8263, reductionProjection8263]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9743 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (20, -3), (94, -2), (98, -16)]

def reductionPivot9743 : Matrix (Fin 4) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, -4, 5], ![1, 1, -2], ![1, 3, -4]]

theorem reductionSound9743 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5975).moment H =
      Integer.Sparse.eval reductionProjection9743 (momentVector H) := by
  have heq : reductionPivot9743 = (fun u v => (normalNode5975).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5975).moment H = injectiveMoment H reductionPivot9743 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5975).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot9743 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9743 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 16, 16] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9743 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection447, oldProjection47, oldProjection49] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9743 (0 : Fin 3)) = (NoFourMUBs.Step2.SOS.Semantics.code98).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9743 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection447 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9743 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9743 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node47⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9743 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection47 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9743 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection47 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound47 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9743 (2 : Fin 3)) = canonicalInput12350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9743 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9743 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12350 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode5975).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9743 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5975).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9743 (j : Fin 3)))
      3 48 48 3 ![1, 16, 16] ![48, 3, 3] reductionProjection9743 ![reductionProjection447, oldProjection47, oldProjection49]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9744 : Integer.Sparse (Fin 1613) := [(3, -8), (19, -8), (20, 1), (94, 2), (108, 16), (247, 8), (1251, 1), (1278, -24)]

def reductionPivot9744 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 1, 0], ![-1, -4, 5], ![0, 1, -1], ![1, 1, -2], ![1, 1, -2]]

theorem reductionSound9744 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5977).moment H =
      Integer.Sparse.eval reductionProjection9744 (momentVector H) := by
  have heq : reductionPivot9744 = (fun u v => (normalNode5977).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5977).moment H = injectiveMoment H reductionPivot9744 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5977).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9744 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9744 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9744 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection124, oldProjection234, oldProjection238, oldProjection238] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9744 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node124⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9744 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection124 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9744 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9744 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node234⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9744 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9744 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9744 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node238⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9744 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection238 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9744 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9744 (3 : Fin 4)) = canonicalInput12347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9744 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection238 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9744 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12347 hH))).trans (oldProjectionSound238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5977).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9744 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5977).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9744 (j : Fin 4)))
      2 48 48 2 ![3, 1, 48, 48] ![16, 48, 1, 1] reductionProjection9744 ![oldProjection124, oldProjection234, oldProjection238, oldProjection238]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9745 : Integer.Sparse (Fin 1613) := [(3, -20), (19, -8), (20, 3), (94, 5), (104, 16), (108, 16), (703, 16), (1251, 2)]

def reductionPivot9745 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 1, 0], ![-1, -4, 5], ![0, 2, -2], ![1, 0, -1], ![1, 1, -2]]

theorem reductionSound9745 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5978).moment H =
      Integer.Sparse.eval reductionProjection9745 (momentVector H) := by
  have heq : reductionPivot9745 = (fun u v => (normalNode5978).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5978).moment H = injectiveMoment H reductionPivot9745 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5978).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9745 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9745 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 24, 48, 6] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9745 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection127, oldProjection235, oldProjection238, oldProjection240] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9745 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9745 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9745 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9745 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node235⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9745 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection235 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9745 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9745 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5481 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9745 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection238 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9745 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5481 hH))).trans (oldProjectionSound238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9745 (3 : Fin 4)) = canonicalInput12348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9745 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection240 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9745 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12348 hH))).trans (oldProjectionSound240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5978).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9745 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5978).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9745 (j : Fin 4)))
      2 96 96 2 ![48, 24, 48, 6] ![2, 4, 2, 16] reductionProjection9745 ![oldProjection127, oldProjection235, oldProjection238, oldProjection240]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9746 : Integer.Sparse (Fin 1613) := [(3, 7), (19, 5), (20, -1), (94, -2), (104, -8), (108, -20), (247, -6), (679, 12), (703, -4), (1061, 6), (1251, -1), (1278, 12)]

def reductionPivot9746 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-1, -4, 5], ![-1, 1, 0], ![1, 0, -1], ![1, 1, -2], ![1, 1, -2]]

theorem reductionSound9746 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode5976).moment H =
      Integer.Sparse.eval reductionProjection9746 (momentVector H) := by
  have heq : reductionPivot9746 = (fun u v => (normalNode5976).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5976).moment H = injectiveMoment H reductionPivot9746 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5976).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9746 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9746 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 2, 48, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9746 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection302, reductionProjection9694, reductionProjection9744, reductionProjection9745, reductionProjection9745] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9746 (0 : Fin 5)) = canonicalInput1041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection302 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound1041 hH))).trans (oldProjectionSound302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9746 (1 : Fin 5)) = canonicalInput12338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9694 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12338 hH))).trans (reductionSound9694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9746 (2 : Fin 5)) = (normalNode5977).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9744 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9746 (3 : Fin 5)) = canonicalInput12339.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9745 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12339 hH))).trans (reductionSound9745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9746 (4 : Fin 5)) = canonicalInput12340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9745 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9746 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12340 hH))).trans (reductionSound9745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5976).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9746 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5976).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9746 (j : Fin 5)))
      1 12 96 8 ![48, 2, 48, 96, 96] ![2, 48, 2, 1, 1] reductionProjection9746 ![oldProjection302, reductionProjection9694, reductionProjection9744, reductionProjection9745, reductionProjection9745]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9747 : Integer.Sparse (Fin 1613) := [(3, 2), (4, -1), (94, -1)]

def reductionPivot9747 : Matrix (Fin 4) (Fin 3) ℤ := ![![-1, 1, 0], ![-1, -4, 5], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound9747 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode5979).moment H =
      Integer.Sparse.eval reductionProjection9747 (momentVector H) := by
  have heq : reductionPivot9747 = (fun u v => (normalNode5979).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5979).moment H = injectiveMoment H reductionPivot9747 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5979).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot9747 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9747 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 16, 16] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9747 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection49, oldProjection47, oldProjection50] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9747 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw962 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9747 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9747 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical962 hH))).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9747 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node47⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9747 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection47 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9747 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection47 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound47 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9747 (2 : Fin 3)) = canonicalInput12349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9747 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection50 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9747 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection50 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12349 hH))).trans (oldProjectionSound50 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode5979).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9747 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5979).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9747 (j : Fin 3)))
      3 24 48 6 ![16, 16, 16] ![3, 3, 3] reductionProjection9747 ![oldProjection49, oldProjection47, oldProjection50]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9748 : Integer.Sparse (Fin 1613) := [(3, -12), (19, 8), (20, 2), (94, 3), (246, 16), (1054, -48), (1251, 1)]

def reductionPivot9748 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-1, -4, 5], ![-1, 2, -1], ![0, 2, -2], ![1, 0, -1]]

theorem reductionSound9748 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5983).moment H =
      Integer.Sparse.eval reductionProjection9748 (momentVector H) := by
  have heq : reductionPivot9748 = (fun u v => (normalNode5983).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5983).moment H = injectiveMoment H reductionPivot9748 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5983).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9748 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9748 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 6, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9748 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection281, oldProjection240, oldProjection233, oldProjection200] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9748 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7983 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9748 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection281 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9748 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7983 hH))).trans (oldProjectionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9748 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node240⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9748 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection240 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9748 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9748 (2 : Fin 4)) = canonicalInput12344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9748 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection233 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9748 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12344 hH))).trans (oldProjectionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9748 (3 : Fin 4)) = canonicalInput12342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9748 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection200 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9748 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12342 hH))).trans (oldProjectionSound200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5983).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9748 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5983).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9748 (j : Fin 4)))
      2 96 96 2 ![48, 6, 48, 1] ![2, 16, 2, 96] reductionProjection9748 ![oldProjection281, oldProjection240, oldProjection233, oldProjection200]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9749 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 180), (4, -5), (19, 200), (20, -40), (94, -75), (106, -80), (243, -160), (246, -240), (698, -80), (703, -320), (704, -320), (1054, 240), (1251, -45), (1278, 480)]

def reductionPivot9749 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-1, -4, 5], ![-1, 2, -1], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound9749 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode5981).moment H =
      Integer.Sparse.eval reductionProjection9749 (momentVector H) := by
  have heq : reductionPivot9749 = (fun u v => (normalNode5981).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5981).moment H = injectiveMoment H reductionPivot9749 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5981).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9749 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9749 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 96, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9749 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection742, oldProjection722, reductionProjection9748, oldProjection721, oldProjection721] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9749 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node742⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection742 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9749 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node722⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection722 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection722 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9749 (2 : Fin 5)) = (normalNode5983).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9748 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9749 (3 : Fin 5)) = canonicalInput12341.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection721 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12341 hH))).trans (oldProjectionSound721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9749 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node721⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection721 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9749 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection721 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound721 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5981).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9749 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5981).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9749 (j : Fin 5)))
      1 480 480 1 ![480, 96, 96, 96, 96] ![1, 5, 5, 5, 5] reductionProjection9749 ![oldProjection742, oldProjection722, reductionProjection9748, oldProjection721, oldProjection721]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9750 : Integer.Sparse (Fin 1613) := [(3, 3), (19, 1), (703, -4)]

def reductionPivot9750 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-1, -4, 5], ![-1, 3, -2], ![1, 2, -3]]

theorem reductionSound9750 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode5989).moment H =
      Integer.Sparse.eval reductionProjection9750 (momentVector H) := by
  have heq : reductionPivot9750 = (fun u v => (normalNode5989).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5989).moment H = injectiveMoment H reductionPivot9750 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5989).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot9750 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9750 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![2, 4, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9750 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection60, oldProjection48, oldProjection39] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9750 (0 : Fin 3)) = canonicalInput23806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9750 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection60 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9750 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection60 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23806 hH))).trans (oldProjectionSound60 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9750 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node48⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9750 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection48 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9750 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection48 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound48 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9750 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5468 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9750 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection39 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9750 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection39 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5468 hH))).trans (oldProjectionSound39 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode5989).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9750 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5989).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9750 (j : Fin 3)))
      3 12 12 3 ![2, 4, 1] ![6, 3, 12] reductionProjection9750 ![oldProjection60, oldProjection48, oldProjection39]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9751 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -2), (20, -3), (94, -1), (246, -16)]

def reductionPivot9751 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-1, -4, 5], ![-1, 2, -1], ![1, 3, -4]]

theorem reductionSound9751 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5985).moment H =
      Integer.Sparse.eval reductionProjection9751 (momentVector H) := by
  have heq : reductionPivot9751 = (fun u v => (normalNode5985).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5985).moment H = injectiveMoment H reductionPivot9751 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5985).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot9751 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9751 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 16, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9751 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection55, oldProjection47, oldProjection34] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9751 (0 : Fin 3)) = canonicalInput23804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9751 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection55 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9751 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection55 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23804 hH))).trans (oldProjectionSound55 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9751 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node47⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9751 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection47 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9751 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection47 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound47 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9751 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5464 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9751 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection34 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9751 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection34 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5464 hH))).trans (oldProjectionSound34 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode5985).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9751 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5985).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9751 (j : Fin 3)))
      3 48 48 3 ![16, 16, 1] ![3, 3, 48] reductionProjection9751 ![oldProjection55, oldProjection47, oldProjection34]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9752 : Integer.Sparse (Fin 1613) := [(3, -20), (4, 2), (19, -16), (20, 6), (94, 5), (246, 32), (703, 16), (704, 16), (1251, 1)]

def reductionPivot9752 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-1, -4, 5], ![-1, 2, -1], ![1, -1, 0], ![1, 2, -3]]

theorem reductionSound9752 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5982).moment H =
      Integer.Sparse.eval reductionProjection9752 (momentVector H) := by
  have heq : reductionPivot9752 = (fun u v => (normalNode5982).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5982).moment H = injectiveMoment H reductionPivot9752 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5982).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9752 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9752 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 12, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9752 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection245, reductionProjection9750, oldProjection233, reductionProjection9751] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9752 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9752 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection245 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9752 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9752 (1 : Fin 4)) = (normalNode5989).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9752 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9750 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9752 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9752 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node233⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9752 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection233 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9752 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9752 (3 : Fin 4)) = (normalNode5985).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9752 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9751 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9752 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5982).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9752 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5982).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9752 (j : Fin 4)))
      2 96 96 2 ![48, 12, 48, 48] ![2, 8, 2, 2] reductionProjection9752 ![oldProjection245, reductionProjection9750, oldProjection233, reductionProjection9751]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9753 : Integer.Sparse (Fin 1613) := [(4, 1), (19, -4), (20, 1), (246, 8), (1218, -24)]

def reductionPivot9753 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-1, -4, 5], ![-1, 2, -1], ![0, 3, -3], ![1, 0, -1]]

theorem reductionSound9753 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5984).moment H =
      Integer.Sparse.eval reductionProjection9753 (momentVector H) := by
  have heq : reductionPivot9753 = (fun u v => (normalNode5984).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5984).moment H = injectiveMoment H reductionPivot9753 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5984).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9753 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9753 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9753 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1895, oldProjection239, oldProjection233, reductionProjection6392] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9753 (0 : Fin 4)) = canonicalInput23803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9753 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1895 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9753 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23803 hH))).trans (reductionSound1895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9753 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node239⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9753 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection239 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9753 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9753 (2 : Fin 4)) = canonicalInput12344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9753 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection233 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9753 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12344 hH))).trans (oldProjectionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9753 (3 : Fin 4)) = canonicalInput12343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9753 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9753 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12343 hH))).trans (reductionSound6392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5984).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9753 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5984).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9753 (j : Fin 4)))
      2 48 48 2 ![48, 48, 48, 1] ![1, 1, 1, 48] reductionProjection9753 ![reductionProjection1895, oldProjection239, oldProjection233, reductionProjection6392]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9754 : Integer.Sparse (Fin 1613) := [(4, 1), (20, 1), (1224, -8)]

def reductionPivot9754 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-1, -4, 5], ![-1, 5, -4], ![1, 0, -1]]

theorem reductionSound9754 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode5992).moment H =
      Integer.Sparse.eval reductionProjection9754 (momentVector H) := by
  have heq : reductionPivot9754 = (fun u v => (normalNode5992).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5992).moment H = injectiveMoment H reductionPivot9754 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5992).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot9754 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9754 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 16, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9754 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection613, oldProjection50, reductionProjection9325] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9754 (0 : Fin 3)) = canonicalInput23808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9754 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection613 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9754 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23808 hH))).trans (reductionSound613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9754 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node50⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9754 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection50 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9754 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection50 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound50 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9754 (2 : Fin 3)) = canonicalInput12346.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9754 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9325 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9754 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9325 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12346 hH))).trans (reductionSound9325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode5992).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9754 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5992).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9754 (j : Fin 3)))
      3 24 48 6 ![16, 16, 1] ![3, 3, 48] reductionProjection9754 ![reductionProjection613, oldProjection50, reductionProjection9325]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9755 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -1), (20, -2), (94, -1), (106, -16)]

def reductionPivot9755 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-1, -4, 5], ![-1, 4, -3], ![1, 1, -2]]

theorem reductionSound9755 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5991).moment H =
      Integer.Sparse.eval reductionProjection9755 (momentVector H) := by
  have heq : reductionPivot9755 = (fun u v => (normalNode5991).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5991).moment H = injectiveMoment H reductionPivot9755 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5991).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot9755 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9755 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 16, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9755 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection55, oldProjection49, oldProjection29] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9755 (0 : Fin 3)) = canonicalInput23807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9755 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection55 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9755 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection55 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23807 hH))).trans (oldProjectionSound55 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9755 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node49⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9755 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection49 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9755 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection49 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound49 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9755 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5470 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9755 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection29 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9755 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection29 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5470 hH))).trans (oldProjectionSound29 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode5991).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9755 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5991).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9755 (j : Fin 3)))
      3 48 48 3 ![16, 16, 1] ![3, 3, 48] reductionProjection9755 ![oldProjection55, oldProjection49, oldProjection29]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9756 : Integer.Sparse (Fin 1613) := [(3, -1), (20, -1), (106, 4), (1224, 2), (1225, 2)]

def reductionPivot9756 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-1, -4, 5], ![-1, 4, -3], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound9756 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode5990).moment H =
      Integer.Sparse.eval reductionProjection9756 (momentVector H) := by
  have heq : reductionPivot9756 = (fun u v => (normalNode5990).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5990).moment H = injectiveMoment H reductionPivot9756 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5990).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9756 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9756 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 24, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9756 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection249, reductionProjection9754, oldProjection236, reductionProjection9755] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9756 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node249⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9756 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9756 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9756 (1 : Fin 4)) = (normalNode5992).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9756 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9754 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9756 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9756 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node236⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9756 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection236 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9756 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9756 (3 : Fin 4)) = (normalNode5991).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9756 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9755 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9756 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5990).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9756 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5990).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9756 (j : Fin 4)))
      2 12 48 8 ![24, 24, 48, 48] ![2, 2, 1, 1] reductionProjection9756 ![oldProjection249, reductionProjection9754, oldProjection236, reductionProjection9755]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9757 : Integer.Sparse (Fin 1613) := [(3, -4), (20, 1), (94, 1), (703, 8), (1222, -24)]

def reductionPivot9757 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-1, -4, 5], ![-1, 3, -2], ![0, 2, -2], ![1, 0, -1]]

theorem reductionSound9757 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5988).moment H =
      Integer.Sparse.eval reductionProjection9757 (momentVector H) := by
  have heq : reductionPivot9757 = (fun u v => (normalNode5988).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5988).moment H = injectiveMoment H reductionPivot9757 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5988).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9757 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9757 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![12, 6, 24, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9757 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection681, oldProjection240, oldProjection235, reductionProjection1759] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9757 (0 : Fin 4)) = canonicalInput23805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9757 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection681 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9757 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection681 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23805 hH))).trans (reductionSound681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9757 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node240⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9757 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection240 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9757 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9757 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5467 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9757 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection235 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9757 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5467 hH))).trans (oldProjectionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9757 (3 : Fin 4)) = canonicalInput12345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9757 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1759 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9757 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound12345 hH))).trans (reductionSound1759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5988).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9757 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5988).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9757 (j : Fin 4)))
      2 48 48 2 ![12, 6, 24, 1] ![4, 8, 2, 48] reductionProjection9757 ![reductionProjection681, oldProjection240, oldProjection235, reductionProjection1759]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9758 : Integer.Sparse (Fin 1613) := [(3, -24), (4, 1), (19, -16), (20, 5), (94, 5), (106, 16), (243, 16), (703, 32), (1251, 1)]

def reductionPivot9758 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-1, -4, 5], ![-1, 3, -2], ![1, -1, 0], ![1, 1, -2]]

theorem reductionSound9758 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5987).moment H =
      Integer.Sparse.eval reductionProjection9758 (momentVector H) := by
  have heq : reductionPivot9758 = (fun u v => (normalNode5987).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5987).moment H = injectiveMoment H reductionPivot9758 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5987).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9758 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9758 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 24, 12] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9758 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection247, reductionProjection9755, oldProjection235, reductionProjection9750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9758 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9758 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9758 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9758 (1 : Fin 4)) = (normalNode5991).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9758 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9755 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9758 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9758 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node235⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9758 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection235 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9758 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9758 (3 : Fin 4)) = (normalNode5989).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9758 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9750 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9758 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5987).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9758 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5987).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9758 (j : Fin 4)))
      2 96 96 2 ![48, 48, 24, 12] ![2, 2, 4, 8] reductionProjection9758 ![oldProjection247, reductionProjection9755, oldProjection235, reductionProjection9750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9759 : Integer.Sparse (Fin 1613) := [(3, 24), (4, -1), (19, 16), (20, 1), (94, 1), (106, -32), (243, -32), (703, -40), (1222, 24), (1224, -8), (1225, -16), (1226, -8), (1251, -1)]

def reductionPivot9759 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-1, -4, 5], ![-1, 3, -2], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound9759 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5986).moment H =
      Integer.Sparse.eval reductionProjection9759 (momentVector H) := by
  have heq : reductionPivot9759 = (fun u v => (normalNode5986).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5986).moment H = injectiveMoment H reductionPivot9759 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5986).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9759 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9759 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![12, 12, 48, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9759 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection744, reductionProjection9756, reductionProjection9757, oldProjection722, reductionProjection9758] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9759 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection744 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9759 (1 : Fin 5)) = (normalNode5990).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9756 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9759 (2 : Fin 5)) = (normalNode5988).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9757 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9757 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9759 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node722⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection722 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection722 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9759 (4 : Fin 5)) = (normalNode5987).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9758 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9759 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound9758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5986).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9759 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5986).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9759 (j : Fin 5)))
      1 48 96 2 ![12, 12, 48, 96, 96] ![8, 8, 2, 1, 1] reductionProjection9759 ![oldProjection744, reductionProjection9756, reductionProjection9757, oldProjection722, reductionProjection9758]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

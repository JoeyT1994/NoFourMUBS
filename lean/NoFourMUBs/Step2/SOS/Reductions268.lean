import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical153
import NoFourMUBs.Step2.SOS.Canonical154
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical222
import NoFourMUBs.Step2.SOS.Canonical226
import NoFourMUBs.Step2.SOS.Canonical228
import NoFourMUBs.Step2.SOS.Canonical240
import NoFourMUBs.Step2.SOS.Canonical301
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.Canonical430
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions081
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions242
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions263
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions266
import NoFourMUBs.Step2.SOS.Reductions267
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical101
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical133
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical135
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical136
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical137
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical249
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical264
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical304
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical317
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8576 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (94, 45), (243, -160), (698, -80), (700, -160), (1052, 480), (1219, 240), (1226, -80), (1251, 45)]

def reductionPivot8576 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound8576 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4898).moment H =
      Integer.Sparse.eval reductionProjection8576 (momentVector H) := by
  have heq : reductionPivot8576 = (fun u v => (normalNode4898).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4898).moment H = injectiveMoment H reductionPivot8576 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4898).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8576 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8576 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8576 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1063, oldProjection1062, oldProjection1067, oldProjection1028] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8576 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3250 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8576 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1063 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8576 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3250 hH))).trans (oldProjectionSound1063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8576 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4412 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8576 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8576 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4412 hH))).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8576 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4430 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8576 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1067 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8576 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4430 hH))).trans (oldProjectionSound1067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8576 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4432 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8576 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1028 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8576 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4432 hH))).trans (oldProjectionSound1028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4898).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8576 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4898).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8576 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 144] ![2, 10, 10, 10] reductionProjection8576 ![oldProjection1063, oldProjection1062, oldProjection1067, oldProjection1028]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8577 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -36), (20, 6), (94, -4), (241, 64), (243, 96), (247, 32), (698, 96), (700, 64), (704, 48), (924, 144), (1052, -192), (1105, 144), (1219, -96), (1223, -144), (1225, 16), (1226, 64), (1227, 16), (1251, -5)]

def reductionPivot8577 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound8577 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4824).moment H =
      Integer.Sparse.eval reductionProjection8577 (momentVector H) := by
  have heq : reductionPivot8577 = (fun u v => (normalNode4824).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4824).moment H = injectiveMoment H reductionPivot8577 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4824).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8577 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8577 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8577 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6386, reductionProjection6649, reductionProjection8574, reductionProjection8575, reductionProjection8576] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8577 (0 : Fin 5)) = canonicalInput6148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6148 hH))).trans (reductionSound6386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8577 (1 : Fin 5)) = canonicalInput9748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6649 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6649 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9748 hH))).trans (reductionSound6649 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8577 (2 : Fin 5)) = canonicalInput9816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8574 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8574 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9816 hH))).trans (reductionSound8574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8577 (3 : Fin 5)) = (normalNode4897).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8575 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8577 (4 : Fin 5)) = canonicalInput9824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8576 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8577 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9824 hH))).trans (reductionSound8576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4824).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8577 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4824).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8577 (j : Fin 5)))
      1 288 1440 5 ![1440, 144, 1440, 720, 1440] ![1, 10, 1, 2, 1] reductionProjection8577 ![reductionProjection6386, reductionProjection6649, reductionProjection8574, reductionProjection8575, reductionProjection8576]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8578 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -10), (1251, 1)]

def reductionPivot8578 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -3, 4], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound8578 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9705).moment H =
      Integer.Sparse.eval reductionProjection8578 (momentVector H) := by
  have heq : reductionPivot8578 = (fun u v => (normalNode9705).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9705).moment H = injectiveMoment H reductionPivot8578 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9705).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot8578 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8578 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 16, 8] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8578 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection270, oldProjection54, oldProjection290] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8578 (0 : Fin 3)) = canonicalInput14652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8578 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection270 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8578 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14652 hH))).trans (oldProjectionSound270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8578 (1 : Fin 3)) = canonicalInput19320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8578 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection54 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8578 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19320 hH))).trans (oldProjectionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8578 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7036 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((8 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8578 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection290 (momentVector H)
      have hh : (8 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8578 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7036 hH))).trans (oldProjectionSound290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9705).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8578 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9705).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8578 (j : Fin 3)))
      3 144 144 3 ![48, 16, 8] ![3, 9, 18] reductionProjection8578 ![oldProjection270, oldProjection54, oldProjection290]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8579 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 2), (94, 9), (243, -32), (700, -16), (701, -16), (1251, -5)]

def reductionPivot8579 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -3, 4], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]

theorem reductionSound8579 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9684).moment H =
      Integer.Sparse.eval reductionProjection8579 (momentVector H) := by
  have heq : reductionPivot8579 = (fun u v => (normalNode9684).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9684).moment H = injectiveMoment H reductionPivot8579 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9684).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8579 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8579 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8579 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1024, reductionProjection6316, reductionProjection8578, oldProjection1069] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8579 (0 : Fin 4)) = canonicalInput14525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8579 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1024 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8579 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14525 hH))).trans (reductionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8579 (1 : Fin 4)) = (normalNode9649).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8579 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6316 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8579 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8579 (2 : Fin 4)) = (normalNode9705).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8579 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8578 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8579 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8579 (3 : Fin 4)) = canonicalInput19282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8579 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8579 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19282 hH))).trans (oldProjectionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9684).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8579 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9684).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8579 (j : Fin 4)))
      2 288 288 2 ![48, 144, 144, 144] ![6, 2, 2, 2] reductionProjection8579 ![reductionProjection1024, reductionProjection6316, reductionProjection8578, oldProjection1069]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8580 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (94, -10), (243, -48), (244, -16), (1251, 3)]

def reductionPivot8580 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 3, -2]]

theorem reductionSound8580 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10678).moment H =
      Integer.Sparse.eval reductionProjection8580 (momentVector H) := by
  have heq : reductionPivot8580 = (fun u v => (normalNode10678).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10678).moment H = injectiveMoment H reductionPivot8580 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10678).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot8580 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8580 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8580 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection908, oldProjection1062, oldProjection1062, oldProjection188] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8580 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7023 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8580 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection908 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8580 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7023 hH))).trans (oldProjectionSound908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8580 (1 : Fin 4)) = canonicalInput27531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8580 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8580 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27531 hH))).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8580 (2 : Fin 4)) = canonicalInput27569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8580 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8580 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27569 hH))).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8580 (3 : Fin 4)) = canonicalInput27573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8580 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection188 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8580 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27573 hH))).trans (oldProjectionSound188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10678).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8580 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10678).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8580 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 48] ![2, 2, 2, 6] reductionProjection8580 ![oldProjection908, oldProjection1062, oldProjection1062, oldProjection188]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8581 : Integer.Sparse (Fin 1613) := [(19, 28), (20, -4), (94, -5), (243, -16), (244, -16), (700, -16), (701, -32), (704, -64), (1040, 96), (1223, 48), (1225, -16), (1251, -9)]

def reductionPivot8581 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 1, 3, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]

theorem reductionSound8581 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4899).moment H =
      Integer.Sparse.eval reductionProjection8581 (momentVector H) := by
  have heq : reductionPivot8581 = (fun u v => (normalNode4899).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4899).moment H = injectiveMoment H reductionPivot8581 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4899).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8581 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8581 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8581 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection934, reductionProjection4715, oldProjection1020, oldProjection1019] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8581 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3254 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8581 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection934 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8581 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection934 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3254 hH))).trans (oldProjectionSound934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8581 (1 : Fin 4)) = canonicalInput9942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8581 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4715 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8581 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9942 hH))).trans (reductionSound4715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8581 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4433 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8581 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1020 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8581 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4433 hH))).trans (oldProjectionSound1020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8581 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4434 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8581 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1019 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8581 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4434 hH))).trans (oldProjectionSound1019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4899).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8581 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4899).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8581 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection8581 ![oldProjection934, reductionProjection4715, oldProjection1020, oldProjection1019]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8582 : Integer.Sparse (Fin 1613) := [(19, -60), (20, 9), (94, 5), (243, 176), (244, 48), (700, 48), (701, 80), (704, 128), (897, 144), (1040, -240), (1223, -240), (1225, 48), (1226, 32), (1251, 20)]

def reductionPivot8582 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound8582 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4825).moment H =
      Integer.Sparse.eval reductionProjection8582 (momentVector H) := by
  have heq : reductionPivot8582 = (fun u v => (normalNode4825).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4825).moment H = injectiveMoment H reductionPivot8582 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4825).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8582 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8582 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8582 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8579, reductionProjection8221, reductionProjection8580, reductionProjection8581, reductionProjection8581] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8582 (0 : Fin 5)) = canonicalInput6151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8579 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6151 hH))).trans (reductionSound8579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8582 (1 : Fin 5)) = canonicalInput9749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8221 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9749 hH))).trans (reductionSound8221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8582 (2 : Fin 5)) = canonicalInput9817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9817 hH))).trans (reductionSound8580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8582 (3 : Fin 5)) = (normalNode4899).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8581 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8582 (4 : Fin 5)) = canonicalInput9825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8581 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8582 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9825 hH))).trans (reductionSound8581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4825).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8582 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4825).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8582 (j : Fin 5)))
      1 288 288 1 ![288, 144, 288, 288, 288] ![1, 2, 1, 1, 1] reductionProjection8582 ![reductionProjection8579, reductionProjection8221, reductionProjection8580, reductionProjection8581, reductionProjection8581]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8583 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 20), (94, -15), (104, -160), (105, -80), (108, -160), (241, -80), (243, -80), (698, -80), (1251, 15)]

def reductionPivot8583 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -2, -1, 2]]

theorem reductionSound8583 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10328).moment H =
      Integer.Sparse.eval reductionProjection8583 (momentVector H) := by
  have heq : reductionPivot8583 = (fun u v => (normalNode10328).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10328).moment H = injectiveMoment H reductionPivot8583 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10328).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8583 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8583 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 48, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8583 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6421, oldProjection153, oldProjection1083, reductionProjection2598] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8583 (0 : Fin 4)) = (normalNode9970).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8583 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6421 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8583 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8583 (1 : Fin 4)) = canonicalInput20268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8583 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection153 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8583 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20268 hH))).trans (oldProjectionSound153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8583 (2 : Fin 4)) = canonicalInput20288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8583 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8583 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20288 hH))).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8583 (3 : Fin 4)) = (normalNode10344).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8583 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2598 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8583 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10328).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8583 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10328).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8583 (j : Fin 4)))
      2 1440 1440 2 ![72, 48, 720, 144] ![20, 30, 2, 10] reductionProjection8583 ![reductionProjection6421, oldProjection153, oldProjection1083, reductionProjection2598]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8584 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (240, -24), (697, -24), (1250, 6), (1251, 1)]

def reductionPivot8584 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 1, -2], ![-2, -2, 1, 3], ![2, 2, -2, -2]]

theorem reductionSound8584 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode11051).moment H =
      Integer.Sparse.eval reductionProjection8584 (momentVector H) := by
  have heq : reductionPivot8584 = (fun u v => (normalNode11051).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11051).moment H = injectiveMoment H reductionPivot8584 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11051).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11051).entries)).symm
  have hshape : reductionPivot8584 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8584 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8584 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection274, oldProjection152, oldProjection184] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8584 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw9742 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8584 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection274 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8584 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9742 hH))).trans (oldProjectionSound274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8584 (1 : Fin 3)) = canonicalInput33853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8584 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection152 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8584 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33853 hH))).trans (oldProjectionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8584 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10151 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8584 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8584 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10151 hH))).trans (oldProjectionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11051).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8584 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11051).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8584 (j : Fin 3)))
      3 72 72 3 ![24, 1, 1] ![3, 72, 72] reductionProjection8584 ![oldProjection274, oldProjection152, oldProjection184]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8585 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 30), (94, -15), (104, -20), (240, 60), (241, -80), (247, -40), (697, 120), (698, -40), (1250, -15), (1251, 5)]

def reductionPivot8585 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![2, -1, 1, -2]]

theorem reductionSound8585 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode4875).moment H =
      Integer.Sparse.eval reductionProjection8585 (momentVector H) := by
  have heq : reductionPivot8585 = (fun u v => (normalNode4875).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4875).moment H = injectiveMoment H reductionPivot8585 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4875).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8585 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8585 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8585 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1083, oldProjection1351, oldProjection1378, reductionProjection8584] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8585 (0 : Fin 4)) = canonicalInput6655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8585 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1083 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8585 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6655 hH))).trans (oldProjectionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8585 (1 : Fin 4)) = canonicalInput9797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8585 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1351 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8585 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9797 hH))).trans (oldProjectionSound1351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8585 (2 : Fin 4)) = canonicalInput9860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8585 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1378 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8585 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1378 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9860 hH))).trans (oldProjectionSound1378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8585 (3 : Fin 4)) = canonicalInput9866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8585 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8584 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8585 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9866 hH))).trans (reductionSound8584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4875).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8585 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4875).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8585 (j : Fin 4)))
      2 360 720 4 ![720, 720, 720, 72] ![1, 1, 1, 10] reductionProjection8585 ![oldProjection1083, oldProjection1351, oldProjection1378, reductionProjection8584]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8586 : Integer.Sparse (Fin 1613) := [(0, -6), (3, 20), (19, -20), (20, -5), (94, 30), (104, -80), (241, -160), (698, -80), (1251, 25)]

def reductionPivot8586 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 2, 1, -2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, -2, 3]]

theorem reductionSound8586 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11220).moment H =
      Integer.Sparse.eval reductionProjection8586 (momentVector H) := by
  have heq : reductionPivot8586 = (fun u v => (normalNode11220).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11220).moment H = injectiveMoment H reductionPivot8586 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11220).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8586 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8586 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 240, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8586 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection959, oldProjection268, oldProjection268, oldProjection904] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8586 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7970 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8586 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection959 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8586 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection959 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7970 hH))).trans (oldProjectionSound959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8586 (1 : Fin 4)) = canonicalInput23769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8586 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection268 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8586 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23769 hH))).trans (oldProjectionSound268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8586 (2 : Fin 4)) = canonicalInput23770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8586 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection268 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8586 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23770 hH))).trans (oldProjectionSound268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8586 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7974 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8586 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection904 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8586 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7974 hH))).trans (oldProjectionSound904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11220).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8586 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11220).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8586 (j : Fin 4)))
      2 1440 1440 2 ![720, 240, 240, 720] ![2, 6, 6, 2] reductionProjection8586 ![oldProjection959, oldProjection268, oldProjection268, oldProjection904]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8587 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (37, 240), (94, -20), (240, 240), (698, -80), (1052, 240), (1059, -80), (1250, -60), (1251, 25)]

def reductionPivot8587 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -2, 1, -1]]

theorem reductionSound8587 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4939).moment H =
      Integer.Sparse.eval reductionProjection8587 (momentVector H) := by
  have heq : reductionPivot8587 = (fun u v => (normalNode4939).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4939).moment H = injectiveMoment H reductionPivot8587 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4939).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8587 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8587 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8587 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection770, oldProjection184, oldProjection973, oldProjection804] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8587 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4262 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8587 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection770 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8587 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4262 hH))).trans (oldProjectionSound770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8587 (1 : Fin 4)) = canonicalInput9885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8587 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8587 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9885 hH))).trans (oldProjectionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8587 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4373 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8587 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection973 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8587 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4373 hH))).trans (oldProjectionSound973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8587 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4377 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8587 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection804 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8587 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4377 hH))).trans (oldProjectionSound804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4939).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8587 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4939).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8587 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 360, 720] ![480, 1440, 4, 2] reductionProjection8587 ![oldProjection770, oldProjection184, oldProjection973, oldProjection804]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8588 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -40), (19, -160), (20, 5), (37, -240), (94, 85), (104, 320), (105, 80), (108, 160), (240, -480), (241, 640), (243, 80), (247, 240), (541, 720), (697, -720), (698, 400), (1052, -240), (1059, 80), (1079, 720), (1080, 720), (1250, 120), (1251, -80)]

def reductionPivot8588 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, 1, -2]]

theorem reductionSound8588 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4831).moment H =
      Integer.Sparse.eval reductionProjection8588 (momentVector H) := by
  have heq : reductionPivot8588 = (fun u v => (normalNode4831).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4831).moment H = injectiveMoment H reductionPivot8588 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4831).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8588 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8588 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 360, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8588 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8583, reductionProjection8507, reductionProjection8585, reductionProjection8586, reductionProjection8587] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8588 (0 : Fin 5)) = canonicalInput6211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8583 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6211 hH))).trans (reductionSound8583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8588 (1 : Fin 5)) = (normalNode4800).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8507 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8588 (2 : Fin 5)) = canonicalInput9852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8585 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9852 hH))).trans (reductionSound8585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8588 (3 : Fin 5)) = canonicalInput9858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9858 hH))).trans (reductionSound8586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8588 (4 : Fin 5)) = (normalNode4939).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8587 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8588 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4831).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8588 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4831).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8588 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 360, 1440, 1440] ![1, 1, 4, 1, 1] reductionProjection8588 ![reductionProjection8583, reductionProjection8507, reductionProjection8585, reductionProjection8586, reductionProjection8587]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8589 : Integer.Sparse (Fin 1613) := [(100, 3), (228, 3), (698, -1), (1214, 3), (1218, 3), (1219, 3), (1226, -1), (1227, -1)]

def reductionPivot8589 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, 2, -4]]

theorem reductionSound8589 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4940).moment H =
      Integer.Sparse.eval reductionProjection8589 (momentVector H) := by
  have heq : reductionPivot8589 = (fun u v => (normalNode4940).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4940).moment H = injectiveMoment H reductionPivot8589 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4940).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8589 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8589 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8589 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8431, oldProjection225, reductionProjection8522, oldProjection1239] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8589 (0 : Fin 4)) = canonicalInput9693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8589 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8431 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8589 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9693 hH))).trans (reductionSound8431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8589 (1 : Fin 4)) = canonicalInput9886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8589 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8589 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9886 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8589 (2 : Fin 4)) = canonicalInput9918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8589 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8522 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8589 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8522 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9918 hH))).trans (reductionSound8522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8589 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4381 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8589 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8589 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4381 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4940).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8589 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4940).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8589 (j : Fin 4)))
      2 18 18 2 ![3, 1, 3, 9] ![6, 18, 6, 2] reductionProjection8589 ![reductionProjection8431, oldProjection225, reductionProjection8522, oldProjection1239]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8590 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -100), (4, 5), (19, -260), (20, 45), (94, 140), (100, -480), (104, 80), (108, 320), (228, -480), (241, 80), (246, 80), (247, 320), (698, 160), (704, 320), (1082, 720), (1214, -480), (1218, -240), (1219, -480), (1223, -720), (1226, 80), (1227, 80), (1251, 100)]

def reductionPivot8590 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 2, -4]]

theorem reductionSound8590 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4832).moment H =
      Integer.Sparse.eval reductionProjection8590 (momentVector H) := by
  have heq : reductionPivot8590 = (fun u v => (normalNode4832).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4832).moment H = injectiveMoment H reductionPivot8590 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4832).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8590 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8590 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8590 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6391, reductionProjection8514, reductionProjection1023, reductionProjection8589, oldProjection2854] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8590 (0 : Fin 5)) = canonicalInput6212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6391 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6212 hH))).trans (reductionSound6391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8590 (1 : Fin 5)) = (normalNode4801).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8514 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8590 (2 : Fin 5)) = canonicalInput9853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1023 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9853 hH))).trans (reductionSound1023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8590 (3 : Fin 5)) = (normalNode4940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8589 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8590 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4338 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2854 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8590 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4338 hH))).trans (oldProjectionSound2854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4832).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8590 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4832).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8590 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 18, 1440] ![1, 1, 1, 80, 1] reductionProjection8590 ![reductionProjection6391, reductionProjection8514, reductionProjection1023, reductionProjection8589, oldProjection2854]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8591 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 40), (20, -10), (94, -30), (104, -80), (108, -240), (241, -80), (247, -80), (1251, -15)]

def reductionPivot8591 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -1, -1, 1]]

theorem reductionSound8591 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7951).moment H =
      Integer.Sparse.eval reductionProjection8591 (momentVector H) := by
  have heq : reductionPivot8591 = (fun u v => (normalNode7951).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7951).moment H = injectiveMoment H reductionPivot8591 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7951).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8591 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8591 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 24, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8591 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6373, oldProjection244, oldProjection972, reductionProjection6397] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8591 (0 : Fin 4)) = (normalNode7468).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8591 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6373 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8591 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8591 (1 : Fin 4)) = canonicalInput15368.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8591 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection244 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8591 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15368 hH))).trans (oldProjectionSound244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8591 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8591 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection972 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8591 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8591 (3 : Fin 4)) = (normalNode7971).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8591 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6397 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8591 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7951).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8591 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7951).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8591 (j : Fin 4)))
      2 1440 1440 2 ![144, 24, 720, 144] ![10, 60, 2, 10] reductionProjection8591 ![reductionProjection6373, oldProjection244, oldProjection972, reductionProjection6397]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8592 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -120), (20, 10), (45, -240), (94, 75), (104, 40), (108, 240), (241, 40), (247, 320), (549, 360), (697, -240), (698, 80), (1082, 360), (1083, 360), (1214, -120), (1219, -360), (1223, -120), (1226, 40), (1227, 80), (1251, 40)]

def reductionPivot8592 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound8592 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4833).moment H =
      Integer.Sparse.eval reductionProjection8592 (momentVector H) := by
  have heq : reductionPivot8592 = (fun u v => (normalNode4833).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4833).moment H = injectiveMoment H reductionPivot8592 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4833).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8592 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8592 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8592 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8591, reductionProjection8515, reductionProjection8555, oldProjection2179, oldProjection2859] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8592 (0 : Fin 5)) = canonicalInput6213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8591 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6213 hH))).trans (reductionSound8591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8592 (1 : Fin 5)) = (normalNode4802).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8515 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8592 (2 : Fin 5)) = canonicalInput9854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8555 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9854 hH))).trans (reductionSound8555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8592 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2179⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2179 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8592 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4339 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2859 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8592 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2859 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4339 hH))).trans (oldProjectionSound2859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4833).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8592 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4833).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8592 (j : Fin 5)))
      1 720 1440 2 ![1440, 720, 1440, 1440, 1440] ![1, 2, 1, 1, 1] reductionProjection8592 ![reductionProjection8591, reductionProjection8515, reductionProjection8555, oldProjection2179, oldProjection2859]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8593 : Integer.Sparse (Fin 1613) := [(169, -1), (1077, -1), (1094, -1), (1095, -1)]

def reductionPivot8593 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 1, 0, -2]]

theorem reductionSound8593 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4948).moment H =
      Integer.Sparse.eval reductionProjection8593 (momentVector H) := by
  have heq : reductionPivot8593 = (fun u v => (normalNode4948).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4948).moment H = injectiveMoment H reductionPivot8593 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4948).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8593 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8593 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8593 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8481, oldProjection408, reductionProjection505, oldProjection675] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8593 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1077).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8593 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8481 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8593 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8593 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4398 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8593 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection408 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8593 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4398 hH))).trans (oldProjectionSound408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8593 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1094).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8593 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8593 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8593 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node675⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8593 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection675 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8593 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4948).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8593 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4948).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8593 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8593 ![reductionProjection8481, oldProjection408, reductionProjection505, oldProjection675]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8594 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 80), (20, -15), (94, -35), (105, -80), (241, -80), (243, -240), (698, -80), (700, -160), (704, -80), (1251, -45)]

def reductionPivot8594 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, -2, 3]]

theorem reductionSound8594 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11162).moment H =
      Integer.Sparse.eval reductionProjection8594 (momentVector H) := by
  have heq : reductionPivot8594 = (fun u v => (normalNode11162).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11162).moment H = injectiveMoment H reductionPivot8594 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11162).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot8594 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8594 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8594 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1072, oldProjection1218, oldProjection1320, oldProjection269] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8594 (0 : Fin 4)) = canonicalInput22783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8594 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1072 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8594 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22783 hH))).trans (oldProjectionSound1072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8594 (1 : Fin 4)) = canonicalInput28060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8594 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1218 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8594 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28060 hH))).trans (oldProjectionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8594 (2 : Fin 4)) = canonicalInput29330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8594 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1320 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8594 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1320 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29330 hH))).trans (oldProjectionSound1320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8594 (3 : Fin 4)) = canonicalInput29332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8594 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection269 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8594 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29332 hH))).trans (oldProjectionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11162).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8594 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11162).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8594 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 48] ![10, 2, 10, 30] reductionProjection8594 ![oldProjection1072, oldProjection1218, oldProjection1320, oldProjection269]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8595 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -60), (19, -220), (20, 55), (93, 60), (94, -5), (105, 240), (108, 80), (169, 720), (241, 320), (242, -480), (243, 640), (247, 80), (691, -240), (697, -240), (698, 320), (700, 160), (704, 80), (1047, -480), (1077, 720), (1084, 720), (1089, 720), (1094, 1440), (1095, 720), (1226, 160), (1251, 30), (1323, -240)]

def reductionPivot8595 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound8595 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4834).moment H =
      Integer.Sparse.eval reductionProjection8595 (momentVector H) := by
  have heq : reductionPivot8595 = (fun u v => (normalNode4834).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4834).moment H = injectiveMoment H reductionPivot8595 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4834).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8595 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8595 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8595 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6480, reductionProjection8516, oldProjection2174, reductionProjection8593, reductionProjection8594] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8595 (0 : Fin 5)) = canonicalInput6215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6480 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6215 hH))).trans (reductionSound6480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8595 (1 : Fin 5)) = (normalNode4804).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8516 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8595 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4334 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2174 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4334 hH))).trans (oldProjectionSound2174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8595 (3 : Fin 5)) = (normalNode4948).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8593 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8593 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8593 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8595 (4 : Fin 5)) = canonicalInput9861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8594 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8595 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9861 hH))).trans (reductionSound8594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4834).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8595 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4834).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8595 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 1440, 2, 1440] ![10, 5, 1, 720, 1] reductionProjection8595 ![reductionProjection6480, reductionProjection8516, oldProjection2174, reductionProjection8593, reductionProjection8594]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8596 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 16), (20, -2), (94, -3), (100, 48), (229, 48), (704, -32), (1058, 48), (1060, 96), (1218, 48), (1223, 96), (1251, -1)]

def reductionPivot8596 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 3, -4]]

theorem reductionSound8596 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4953).moment H =
      Integer.Sparse.eval reductionProjection8596 (momentVector H) := by
  have heq : reductionPivot8596 = (fun u v => (normalNode4953).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4953).moment H = injectiveMoment H reductionPivot8596 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4953).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8596 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8596 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8596 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6412, oldProjection1230, reductionProjection7431, oldProjection1329] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8596 (0 : Fin 4)) = canonicalInput9720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8596 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6412 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8596 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6412 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9720 hH))).trans (reductionSound6412 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8596 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4414 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8596 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1230 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8596 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1230 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4414 hH))).trans (oldProjectionSound1230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8596 (2 : Fin 4)) = canonicalInput9949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8596 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7431 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8596 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9949 hH))).trans (reductionSound7431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8596 (3 : Fin 4)) = canonicalInput9950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8596 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8596 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9950 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4953).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8596 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4953).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8596 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 144] ![4, 2, 2, 2] reductionProjection8596 ![reductionProjection6412, oldProjection1230, reductionProjection7431, oldProjection1329]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8597 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 80), (20, -15), (93, -60), (94, 5), (704, -40), (1250, -30), (1251, -15), (1321, 120)]

def reductionPivot8597 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound8597 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4956).moment H =
      Integer.Sparse.eval reductionProjection8597 (momentVector H) := by
  have heq : reductionPivot8597 = (fun u v => (normalNode4956).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4956).moment H = injectiveMoment H reductionPivot8597 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4956).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8597 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8597 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8597 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1182, oldProjection1224, oldProjection1327, oldProjection1222] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8597 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4281 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8597 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1182 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8597 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4281 hH))).trans (oldProjectionSound1182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8597 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4418 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8597 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8597 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4418 hH))).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8597 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4423 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8597 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1327 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8597 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4423 hH))).trans (oldProjectionSound1327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8597 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4424 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8597 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8597 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4424 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4956).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8597 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4956).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8597 (j : Fin 4)))
      2 720 720 2 ![144, 144, 144, 720] ![5, 5, 5, 1] reductionProjection8597 ![oldProjection1182, oldProjection1224, oldProjection1327, oldProjection1222]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8598 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -60), (4, 5), (19, -200), (20, 35), (93, 120), (94, 30), (100, -480), (104, 160), (108, 240), (229, -480), (240, -240), (246, 80), (704, 320), (1058, -240), (1060, -480), (1218, -240), (1223, -480), (1250, 60), (1251, 70), (1321, -240)]

def reductionPivot8598 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound8598 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4835).moment H =
      Integer.Sparse.eval reductionProjection8598 (momentVector H) := by
  have heq : reductionPivot8598 = (fun u v => (normalNode4835).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4835).moment H = injectiveMoment H reductionPivot8598 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4835).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8598 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8598 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 36, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8598 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6411, reductionProjection8517, reductionProjection1022, reductionProjection8596, reductionProjection8597] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8598 (0 : Fin 5)) = canonicalInput6216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6411 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6216 hH))).trans (reductionSound6411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8598 (1 : Fin 5)) = (normalNode4805).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8517 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8598 (2 : Fin 5)) = canonicalInput9856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1022 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1022 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9856 hH))).trans (reductionSound1022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8598 (3 : Fin 5)) = (normalNode4953).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8596 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8596 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8596 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8598 (4 : Fin 5)) = (normalNode4956).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8597 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8598 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4835).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8598 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4835).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8598 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 36, 288, 720] ![5, 5, 40, 5, 2] reductionProjection8598 ![reductionProjection6411, reductionProjection8517, reductionProjection1022, reductionProjection8596, reductionProjection8597]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8599 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -10), (94, 25), (105, -80), (108, -80), (241, -80), (243, -160), (247, -80), (1251, -10)]

def reductionPivot8599 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -1, -3, 3]]

theorem reductionSound8599 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10606).moment H =
      Integer.Sparse.eval reductionProjection8599 (momentVector H) := by
  have heq : reductionPivot8599 = (fun u v => (normalNode10606).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10606).moment H = injectiveMoment H reductionPivot8599 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10606).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot8599 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8599 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 720, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8599 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6398, reductionProjection2418, oldProjection1218, oldProjection143] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8599 (0 : Fin 4)) = (normalNode9104).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8599 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6398 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8599 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8599 (1 : Fin 4)) = canonicalInput25491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8599 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8599 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25491 hH))).trans (reductionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8599 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8475 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8599 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1218 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8599 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8475 hH))).trans (oldProjectionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8599 (3 : Fin 4)) = canonicalInput26044.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8599 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection143 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8599 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26044 hH))).trans (oldProjectionSound143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10606).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8599 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10606).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8599 (j : Fin 4)))
      2 1440 1440 2 ![72, 144, 720, 48] ![20, 10, 2, 30] reductionProjection8599 ![reductionProjection6398, reductionProjection2418, oldProjection1218, oldProjection143]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8600 : Integer.Sparse (Fin 1613) := [(0, 3), (3, 20), (19, 140), (20, -15), (93, -120), (94, -60), (242, 240), (697, 240), (1250, -120), (1251, -40), (1323, 480)]

def reductionPivot8600 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, 0, -1]]

theorem reductionSound8600 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4955).moment H =
      Integer.Sparse.eval reductionProjection8600 (momentVector H) := by
  have heq : reductionPivot8600 = (fun u v => (normalNode4955).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4955).moment H = injectiveMoment H reductionPivot8600 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4955).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8600 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8600 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 360, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8600 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection918, oldProjection1210, oldProjection973, oldProjection1213] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8600 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4280 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8600 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection918 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8600 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4280 hH))).trans (oldProjectionSound918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8600 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4417 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8600 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1210 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8600 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4417 hH))).trans (oldProjectionSound1210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8600 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4421 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8600 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection973 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8600 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4421 hH))).trans (oldProjectionSound973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8600 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4422 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8600 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1213 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8600 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4422 hH))).trans (oldProjectionSound1213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4955).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8600 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4955).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8600 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 360, 144] ![10, 2, 4, 10] reductionProjection8600 ![oldProjection918, oldProjection1210, oldProjection973, oldProjection1213]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8601 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -12), (19, -64), (20, 11), (93, 48), (94, 12), (104, 16), (105, 16), (108, 32), (240, -48), (241, 16), (242, -48), (243, 32), (247, 16), (697, -48), (698, 16), (704, 48), (1084, 144), (1250, 36), (1251, 18), (1321, -96), (1323, -96)]

def reductionPivot8601 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound8601 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4836).moment H =
      Integer.Sparse.eval reductionProjection8601 (momentVector H) := by
  have heq : reductionPivot8601 = (fun u v => (normalNode4836).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4836).moment H = injectiveMoment H reductionPivot8601 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4836).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8601 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8601 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8601 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8599, reductionProjection6705, oldProjection1218, reductionProjection8600, reductionProjection8597] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8601 (0 : Fin 5)) = canonicalInput6219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8599 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8599 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6219 hH))).trans (reductionSound8599 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8601 (1 : Fin 5)) = (normalNode4807).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6705 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6705 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8601 (2 : Fin 5)) = canonicalInput9857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1218 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9857 hH))).trans (oldProjectionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8601 (3 : Fin 5)) = (normalNode4955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8600 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8600 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8601 (4 : Fin 5)) = canonicalInput9865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8597 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8601 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9865 hH))).trans (reductionSound8597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4836).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8601 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4836).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8601 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 720, 1440, 720] ![1, 1, 2, 1, 2] reductionProjection8601 ![reductionProjection8599, reductionProjection6705, oldProjection1218, reductionProjection8600, reductionProjection8597]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8602 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (174, -144), (1058, 48), (1078, -144), (1101, -144), (1223, 48), (1251, 1)]

def reductionPivot8602 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 0, 2, -3]]

theorem reductionSound8602 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4958).moment H =
      Integer.Sparse.eval reductionProjection8602 (momentVector H) := by
  have heq : reductionPivot8602 = (fun u v => (normalNode4958).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4958).moment H = injectiveMoment H reductionPivot8602 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4958).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8602 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8602 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8602 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8442, oldProjection1329, reductionProjection497, oldProjection409] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8602 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1078).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8602 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8602 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8602 (1 : Fin 4)) = canonicalInput9950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8602 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8602 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9950 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8602 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1101).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8602 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8602 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8602 (3 : Fin 4)) = canonicalInput9955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8602 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection409 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8602 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9955 hH))).trans (oldProjectionSound409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4958).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8602 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4958).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8602 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection8602 ![reductionProjection8442, oldProjection1329, reductionProjection497, oldProjection409]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8603 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 100), (20, -5), (94, -65), (108, -80), (240, 240), (247, -160), (697, 240), (1103, -720), (1250, -60), (1251, -30)]

def reductionPivot8603 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 2, -2]]

theorem reductionSound8603 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4960).moment H =
      Integer.Sparse.eval reductionProjection8603 (momentVector H) := by
  have heq : reductionPivot8603 = (fun u v => (normalNode4960).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4960).moment H = injectiveMoment H reductionPivot8603 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4960).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8603 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8603 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8603 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1236, oldProjection1222, oldProjection676, oldProjection995] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8603 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4284 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8603 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1236 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8603 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4284 hH))).trans (oldProjectionSound1236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8603 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4424 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8603 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8603 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4424 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8603 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node676⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8603 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection676 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8603 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8603 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4429 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8603 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8603 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4429 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4960).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8603 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4960).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8603 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 1, 720] ![10, 2, 1440, 2] reductionProjection8603 ![oldProjection1236, oldProjection1222, oldProjection676, oldProjection995]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8604 : Integer.Sparse (Fin 1613) := [(0, -9), (3, -60), (19, -260), (20, 30), (93, 60), (94, 150), (104, 80), (108, 240), (174, 720), (240, -480), (241, 80), (247, 320), (694, -240), (697, -240), (698, 80), (704, 80), (1058, -240), (1078, 720), (1079, 720), (1101, 1440), (1103, 720), (1223, -240), (1250, 120), (1251, 85), (1319, -480)]

def reductionPivot8604 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound8604 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4837).moment H =
      Integer.Sparse.eval reductionProjection8604 (momentVector H) := by
  have heq : reductionPivot8604 = (fun u v => (normalNode4837).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4837).moment H = injectiveMoment H reductionPivot8604 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4837).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8604 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8604 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8604 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6478, reductionProjection8518, oldProjection2854, reductionProjection8602, reductionProjection8603] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8604 (0 : Fin 5)) = canonicalInput6220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6478 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6478 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6220 hH))).trans (reductionSound6478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8604 (1 : Fin 5)) = (normalNode4808).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8518 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8604 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4338 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2854 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4338 hH))).trans (oldProjectionSound2854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8604 (3 : Fin 5)) = (normalNode4958).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8602 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8602 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8602 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8604 (4 : Fin 5)) = (normalNode4960).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8603 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8604 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4837).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8604 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4837).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8604 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 1440] ![1, 1, 1, 5, 1] reductionProjection8604 ![reductionProjection6478, reductionProjection8518, oldProjection2854, reductionProjection8602, reductionProjection8603]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8605 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (37, 240), (94, -35), (104, -160), (105, -80), (108, -80), (241, -320), (243, -80), (247, -80), (697, 240), (698, -80), (1052, 240), (1080, -720)]

def reductionPivot8605 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, -1, 1, -2]]

theorem reductionSound8605 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4838).moment H =
      Integer.Sparse.eval reductionProjection8605 (momentVector H) := by
  have heq : reductionPivot8605 = (fun u v => (normalNode4838).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4838).moment H = injectiveMoment H reductionPivot8605 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4838).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8605 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8605 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8605 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6421, reductionProjection8505, oldProjection1378, reductionProjection873] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8605 (0 : Fin 4)) = canonicalInput6223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8605 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6421 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8605 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6223 hH))).trans (reductionSound6421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8605 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1080).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8605 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8605 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8605 (2 : Fin 4)) = canonicalInput9860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8605 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1378 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8605 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1378 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9860 hH))).trans (oldProjectionSound1378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8605 (3 : Fin 4)) = canonicalInput9867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8605 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection873 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8605 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9867 hH))).trans (reductionSound873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4838).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8605 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4838).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8605 (j : Fin 4)))
      2 1440 1440 2 ![72, 1, 720, 3] ![20, 1440, 2, 480] reductionProjection8605 ![reductionProjection6421, reductionProjection8505, oldProjection1378, reductionProjection873]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8606 : Integer.Sparse (Fin 1613) := [(4, -1), (19, 8), (20, 2), (94, 8), (105, -16), (106, -16), (241, -16), (243, -48), (244, -32), (246, -16), (1251, 1)]

def reductionPivot8606 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -3, 4], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -1, 0, 0]]

theorem reductionSound8606 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9666).moment H =
      Integer.Sparse.eval reductionProjection8606 (momentVector H) := by
  have heq : reductionPivot8606 = (fun u v => (normalNode9666).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9666).moment H = injectiveMoment H reductionPivot8606 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9666).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8606 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8606 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 36, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8606 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6390, oldProjection1069, oldProjection1167, reductionProjection6405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8606 (0 : Fin 4)) = canonicalInput14259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8606 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6390 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8606 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14259 hH))).trans (reductionSound6390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8606 (1 : Fin 4)) = canonicalInput19282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8606 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8606 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19282 hH))).trans (oldProjectionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8606 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7013 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8606 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1167 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8606 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7013 hH))).trans (oldProjectionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8606 (3 : Fin 4)) = (normalNode9741).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8606 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6405 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8606 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9666).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8606 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9666).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8606 (j : Fin 4)))
      2 288 288 2 ![144, 144, 36, 144] ![2, 2, 8, 2] reductionProjection8606 ![reductionProjection6390, oldProjection1069, oldProjection1167, reductionProjection6405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8607 : Integer.Sparse (Fin 1613) := [(19, 2), (20, -1), (94, 2), (100, 24), (243, -24), (698, -8), (704, -8), (1040, 48), (1045, 24), (1052, 24), (1218, 24), (1223, 48), (1225, -16), (1226, -8), (1251, 1)]

def reductionPivot8607 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 3, -4], ![1, -2, 0, 1], ![1, 0, 0, -1]]

theorem reductionSound8607 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4963).moment H =
      Integer.Sparse.eval reductionProjection8607 (momentVector H) := by
  have heq : reductionPivot8607 = (fun u v => (normalNode4963).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4963).moment H = injectiveMoment H reductionPivot8607 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4963).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8607 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8607 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8607 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8447, oldProjection1035, reductionProjection7760, oldProjection1020] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8607 (0 : Fin 4)) = canonicalInput9729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8607 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8447 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8607 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8447 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9729 hH))).trans (reductionSound8447 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8607 (1 : Fin 4)) = canonicalInput9957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8607 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1035 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8607 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9957 hH))).trans (oldProjectionSound1035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8607 (2 : Fin 4)) = canonicalInput9959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8607 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7760 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8607 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9959 hH))).trans (reductionSound7760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8607 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4433 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8607 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1020 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8607 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4433 hH))).trans (oldProjectionSound1020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4963).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8607 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4963).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8607 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 144] ![1, 1, 1, 1] reductionProjection8607 ![reductionProjection8447, oldProjection1035, reductionProjection7760, oldProjection1020]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

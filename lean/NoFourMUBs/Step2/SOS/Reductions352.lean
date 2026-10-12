import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical233
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical249
import NoFourMUBs.Step2.SOS.Canonical250
import NoFourMUBs.Step2.SOS.Canonical251
import NoFourMUBs.Step2.SOS.Canonical252
import NoFourMUBs.Step2.SOS.Canonical260
import NoFourMUBs.Step2.SOS.Canonical262
import NoFourMUBs.Step2.SOS.Canonical278
import NoFourMUBs.Step2.SOS.Canonical279
import NoFourMUBs.Step2.SOS.Canonical280
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical309
import NoFourMUBs.Step2.SOS.Canonical310
import NoFourMUBs.Step2.SOS.Canonical311
import NoFourMUBs.Step2.SOS.Canonical312
import NoFourMUBs.Step2.SOS.Canonical313
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical319
import NoFourMUBs.Step2.SOS.Canonical320
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical331
import NoFourMUBs.Step2.SOS.Canonical338
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions121
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions157
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions226
import NoFourMUBs.Step2.SOS.Reductions227
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions299
import NoFourMUBs.Step2.SOS.Reductions350
import NoFourMUBs.Step2.SOS.Reductions351
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical225
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11264 : Integer.Sparse (Fin 1613) := [(0, -46), (94, 25), (698, 80), (1059, 80), (1227, 80), (1251, 75)]

def reductionPivot11264 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, 0, -1, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0]]

theorem reductionSound11264 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10402).moment H =
      Integer.Sparse.eval reductionProjection11264 (momentVector H) := by
  have heq : reductionPivot11264 = (fun u v => (normalNode10402).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10402).moment H = injectiveMoment H reductionPivot11264 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10402).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11264 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11264 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11264 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2784, oldProjection2784, oldProjection1264, oldProjection2629] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11264 (0 : Fin 4)) = canonicalInput16066.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11264 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2784 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11264 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16066 hH))).trans (oldProjectionSound2784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11264 (1 : Fin 4)) = canonicalInput20459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11264 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2784 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11264 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20459 hH))).trans (oldProjectionSound2784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11264 (2 : Fin 4)) = canonicalInput20506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11264 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1264 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11264 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20506 hH))).trans (oldProjectionSound1264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11264 (3 : Fin 4)) = canonicalInput20510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11264 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2629 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11264 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20510 hH))).trans (oldProjectionSound2629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10402).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11264 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10402).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11264 (j : Fin 4)))
      2 2880 2880 2 ![720, 720, 720, 1440] ![4, 4, 4, 2] reductionProjection11264 ![oldProjection2784, oldProjection2784, oldProjection1264, oldProjection2629]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11265 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 20), (698, 640), (1059, 480), (1221, -240), (1227, 480), (1251, -355), (1389, -240)]

def reductionPivot11265 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0]]

theorem reductionSound11265 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10052).moment H =
      Integer.Sparse.eval reductionProjection11265 (momentVector H) := by
  have heq : reductionPivot11265 = (fun u v => (normalNode10052).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10052).moment H = injectiveMoment H reductionPivot11265 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10052).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11265 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11265 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 48, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11265 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2761, oldProjection2635, oldProjection1242, oldProjection2018] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11265 (0 : Fin 4)) = canonicalInput14957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11265 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11265 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14957 hH))).trans (oldProjectionSound2761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11265 (1 : Fin 4)) = canonicalInput19829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11265 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2635 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11265 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19829 hH))).trans (oldProjectionSound2635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11265 (2 : Fin 4)) = canonicalInput19917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11265 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1242 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11265 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1242 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19917 hH))).trans (oldProjectionSound1242 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11265 (3 : Fin 4)) = canonicalInput19924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11265 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11265 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19924 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10052).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11265 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10052).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11265 (j : Fin 4)))
      2 2880 2880 2 ![720, 720, 48, 1440] ![4, 4, 60, 2] reductionProjection11265 ![oldProjection2761, oldProjection2635, oldProjection1242, oldProjection2018]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11266 : Integer.Sparse (Fin 1613) := [(0, -11), (94, -65), (241, -80), (433, -720), (698, -1360), (865, -720), (869, -1440), (957, -720), (1050, 240), (1055, 720), (1059, -720), (1221, 480), (1227, -960), (1251, 430), (1389, 240)]

def reductionPivot11266 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0]]

theorem reductionSound11266 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8343).moment H =
      Integer.Sparse.eval reductionProjection11266 (momentVector H) := by
  have heq : reductionPivot11266 = (fun u v => (normalNode8343).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8343).moment H = injectiveMoment H reductionPivot11266 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8343).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11266 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11266 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 960, 2880, 2880, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11266 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11263, reductionProjection11257, reductionProjection11264, reductionProjection11265, reductionProjection7183] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11266 (0 : Fin 5)) = canonicalInput14850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11263 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14850 hH))).trans (reductionSound11263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11266 (1 : Fin 5)) = (normalNode8301).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((960 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11257 (momentVector H)
      have hh : (960 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (960 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11266 (2 : Fin 5)) = canonicalInput15918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11264 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15918 hH))).trans (reductionSound11264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11266 (3 : Fin 5)) = canonicalInput15925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11265 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15925 hH))).trans (reductionSound11265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11266 (4 : Fin 5)) = canonicalInput15926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7183 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11266 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15926 hH))).trans (reductionSound7183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8343).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11266 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8343).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11266 (j : Fin 5)))
      1 1440 2880 2 ![1440, 960, 2880, 2880, 1440] ![2, 3, 1, 1, 2] reductionProjection11266 ![reductionProjection11263, reductionProjection11257, reductionProjection11264, reductionProjection11265, reductionProjection7183]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11267 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 7), (247, 8), (698, 16), (869, 72), (1055, -24), (1059, 8), (1227, 32), (1251, -33), (1388, -24)]

def reductionPivot11267 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound11267 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8344).moment H =
      Integer.Sparse.eval reductionProjection11267 (momentVector H) := by
  have heq : reductionPivot11267 = (fun u v => (normalNode8344).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8344).moment H = injectiveMoment H reductionPivot11267 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8344).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11267 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11267 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11267 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2856, oldProjection2055, oldProjection2724, oldProjection2724] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11267 (0 : Fin 4)) = canonicalInput14852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11267 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2856 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11267 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2856 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14852 hH))).trans (oldProjectionSound2856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11267 (1 : Fin 4)) = canonicalInput15809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11267 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11267 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15809 hH))).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11267 (2 : Fin 4)) = canonicalInput15922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11267 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11267 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15922 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11267 (3 : Fin 4)) = canonicalInput15927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11267 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11267 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15927 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8344).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11267 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8344).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11267 (j : Fin 4)))
      2 288 1440 10 ![720, 144, 1440, 1440] ![2, 10, 1, 1] reductionProjection11267 ![oldProjection2856, oldProjection2055, oldProjection2724, oldProjection2724]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11268 : Integer.Sparse (Fin 1613) := [(0, -17), (19, 80), (94, -175), (241, -400), (243, -80), (247, -80), (697, 240), (698, -1040), (1050, 240), (1055, 960), (1058, 240), (1059, -120), (1226, -160), (1227, -480), (1250, -300), (1251, 330), (1388, 240), (1389, 240)]

def reductionPivot11268 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11268 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8346).moment H =
      Integer.Sparse.eval reductionProjection11268 (momentVector H) := by
  have heq : reductionPivot11268 = (fun u v => (normalNode8346).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8346).moment H = injectiveMoment H reductionPivot11268 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8346).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11268 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11268 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 144, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11268 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2184, reductionProjection11260, reductionProjection11261, reductionProjection990, reductionProjection990] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11268 (0 : Fin 5)) = canonicalInput14856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2184 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14856 hH))).trans (reductionSound2184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11268 (1 : Fin 5)) = canonicalInput15828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11260 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15828 hH))).trans (reductionSound11260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11268 (2 : Fin 5)) = canonicalInput15968.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11261 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15968 hH))).trans (reductionSound11261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11268 (3 : Fin 5)) = (normalNode8412).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection990 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection990 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11268 (4 : Fin 5)) = canonicalInput15969.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection990 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11268 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection990 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15969 hH))).trans (reductionSound990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8346).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11268 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8346).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11268 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 144, 288, 288] ![10, 1, 10, 5, 5] reductionProjection11268 ![reductionProjection2184, reductionProjection11260, reductionProjection11261, reductionProjection990, reductionProjection990]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11269 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 4), (698, 32), (1059, 12), (1226, 4), (1227, 20), (1251, -13)]

def reductionPivot11269 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 0, -1, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]

theorem reductionSound11269 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode8347).moment H =
      Integer.Sparse.eval reductionProjection11269 (momentVector H) := by
  have heq : reductionPivot11269 = (fun u v => (normalNode8347).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8347).moment H = injectiveMoment H reductionPivot11269 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8347).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11269 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11269 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11269 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2647, oldProjection2449, oldProjection2442, oldProjection1044] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11269 (0 : Fin 4)) = canonicalInput14868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11269 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2647 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11269 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14868 hH))).trans (oldProjectionSound2647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11269 (1 : Fin 4)) = canonicalInput15882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11269 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11269 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15882 hH))).trans (oldProjectionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11269 (2 : Fin 4)) = canonicalInput15976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11269 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2442 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11269 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15976 hH))).trans (oldProjectionSound2442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11269 (3 : Fin 4)) = canonicalInput15978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11269 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1044 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11269 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1044 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15978 hH))).trans (oldProjectionSound1044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8347).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11269 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8347).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11269 (j : Fin 4)))
      2 144 1440 20 ![288, 1440, 1440, 720] ![5, 1, 1, 2] reductionProjection11269 ![oldProjection2647, oldProjection2449, oldProjection2442, oldProjection1044]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11270 : Integer.Sparse (Fin 1613) := [(0, -1), (698, 16), (1059, 4), (1227, 8), (1251, -15)]

def reductionPivot11270 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]

theorem reductionSound11270 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode8389).moment H =
      Integer.Sparse.eval reductionProjection11270 (momentVector H) := by
  have heq : reductionPivot11270 = (fun u v => (normalNode8389).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8389).moment H = injectiveMoment H reductionPivot11270 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8389).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11270 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11270 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11270 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2607, oldProjection1054, oldProjection2588, oldProjection2588] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11270 (0 : Fin 4)) = canonicalInput17927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11270 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2607 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11270 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2607 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17927 hH))).trans (oldProjectionSound2607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11270 (1 : Fin 4)) = canonicalInput16034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11270 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1054 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11270 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16034 hH))).trans (oldProjectionSound1054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11270 (2 : Fin 4)) = canonicalInput15950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11270 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11270 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15950 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11270 (3 : Fin 4)) = canonicalInput15945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11270 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11270 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15945 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8389).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11270 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8389).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11270 (j : Fin 4)))
      2 144 1440 20 ![360, 720, 1440, 1440] ![4, 2, 1, 1] reductionProjection11270 ![oldProjection2607, oldProjection1054, oldProjection2588, oldProjection2588]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11271 : Integer.Sparse (Fin 1613) := [(0, 21), (94, 5), (698, 240), (890, 360), (1059, 120), (1226, 40), (1227, 240), (1251, -60)]

def reductionPivot11271 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, -2, 0], ![1, 0, -1, 0, 0]]

theorem reductionSound11271 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10079).moment H =
      Integer.Sparse.eval reductionProjection11271 (momentVector H) := by
  have heq : reductionPivot11271 = (fun u v => (normalNode10079).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10079).moment H = injectiveMoment H reductionPivot11271 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10079).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11271 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11271 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11271 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2613, oldProjection1057, reductionProjection1014, oldProjection2015] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11271 (0 : Fin 4)) = canonicalInput22704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11271 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2613 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11271 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22704 hH))).trans (oldProjectionSound2613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11271 (1 : Fin 4)) = canonicalInput19886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11271 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1057 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11271 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19886 hH))).trans (oldProjectionSound1057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11271 (2 : Fin 4)) = canonicalInput19799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11271 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1014 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11271 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19799 hH))).trans (reductionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11271 (3 : Fin 4)) = canonicalInput19788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11271 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2015 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11271 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19788 hH))).trans (oldProjectionSound2015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10079).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11271 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10079).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11271 (j : Fin 4)))
      2 1440 1440 2 ![1440, 720, 1440, 1440] ![1, 2, 1, 1] reductionProjection11271 ![oldProjection2613, oldProjection1057, reductionProjection1014, oldProjection2015]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11272 : Integer.Sparse (Fin 1613) := [(0, -58), (94, -15), (610, -360), (698, -1400), (890, -1440), (1015, -1080), (1016, -1800), (1059, -320), (1226, -160), (1227, -640), (1251, 535)]

def reductionPivot11272 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0], ![1, -1, 0, 0, 0]]

theorem reductionSound11272 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8349).moment H =
      Integer.Sparse.eval reductionProjection11272 (momentVector H) := by
  have heq : reductionPivot11272 = (fun u v => (normalNode8349).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8349).moment H = injectiveMoment H reductionPivot11272 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8349).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11272 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11272 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 360, 144, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11272 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5134, reductionProjection7251, reductionProjection11270, reductionProjection11271, reductionProjection7252] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11272 (0 : Fin 5)) = canonicalInput14882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5134 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5134 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14882 hH))).trans (reductionSound5134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11272 (1 : Fin 5)) = (normalNode8393).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7251 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11272 (2 : Fin 5)) = canonicalInput15995.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11270 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15995 hH))).trans (reductionSound11270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11272 (3 : Fin 5)) = canonicalInput15998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11271 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15998 hH))).trans (reductionSound11271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11272 (4 : Fin 5)) = canonicalInput15999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7252 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11272 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7252 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15999 hH))).trans (reductionSound7252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8349).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11272 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8349).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11272 (j : Fin 5)))
      1 1440 2880 2 ![576, 360, 144, 1440, 2880] ![5, 8, 20, 2, 1] reductionProjection11272 ![reductionProjection5134, reductionProjection7251, reductionProjection11270, reductionProjection11271, reductionProjection7252]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11273 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -3), (1251, 8)]

def reductionPivot11273 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1]]

theorem reductionSound11273 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10335).moment H =
      Integer.Sparse.eval reductionProjection11273 (momentVector H) := by
  have heq : reductionPivot11273 = (fun u v => (normalNode10335).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10335).moment H = injectiveMoment H reductionPivot11273 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10335).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11273 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11273 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 720, 90] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11273 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1118, oldProjection1265, oldProjection1260, oldProjection1048] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11273 (0 : Fin 4)) = canonicalInput20999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11273 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1118 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11273 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20999 hH))).trans (oldProjectionSound1118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11273 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11273 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1265 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11273 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11273 (2 : Fin 4)) = canonicalInput20284.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11273 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1260 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11273 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20284 hH))).trans (oldProjectionSound1260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11273 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7211 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11273 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11273 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7211 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10335).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11273 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10335).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11273 (j : Fin 4)))
      2 144 720 10 ![720, 240, 720, 90] ![1, 3, 1, 8] reductionProjection11273 ![oldProjection1118, oldProjection1265, oldProjection1260, oldProjection1048]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11274 : Integer.Sparse (Fin 1613) := [(0, -7), (94, 15), (698, 80), (1059, 40), (1227, 80), (1251, -70)]

def reductionPivot11274 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11274 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8353).moment H =
      Integer.Sparse.eval reductionProjection11274 (momentVector H) := by
  have heq : reductionPivot11274 = (fun u v => (normalNode8353).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8353).moment H = injectiveMoment H reductionPivot11274 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8353).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11274 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11274 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1440, 1440, 90] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11274 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11273, oldProjection2588, oldProjection2725, oldProjection1048] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11274 (0 : Fin 4)) = canonicalInput14887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11274 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11273 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11274 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14887 hH))).trans (reductionSound11273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11274 (1 : Fin 4)) = canonicalInput15945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11274 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11274 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15945 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11274 (2 : Fin 4)) = canonicalInput16005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11274 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11274 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16005 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11274 (3 : Fin 4)) = canonicalInput16010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11274 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11274 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16010 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8353).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11274 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8353).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11274 (j : Fin 4)))
      2 1440 1440 2 ![144, 1440, 1440, 90] ![10, 1, 1, 16] reductionProjection11274 ![reductionProjection11273, oldProjection2588, oldProjection2725, oldProjection1048]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11275 : Integer.Sparse (Fin 1613) := [(0, 47), (19, -40), (94, 150), (247, 160), (669, 1440), (697, -480), (698, 320), (1055, -480), (1059, 80), (1227, 240), (1250, 240), (1251, -225), (1388, -480), (1389, -480)]

def reductionPivot11275 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 1, -1, 2], ![0, 0, -1, 2, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]

theorem reductionSound11275 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9187).moment H =
      Integer.Sparse.eval reductionProjection11275 (momentVector H) := by
  have heq : reductionPivot11275 = (fun u v => (normalNode9187).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9187).moment H = injectiveMoment H reductionPivot11275 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9187).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11275 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11275 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11275 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1841, oldProjection1737, oldProjection1738, oldProjection1841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11275 (0 : Fin 4)) = canonicalInput18683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11275 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11275 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18683 hH))).trans (oldProjectionSound1841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11275 (1 : Fin 4)) = canonicalInput17853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11275 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11275 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17853 hH))).trans (oldProjectionSound1737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11275 (2 : Fin 4)) = canonicalInput17836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11275 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1738 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11275 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1738 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17836 hH))).trans (oldProjectionSound1738 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11275 (3 : Fin 4)) = canonicalInput17832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11275 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11275 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17832 hH))).trans (oldProjectionSound1841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9187).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11275 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9187).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11275 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 1440] ![2, 2, 4, 2] reductionProjection11275 ![oldProjection1841, oldProjection1737, oldProjection1738, oldProjection1841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11276 : Integer.Sparse (Fin 1613) := [(0, 3), (81, -180), (94, 10), (611, 180), (616, 180), (698, 200), (1050, -60), (1055, -120), (1058, -180), (1059, 100), (1221, -120), (1226, 20), (1227, 100), (1251, -25)]

def reductionPivot11276 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 2, -2, -1], ![1, -1, -1, 0, 1]]

theorem reductionSound11276 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8405).moment H =
      Integer.Sparse.eval reductionProjection11276 (momentVector H) := by
  have heq : reductionPivot11276 = (fun u v => (normalNode8405).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8405).moment H = injectiveMoment H reductionPivot11276 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8405).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11276 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11276 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 288, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11276 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3610, reductionProjection3723, reductionProjection2138, reductionProjection3046] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11276 (0 : Fin 4)) = canonicalInput20676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11276 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3610 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11276 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20676 hH))).trans (reductionSound3610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11276 (1 : Fin 4)) = canonicalInput16166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11276 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3723 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11276 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16166 hH))).trans (reductionSound3723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11276 (2 : Fin 4)) = canonicalInput15958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11276 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2138 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11276 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15958 hH))).trans (reductionSound2138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11276 (3 : Fin 4)) = canonicalInput15952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11276 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11276 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15952 hH))).trans (reductionSound3046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8405).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11276 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8405).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11276 (j : Fin 4)))
      2 720 1440 4 ![720, 288, 1440, 720] ![2, 5, 1, 2] reductionProjection11276 ![reductionProjection3610, reductionProjection3723, reductionProjection2138, reductionProjection3046]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11277 : Integer.Sparse (Fin 1613) := [(0, -68), (19, 60), (81, 1440), (94, -385), (241, -80), (247, -240), (553, -720), (610, -720), (611, -1440), (616, -720), (617, -720), (668, -720), (669, -2160), (697, 960), (698, -2720), (1050, 480), (1055, 1440), (1058, 960), (1059, -1040), (1221, 1200), (1226, -160), (1227, -1760), (1250, -420), (1251, 1095), (1388, 720), (1389, 2400)]

def reductionPivot11277 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, -1, -1, 0, 1]]

theorem reductionSound11277 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8354).moment H =
      Integer.Sparse.eval reductionProjection11277 (momentVector H) := by
  have heq : reductionPivot11277 = (fun u v => (normalNode8354).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8354).moment H = injectiveMoment H reductionPivot11277 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8354).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11277 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11277 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 720, 288, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11277 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11275, reductionProjection11276, reductionProjection11231, reductionProjection5131, reductionProjection11226] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11277 (0 : Fin 5)) = canonicalInput14888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11275 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14888 hH))).trans (reductionSound11275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11277 (1 : Fin 5)) = (normalNode8405).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11277 (2 : Fin 5)) = canonicalInput16007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11231 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16007 hH))).trans (reductionSound11231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11277 (3 : Fin 5)) = canonicalInput16014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5131 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5131 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16014 hH))).trans (reductionSound5131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11277 (4 : Fin 5)) = canonicalInput16015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11226 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11277 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16015 hH))).trans (reductionSound11226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8354).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11277 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8354).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11277 (j : Fin 5)))
      1 2880 2880 1 ![2880, 720, 288, 2880, 2880] ![1, 4, 10, 1, 1] reductionProjection11277 ![reductionProjection11275, reductionProjection11276, reductionProjection11231, reductionProjection5131, reductionProjection11226]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11278 : Integer.Sparse (Fin 1613) := [(0, 11), (81, -48), (94, 12), (698, 192), (700, 16), (1059, 128), (1221, -48), (1227, 128), (1251, -55), (1389, -48)]

def reductionPivot11278 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, 0, -1, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, -1, 1, 0, -1]]

theorem reductionSound11278 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode10170).moment H =
      Integer.Sparse.eval reductionProjection11278 (momentVector H) := by
  have heq : reductionPivot11278 = (fun u v => (normalNode10170).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10170).moment H = injectiveMoment H reductionPivot11278 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10170).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11278 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11278 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11278 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2586, oldProjection2071, oldProjection1785, oldProjection1769] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11278 (0 : Fin 4)) = canonicalInput21244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11278 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11278 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21244 hH))).trans (oldProjectionSound2586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11278 (1 : Fin 4)) = canonicalInput20034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11278 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11278 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20034 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11278 (2 : Fin 4)) = canonicalInput20027.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11278 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11278 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20027 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11278 (3 : Fin 4)) = canonicalInput20026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11278 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1769 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11278 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20026 hH))).trans (oldProjectionSound1769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10170).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11278 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10170).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11278 (j : Fin 4)))
      2 576 2880 10 ![1440, 1440, 1440, 1440] ![2, 2, 2, 2] reductionProjection11278 ![oldProjection2586, oldProjection2071, oldProjection1785, oldProjection1769]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11279 : Integer.Sparse (Fin 1613) := [(0, -27), (81, 120), (94, -95), (433, -360), (698, -1200), (700, -80), (865, -360), (869, -720), (957, -360), (1050, 120), (1055, 600), (1058, 120), (1059, -680), (1221, 240), (1227, -800), (1250, -90), (1251, 350), (1388, 120), (1389, 240)]

def reductionPivot11279 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, -1, 1, -1, 0]]

theorem reductionSound11279 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8358).moment H =
      Integer.Sparse.eval reductionProjection11279 (momentVector H) := by
  have heq : reductionPivot11279 = (fun u v => (normalNode8358).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8358).moment H = injectiveMoment H reductionPivot11279 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8358).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11279 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11279 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 1440, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11279 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11278, oldProjection2629, reductionProjection7183, reductionProjection3896, reductionProjection11264] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11279 (0 : Fin 5)) = canonicalInput14923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11278 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14923 hH))).trans (reductionSound11278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11279 (1 : Fin 5)) = canonicalInput15980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2629 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15980 hH))).trans (oldProjectionSound2629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11279 (2 : Fin 5)) = canonicalInput16056.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7183 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16056 hH))).trans (reductionSound7183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11279 (3 : Fin 5)) = canonicalInput16059.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3896 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16059 hH))).trans (reductionSound3896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11279 (4 : Fin 5)) = canonicalInput16060.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11264 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11279 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16060 hH))).trans (reductionSound11264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8358).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11279 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8358).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11279 (j : Fin 5)))
      1 1440 2880 2 ![576, 1440, 1440, 2880, 2880] ![5, 2, 2, 1, 1] reductionProjection11279 ![reductionProjection11278, oldProjection2629, reductionProjection7183, reductionProjection3896, reductionProjection11264]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11280 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 6), (698, 32), (1221, -24), (1226, 8), (1227, 24), (1251, -11), (1389, -48)]

def reductionPivot11280 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound11280 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8359).moment H =
      Integer.Sparse.eval reductionProjection11280 (momentVector H) := by
  have heq : reductionPivot11280 = (fun u v => (normalNode8359).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8359).moment H = injectiveMoment H reductionPivot11280 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8359).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11280 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11280 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 480, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11280 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4796, oldProjection711, reductionProjection3138, oldProjection2724] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11280 (0 : Fin 4)) = canonicalInput14926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11280 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4796 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11280 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14926 hH))).trans (reductionSound4796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11280 (1 : Fin 4)) = canonicalInput15981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11280 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection711 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11280 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection711 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15981 hH))).trans (oldProjectionSound711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11280 (2 : Fin 4)) = canonicalInput16058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11280 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3138 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11280 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16058 hH))).trans (reductionSound3138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11280 (3 : Fin 4)) = canonicalInput16062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11280 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11280 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16062 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8359).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11280 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8359).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11280 (j : Fin 4)))
      2 288 1440 10 ![1440, 480, 288, 1440] ![1, 3, 5, 1] reductionProjection11280 ![reductionProjection4796, oldProjection711, reductionProjection3138, oldProjection2724]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11281 : Integer.Sparse (Fin 1613) := [(0, 29), (94, 15), (617, 360), (698, 280), (1059, 120), (1226, 40), (1227, 320), (1251, -270), (1385, 360), (1389, -240)]

def reductionPivot11281 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 0, 2], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, -1, 1, -1]]

theorem reductionSound11281 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10086).moment H =
      Integer.Sparse.eval reductionProjection11281 (momentVector H) := by
  have heq : reductionPivot11281 = (fun u v => (normalNode10086).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10086).moment H = injectiveMoment H reductionPivot11281 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10086).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11281 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11281 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11281 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5155, oldProjection2645, oldProjection1825, oldProjection1826] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11281 (0 : Fin 4)) = canonicalInput19991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11281 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5155 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11281 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19991 hH))).trans (reductionSound5155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11281 (1 : Fin 4)) = canonicalInput19810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11281 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2645 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11281 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19810 hH))).trans (oldProjectionSound2645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11281 (2 : Fin 4)) = canonicalInput19807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11281 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1825 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11281 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19807 hH))).trans (oldProjectionSound1825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11281 (3 : Fin 4)) = canonicalInput19806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11281 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1826 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11281 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19806 hH))).trans (oldProjectionSound1826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10086).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11281 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10086).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11281 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 720, 360] ![20, 2, 2, 4] reductionProjection11281 ![reductionProjection5155, oldProjection2645, oldProjection1825, oldProjection1826]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11282 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 11), (698, 80), (1059, 32), (1227, 96), (1251, -82)]

def reductionPivot11282 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11282 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8741).moment H =
      Integer.Sparse.eval reductionProjection11282 (momentVector H) := by
  have heq : reductionPivot11282 = (fun u v => (normalNode8741).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8741).moment H = injectiveMoment H reductionPivot11282 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8741).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11282 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11282 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11282 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2582, oldProjection2581, oldProjection2581, oldProjection2584] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11282 (0 : Fin 4)) = canonicalInput16068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11282 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2582 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11282 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2582 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16068 hH))).trans (oldProjectionSound2582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11282 (1 : Fin 4)) = canonicalInput16660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11282 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2581 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11282 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16660 hH))).trans (oldProjectionSound2581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11282 (2 : Fin 4)) = canonicalInput16678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11282 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2581 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11282 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16678 hH))).trans (oldProjectionSound2581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11282 (3 : Fin 4)) = canonicalInput16679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11282 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2584 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11282 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16679 hH))).trans (oldProjectionSound2584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8741).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11282 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8741).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11282 (j : Fin 4)))
      2 576 2880 10 ![144, 1440, 1440, 1440] ![20, 2, 2, 2] reductionProjection11282 ![oldProjection2582, oldProjection2581, oldProjection2581, oldProjection2584]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11283 : Integer.Sparse (Fin 1613) := [(0, 61), (94, 120), (610, 720), (698, 1120), (1059, 320), (1221, -480), (1226, 240), (1227, 800), (1251, -405), (1389, -720)]

def reductionPivot11283 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, 0, -1, -1, 1]]

theorem reductionSound11283 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10074).moment H =
      Integer.Sparse.eval reductionProjection11283 (momentVector H) := by
  have heq : reductionPivot11283 = (fun u v => (normalNode10074).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10074).moment H = injectiveMoment H reductionPivot11283 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10074).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11283 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11283 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 72, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11283 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1793, oldProjection1790, oldProjection1784, oldProjection1800] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11283 (0 : Fin 4)) = canonicalInput20448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11283 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1793 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11283 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20448 hH))).trans (oldProjectionSound1793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11283 (1 : Fin 4)) = canonicalInput19821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11283 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1790 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11283 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19821 hH))).trans (oldProjectionSound1790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11283 (2 : Fin 4)) = canonicalInput19800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11283 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1784 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11283 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19800 hH))).trans (oldProjectionSound1784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11283 (3 : Fin 4)) = canonicalInput19798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11283 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1800 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11283 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19798 hH))).trans (oldProjectionSound1800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10074).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11283 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10074).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11283 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 72, 1440] ![10, 2, 40, 2] reductionProjection11283 ![oldProjection1793, oldProjection1790, oldProjection1784, oldProjection1800]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11284 : Integer.Sparse (Fin 1613) := [(0, -17), (94, 60), (698, 480), (1059, 160), (1226, 80), (1227, 640), (1251, -395)]

def reductionPivot11284 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 1, -1, -1], ![1, -1, -1, 1, 0]]

theorem reductionSound11284 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10128).moment H =
      Integer.Sparse.eval reductionProjection11284 (momentVector H) := by
  have heq : reductionPivot11284 = (fun u v => (normalNode10128).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10128).moment H = injectiveMoment H reductionPivot11284 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10128).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11284 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11284 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11284 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2628, oldProjection2581, oldProjection2629, reductionProjection3529] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11284 (0 : Fin 4)) = canonicalInput20040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11284 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2628 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11284 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20040 hH))).trans (oldProjectionSound2628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11284 (1 : Fin 4)) = canonicalInput19914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11284 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2581 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11284 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19914 hH))).trans (oldProjectionSound2581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11284 (2 : Fin 4)) = canonicalInput19908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11284 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2629 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11284 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19908 hH))).trans (oldProjectionSound2629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11284 (3 : Fin 4)) = canonicalInput19907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11284 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3529 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11284 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3529 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19907 hH))).trans (reductionSound3529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10128).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11284 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10128).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11284 (j : Fin 4)))
      2 2880 2880 2 ![72, 1440, 1440, 720] ![40, 2, 2, 4] reductionProjection11284 ![oldProjection2628, oldProjection2581, oldProjection2629, reductionProjection3529]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11285 : Integer.Sparse (Fin 1613) := [(0, -39), (1227, 80), (1251, -65)]

def reductionPivot11285 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, 0, -1, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]

theorem reductionSound11285 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10403).moment H =
      Integer.Sparse.eval reductionProjection11285 (momentVector H) := by
  have heq : reductionPivot11285 = (fun u v => (normalNode10403).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10403).moment H = injectiveMoment H reductionPivot11285 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10403).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11285 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11285 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 144, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11285 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2725, reductionProjection5054, oldProjection1246, oldProjection2725] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11285 (0 : Fin 4)) = canonicalInput16076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11285 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11285 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16076 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11285 (1 : Fin 4)) = canonicalInput20464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11285 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5054 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11285 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20464 hH))).trans (reductionSound5054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11285 (2 : Fin 4)) = canonicalInput20511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11285 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1246 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11285 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20511 hH))).trans (oldProjectionSound1246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11285 (3 : Fin 4)) = canonicalInput20513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11285 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11285 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20513 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10403).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11285 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10403).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11285 (j : Fin 4)))
      2 1440 1440 2 ![1440, 720, 144, 1440] ![1, 2, 10, 1] reductionProjection11285 ![oldProjection2725, reductionProjection5054, oldProjection1246, oldProjection2725]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11286 : Integer.Sparse (Fin 1613) := [(0, -29), (94, -265), (610, -720), (617, -720), (698, -2560), (1059, -880), (1221, 480), (1226, -400), (1227, -2720), (1251, 1880), (1385, -720), (1389, 1200)]

def reductionPivot11286 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0]]

theorem reductionSound11286 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8362).moment H =
      Integer.Sparse.eval reductionProjection11286 (momentVector H) := by
  have heq : reductionPivot11286 = (fun u v => (normalNode8362).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8362).moment H = injectiveMoment H reductionPivot11286 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8362).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11286 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11286 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 576, 2880, 2880, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11286 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11281, reductionProjection11282, reductionProjection11283, reductionProjection11284, reductionProjection11285] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11286 (0 : Fin 5)) = canonicalInput14939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11281 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14939 hH))).trans (reductionSound11281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11286 (1 : Fin 5)) = canonicalInput16006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11282 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16006 hH))).trans (reductionSound11282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11286 (2 : Fin 5)) = canonicalInput16069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11283 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16069 hH))).trans (reductionSound11283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11286 (3 : Fin 5)) = canonicalInput16073.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11284 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16073 hH))).trans (reductionSound11284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11286 (4 : Fin 5)) = canonicalInput16074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11285 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11286 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16074 hH))).trans (reductionSound11285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8362).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11286 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8362).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11286 (j : Fin 5)))
      1 2880 2880 1 ![1440, 576, 2880, 2880, 1440] ![2, 5, 1, 1, 2] reductionProjection11286 ![reductionProjection11281, reductionProjection11282, reductionProjection11283, reductionProjection11284, reductionProjection11285]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11287 : Integer.Sparse (Fin 1613) := [(0, 13), (94, 60), (698, 800), (1059, 400), (1221, -240), (1226, 80), (1227, 720), (1251, -465), (1389, -240)]

def reductionPivot11287 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]

theorem reductionSound11287 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8363).moment H =
      Integer.Sparse.eval reductionProjection11287 (momentVector H) := by
  have heq : reductionPivot11287 = (fun u v => (normalNode8363).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8363).moment H = injectiveMoment H reductionPivot11287 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8363).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11287 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11287 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11287 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3130, oldProjection2582, reductionProjection3543, oldProjection2725] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11287 (0 : Fin 4)) = canonicalInput14941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11287 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3130 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11287 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14941 hH))).trans (reductionSound3130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11287 (1 : Fin 4)) = canonicalInput16008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11287 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2582 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11287 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2582 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16008 hH))).trans (oldProjectionSound2582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11287 (2 : Fin 4)) = canonicalInput16070.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11287 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3543 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11287 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16070 hH))).trans (reductionSound3543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11287 (3 : Fin 4)) = canonicalInput16076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11287 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11287 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16076 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8363).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11287 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8363).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11287 (j : Fin 4)))
      2 2880 2880 2 ![1440, 144, 1440, 1440] ![2, 20, 2, 2] reductionProjection11287 ![reductionProjection3130, oldProjection2582, reductionProjection3543, oldProjection2725]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11288 : Integer.Sparse (Fin 1613) := [(0, 71), (94, 10), (610, 720), (698, 640), (1027, 720), (1059, 240), (1221, -480), (1227, 1120), (1251, -605), (1389, -1440)]

def reductionPivot11288 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 0, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]

theorem reductionSound11288 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8424).moment H =
      Integer.Sparse.eval reductionProjection11288 (momentVector H) := by
  have heq : reductionPivot11288 = (fun u v => (normalNode8424).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8424).moment H = injectiveMoment H reductionPivot11288 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8424).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11288 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11288 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11288 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2071, reductionProjection2731, oldProjection2018, oldProjection2076] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11288 (0 : Fin 4)) = canonicalInput16782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11288 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11288 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16782 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11288 (1 : Fin 4)) = canonicalInput16153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11288 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2731 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11288 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16153 hH))).trans (reductionSound2731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11288 (2 : Fin 4)) = canonicalInput16148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11288 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11288 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16148 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11288 (3 : Fin 4)) = canonicalInput16147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11288 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2076 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11288 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16147 hH))).trans (oldProjectionSound2076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8424).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11288 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8424).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11288 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 1440] ![2, 2, 2, 2] reductionProjection11288 ![oldProjection2071, reductionProjection2731, oldProjection2018, oldProjection2076]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11289 : Integer.Sparse (Fin 1613) := [(0, -59), (94, -125), (433, -360), (610, -360), (698, -1480), (865, -360), (869, -720), (957, -360), (1027, -360), (1050, 120), (1055, 600), (1058, 120), (1059, -560), (1221, 480), (1226, -120), (1227, -1520), (1250, -90), (1251, 900), (1388, 120), (1389, 1080)]

def reductionPivot11289 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, -1, 1, 0]]

theorem reductionSound11289 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8366).moment H =
      Integer.Sparse.eval reductionProjection11289 (momentVector H) := by
  have heq : reductionPivot11289 = (fun u v => (normalNode8366).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8366).moment H = injectiveMoment H reductionPivot11289 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8366).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11289 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11289 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 2880, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11289 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11235, reductionProjection11287, reductionProjection11288, reductionProjection11274, reductionProjection3275] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11289 (0 : Fin 5)) = canonicalInput14944.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11235 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11235 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14944 hH))).trans (reductionSound11235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11289 (1 : Fin 5)) = canonicalInput16013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11287 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16013 hH))).trans (reductionSound11287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11289 (2 : Fin 5)) = canonicalInput16075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11288 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16075 hH))).trans (reductionSound11288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11289 (3 : Fin 5)) = canonicalInput16080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16080 hH))).trans (reductionSound11274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11289 (4 : Fin 5)) = canonicalInput16081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3275 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11289 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16081 hH))).trans (reductionSound3275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8366).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11289 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8366).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11289 (j : Fin 5)))
      1 1440 2880 2 ![1440, 2880, 2880, 1440, 1440] ![2, 1, 1, 2, 2] reductionProjection11289 ![reductionProjection11235, reductionProjection11287, reductionProjection11288, reductionProjection11274, reductionProjection3275]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11290 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 5), (698, 40), (1251, 5)]

def reductionPivot11290 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, 0, -1, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0]]

theorem reductionSound11290 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode10092).moment H =
      Integer.Sparse.eval reductionProjection11290 (momentVector H) := by
  have heq : reductionPivot11290 = (fun u v => (normalNode10092).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10092).moment H = injectiveMoment H reductionPivot11290 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10092).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11290 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11290 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11290 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2745, oldProjection2635, oldProjection1057, oldProjection2745] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11290 (0 : Fin 4)) = canonicalInput16036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11290 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2745 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11290 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16036 hH))).trans (oldProjectionSound2745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11290 (1 : Fin 4)) = canonicalInput19829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11290 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2635 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11290 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19829 hH))).trans (oldProjectionSound2635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11290 (2 : Fin 4)) = canonicalInput19886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11290 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1057 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11290 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19886 hH))).trans (oldProjectionSound1057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11290 (3 : Fin 4)) = canonicalInput19893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11290 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2745 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11290 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19893 hH))).trans (oldProjectionSound2745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10092).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11290 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10092).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11290 (j : Fin 4)))
      2 360 720 4 ![144, 720, 720, 144] ![5, 1, 1, 5] reductionProjection11290 ![oldProjection2745, oldProjection2635, oldProjection1057, oldProjection2745]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11291 : Integer.Sparse (Fin 1613) := [(0, -13), (94, 5), (698, 80), (1059, 40), (1227, 80), (1251, 30)]

def reductionPivot11291 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]

theorem reductionSound11291 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8371).moment H =
      Integer.Sparse.eval reductionProjection11291 (momentVector H) := by
  have heq : reductionPivot11291 = (fun u v => (normalNode8371).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8371).moment H = injectiveMoment H reductionPivot11291 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8371).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11291 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11291 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 360, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11291 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7573, oldProjection1054, oldProjection2759, oldProjection2759] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11291 (0 : Fin 4)) = canonicalInput14955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11291 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7573 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11291 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7573 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14955 hH))).trans (reductionSound7573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11291 (1 : Fin 4)) = canonicalInput16034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11291 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1054 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11291 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16034 hH))).trans (oldProjectionSound1054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11291 (2 : Fin 4)) = canonicalInput16093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11291 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11291 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16093 hH))).trans (oldProjectionSound2759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11291 (3 : Fin 4)) = canonicalInput16096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11291 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11291 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16096 hH))).trans (oldProjectionSound2759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8371).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11291 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8371).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11291 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 360, 360] ![2, 2, 4, 4] reductionProjection11291 ![reductionProjection7573, oldProjection1054, oldProjection2759, oldProjection2759]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11292 : Integer.Sparse (Fin 1613) := [(0, 19), (698, 720), (890, 360), (1059, 360), (1221, -480), (1227, 440), (1251, -315), (1389, -240)]

def reductionPivot11292 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, 1, 0], ![1, -1, 1, -1, 0]]

theorem reductionSound11292 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8442).moment H =
      Integer.Sparse.eval reductionProjection11292 (momentVector H) := by
  have heq : reductionPivot11292 = (fun u v => (normalNode8442).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8442).moment H = injectiveMoment H reductionPivot11292 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8442).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11292 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11292 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11292 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2018, oldProjection2018, oldProjection2021, oldProjection2023] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11292 (0 : Fin 4)) = canonicalInput20517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11292 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11292 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20517 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11292 (1 : Fin 4)) = canonicalInput16173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11292 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11292 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16173 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11292 (2 : Fin 4)) = canonicalInput16098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11292 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2021 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11292 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16098 hH))).trans (oldProjectionSound2021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11292 (3 : Fin 4)) = canonicalInput16088.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11292 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2023 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11292 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16088 hH))).trans (oldProjectionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8442).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11292 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8442).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11292 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 720, 720] ![1, 1, 2, 2] reductionProjection11292 ![oldProjection2018, oldProjection2018, oldProjection2021, oldProjection2023]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11293 : Integer.Sparse (Fin 1613) := [(0, -92), (94, -55), (602, -1440), (698, -2960), (890, -1440), (1059, -1600), (1221, 1680), (1226, -80), (1227, -1440), (1251, 1145), (1389, 480)]

def reductionPivot11293 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0]]

theorem reductionSound11293 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8368).moment H =
      Integer.Sparse.eval reductionProjection11293 (momentVector H) := by
  have heq : reductionPivot11293 = (fun u v => (normalNode8368).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8368).moment H = injectiveMoment H reductionPivot11293 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8368).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11293 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11293 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 360, 360, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11293 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5123, reductionProjection11290, reductionProjection7278, reductionProjection11291, reductionProjection11292] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11293 (0 : Fin 5)) = canonicalInput14950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5123 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14950 hH))).trans (reductionSound5123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11293 (1 : Fin 5)) = canonicalInput16031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11290 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16031 hH))).trans (reductionSound11290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11293 (2 : Fin 5)) = (normalNode8444).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7278 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11293 (3 : Fin 5)) = canonicalInput16091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16091 hH))).trans (reductionSound11291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11293 (4 : Fin 5)) = canonicalInput16092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11292 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11293 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16092 hH))).trans (reductionSound11292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8368).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11293 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8368).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11293 (j : Fin 5)))
      1 2880 2880 1 ![576, 360, 360, 1440, 1440] ![5, 8, 8, 2, 2] reductionProjection11293 ![reductionProjection5123, reductionProjection11290, reductionProjection7278, reductionProjection11291, reductionProjection11292]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11294 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -20), (19, -20), (20, 10), (93, 60), (94, 55), (104, 80), (241, 80), (691, -240), (698, 320), (700, 80), (704, 160), (1050, -240), (1058, -480), (1059, 80), (1250, 180), (1251, -35)]

def reductionPivot11294 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 1, -1, 2], ![0, 0, -1, 3, -2], ![0, 0, 0, -2, 2], ![1, 0, 0, 0, -1]]

theorem reductionSound11294 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9188).moment H =
      Integer.Sparse.eval reductionProjection11294 (momentVector H) := by
  have heq : reductionPivot11294 = (fun u v => (normalNode9188).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9188).moment H = injectiveMoment H reductionPivot11294 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9188).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11294 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11294 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11294 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1220, reductionProjection6756, oldProjection2757, oldProjection1956] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11294 (0 : Fin 4)) = canonicalInput21690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11294 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11294 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21690 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11294 (1 : Fin 4)) = canonicalInput17863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11294 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11294 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17863 hH))).trans (reductionSound6756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11294 (2 : Fin 4)) = canonicalInput17839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11294 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2757 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11294 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2757 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17839 hH))).trans (oldProjectionSound2757 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11294 (3 : Fin 4)) = canonicalInput17837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11294 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1956 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11294 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17837 hH))).trans (oldProjectionSound1956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9188).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11294 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9188).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11294 (j : Fin 4)))
      2 2880 2880 2 ![360, 1440, 1440, 1440] ![8, 2, 2, 2] reductionProjection11294 ![oldProjection1220, reductionProjection6756, oldProjection2757, oldProjection1956]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11295 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -20), (19, -100), (20, 20), (72, -480), (93, 60), (94, 5), (105, 80), (241, 80), (243, 320), (698, 320), (700, 560), (704, 160), (1044, -240), (1050, -240), (1059, 80), (1250, 60), (1251, 15), (1321, -480)]

def reductionPivot11295 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 3, -2], ![0, 0, 1, -3, 2], ![1, 0, 0, 0, -1]]

theorem reductionSound11295 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8408).moment H =
      Integer.Sparse.eval reductionProjection11295 (momentVector H) := by
  have heq : reductionPivot11295 = (fun u v => (normalNode8408).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8408).moment H = injectiveMoment H reductionPivot11295 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8408).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11295 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11295 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11295 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1201, reductionProjection8594, oldProjection2848, reductionProjection9575] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11295 (0 : Fin 4)) = canonicalInput20678.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11295 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1201 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11295 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20678 hH))).trans (oldProjectionSound1201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11295 (1 : Fin 4)) = canonicalInput16169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11295 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8594 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11295 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16169 hH))).trans (reductionSound8594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11295 (2 : Fin 4)) = canonicalInput15967.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11295 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2848 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11295 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15967 hH))).trans (oldProjectionSound2848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11295 (3 : Fin 4)) = canonicalInput15964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11295 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9575 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11295 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15964 hH))).trans (reductionSound9575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8408).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11295 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8408).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11295 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 720] ![4, 2, 2, 4] reductionProjection11295 ![oldProjection1201, reductionProjection8594, oldProjection2848, reductionProjection9575]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

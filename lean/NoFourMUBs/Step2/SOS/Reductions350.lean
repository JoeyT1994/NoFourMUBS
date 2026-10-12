import NoFourMUBs.Step2.SOS.Canonical205
import NoFourMUBs.Step2.SOS.Canonical206
import NoFourMUBs.Step2.SOS.Canonical231
import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical244
import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical246
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical249
import NoFourMUBs.Step2.SOS.Canonical250
import NoFourMUBs.Step2.SOS.Canonical251
import NoFourMUBs.Step2.SOS.Canonical252
import NoFourMUBs.Step2.SOS.Canonical260
import NoFourMUBs.Step2.SOS.Canonical275
import NoFourMUBs.Step2.SOS.Canonical278
import NoFourMUBs.Step2.SOS.Canonical279
import NoFourMUBs.Step2.SOS.Canonical280
import NoFourMUBs.Step2.SOS.Canonical290
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical308
import NoFourMUBs.Step2.SOS.Canonical309
import NoFourMUBs.Step2.SOS.Canonical312
import NoFourMUBs.Step2.SOS.Canonical319
import NoFourMUBs.Step2.SOS.Canonical320
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
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
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions113
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions124
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions157
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions185
import NoFourMUBs.Step2.SOS.Reductions222
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions337
import NoFourMUBs.Step2.SOS.Reductions348
import NoFourMUBs.Step2.SOS.Reductions349
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11200 : Integer.Sparse (Fin 1613) := [(0, 8), (94, 5), (698, 640), (865, 720), (869, 720), (1050, -480), (1059, 560), (1221, -240), (1227, 240), (1251, -175)]

def reductionPivot11200 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]

theorem reductionSound11200 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8141).moment H =
      Integer.Sparse.eval reductionProjection11200 (momentVector H) := by
  have heq : reductionPivot11200 = (fun u v => (normalNode8141).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8141).moment H = injectiveMoment H reductionPivot11200 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8141).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11200 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11200 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1440, 1440, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11200 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2003, oldProjection1999, oldProjection1999, oldProjection2003] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11200 (0 : Fin 4)) = canonicalInput19775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11200 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2003 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11200 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19775 hH))).trans (oldProjectionSound2003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11200 (1 : Fin 4)) = canonicalInput15810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11200 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11200 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15810 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11200 (2 : Fin 4)) = canonicalInput15667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11200 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11200 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15667 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11200 (3 : Fin 4)) = canonicalInput15659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11200 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2003 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11200 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2003 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15659 hH))).trans (oldProjectionSound2003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8141).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11200 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8141).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11200 (j : Fin 4)))
      2 1440 1440 2 ![360, 1440, 1440, 360] ![4, 1, 1, 4] reductionProjection11200 ![oldProjection2003, oldProjection1999, oldProjection1999, oldProjection2003]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11201 : Integer.Sparse (Fin 1613) := [(0, -54), (94, -165), (241, -320), (426, -720), (668, -720), (698, -4320), (865, -2160), (869, -1440), (890, -720), (1016, -720), (1050, 1440), (1055, 720), (1059, -2480), (1221, 1440), (1226, -80), (1227, -2080), (1251, 925), (1389, 240)]

def reductionPivot11201 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]

theorem reductionSound11201 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8116).moment H =
      Integer.Sparse.eval reductionProjection11201 (momentVector H) := by
  have heq : reductionPivot11201 = (fun u v => (normalNode8116).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8116).moment H = injectiveMoment H reductionPivot11201 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8116).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11201 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11201 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 2880, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11201 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11199, reductionProjection10805, reductionProjection11185, reductionProjection11200, reductionProjection3041] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11201 (0 : Fin 5)) = canonicalInput17872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11199 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17872 hH))).trans (reductionSound11199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11201 (1 : Fin 5)) = canonicalInput15707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10805 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15707 hH))).trans (reductionSound10805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11201 (2 : Fin 5)) = canonicalInput15655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11185 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15655 hH))).trans (reductionSound11185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11201 (3 : Fin 5)) = (normalNode8141).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11200 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11201 (4 : Fin 5)) = canonicalInput15652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3041 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11201 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15652 hH))).trans (reductionSound3041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8116).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11201 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8116).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11201 (j : Fin 5)))
      1 2880 2880 1 ![2880, 1440, 2880, 1440, 2880] ![1, 2, 1, 2, 1] reductionProjection11201 ![reductionProjection11199, reductionProjection10805, reductionProjection11185, reductionProjection11200, reductionProjection3041]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11202 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 20), (610, 360), (668, 360), (698, 200), (869, 360), (1050, -120), (1055, -120), (1059, 80), (1221, -480), (1227, 200), (1251, -65), (1389, -480)]

def reductionPivot11202 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]

theorem reductionSound11202 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8117).moment H =
      Integer.Sparse.eval reductionProjection11202 (momentVector H) := by
  have heq : reductionPivot11202 = (fun u v => (normalNode8117).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8117).moment H = injectiveMoment H reductionPivot11202 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8117).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11202 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11202 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1440, 360, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11202 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2017, oldProjection2018, oldProjection1994, oldProjection2000] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11202 (0 : Fin 4)) = canonicalInput17873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11202 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2017 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11202 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2017 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17873 hH))).trans (oldProjectionSound2017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11202 (1 : Fin 4)) = canonicalInput15708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11202 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2018 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11202 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2018 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15708 hH))).trans (oldProjectionSound2018 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11202 (2 : Fin 4)) = canonicalInput15660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11202 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1994 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11202 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15660 hH))).trans (oldProjectionSound1994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11202 (3 : Fin 4)) = canonicalInput15657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11202 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2000 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11202 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15657 hH))).trans (oldProjectionSound2000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8117).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11202 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8117).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11202 (j : Fin 4)))
      2 1440 1440 2 ![144, 1440, 360, 1440] ![10, 1, 4, 1] reductionProjection11202 ![oldProjection2017, oldProjection2018, oldProjection1994, oldProjection2000]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11203 : Integer.Sparse (Fin 1613) := [(0, 48), (94, 5), (610, 720), (617, 720), (698, 1120), (1016, 720), (1059, 560), (1227, 960), (1251, -455)]

def reductionPivot11203 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11203 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8194).moment H =
      Integer.Sparse.eval reductionProjection11203 (momentVector H) := by
  have heq : reductionPivot11203 = (fun u v => (normalNode8194).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8194).moment H = injectiveMoment H reductionPivot11203 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8194).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11203 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11203 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11203 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3580, oldProjection2073, oldProjection2065, oldProjection2587] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11203 (0 : Fin 4)) = canonicalInput14820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11203 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11203 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14820 hH))).trans (reductionSound3580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11203 (1 : Fin 4)) = canonicalInput15713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11203 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2073 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11203 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15713 hH))).trans (oldProjectionSound2073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11203 (2 : Fin 4)) = canonicalInput15733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11203 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11203 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15733 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11203 (3 : Fin 4)) = canonicalInput15735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11203 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2587 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11203 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15735 hH))).trans (oldProjectionSound2587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8194).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11203 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8194).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11203 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 1440, 1440] ![10, 2, 2, 2] reductionProjection11203 ![reductionProjection3580, oldProjection2073, oldProjection2065, oldProjection2587]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11204 : Integer.Sparse (Fin 1613) := [(0, -19), (94, 20), (698, 160), (1059, 160), (1227, 240), (1251, -225)]

def reductionPivot11204 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]

theorem reductionSound11204 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8420).moment H =
      Integer.Sparse.eval reductionProjection11204 (momentVector H) := by
  have heq : reductionPivot11204 = (fun u v => (normalNode8420).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8420).moment H = injectiveMoment H reductionPivot11204 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8420).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11204 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11204 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 144, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11204 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2642, oldProjection2725, oldProjection2598, oldProjection2724] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11204 (0 : Fin 4)) = canonicalInput16665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11204 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11204 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16665 hH))).trans (oldProjectionSound2642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11204 (1 : Fin 4)) = canonicalInput16076.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11204 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11204 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16076 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11204 (2 : Fin 4)) = canonicalInput16063.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11204 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2598 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11204 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16063 hH))).trans (oldProjectionSound2598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11204 (3 : Fin 4)) = canonicalInput16062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11204 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11204 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16062 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8420).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11204 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8420).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11204 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 144, 1440] ![2, 2, 20, 2] reductionProjection11204 ![oldProjection2642, oldProjection2725, oldProjection2598, oldProjection2724]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11205 : Integer.Sparse (Fin 1613) := [(0, 19), (94, 5), (698, 240), (1059, 40), (1226, 40), (1227, 200), (1251, -130)]

def reductionPivot11205 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]

theorem reductionSound11205 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10073).moment H =
      Integer.Sparse.eval reductionProjection11205 (momentVector H) := by
  have heq : reductionPivot11205 = (fun u v => (normalNode10073).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10073).moment H = injectiveMoment H reductionPivot11205 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10073).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11205 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11205 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11205 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2744, reductionProjection5054, reductionProjection1014, oldProjection2588] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11205 (0 : Fin 4)) = canonicalInput20447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11205 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11205 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20447 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11205 (1 : Fin 4)) = canonicalInput19820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11205 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5054 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11205 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19820 hH))).trans (reductionSound5054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11205 (2 : Fin 4)) = canonicalInput19799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11205 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1014 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11205 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19799 hH))).trans (reductionSound1014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11205 (3 : Fin 4)) = canonicalInput19797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11205 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11205 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19797 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10073).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11205 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10073).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11205 (j : Fin 4)))
      2 1440 1440 2 ![288, 720, 1440, 1440] ![5, 2, 1, 1] reductionProjection11205 ![oldProjection2744, reductionProjection5054, reductionProjection1014, oldProjection2588]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11206 : Integer.Sparse (Fin 1613) := [(0, -21), (94, -30), (247, -16), (426, -144), (610, -144), (617, -144), (666, -144), (697, 48), (698, -704), (700, -32), (890, -144), (956, -144), (1016, -288), (1055, 96), (1058, 48), (1059, -272), (1226, -16), (1227, -384), (1251, 263), (1389, 48)]

def reductionPivot11206 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11206 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8145).moment H =
      Integer.Sparse.eval reductionProjection11206 (momentVector H) := by
  have heq : reductionPivot11206 = (fun u v => (normalNode8145).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8145).moment H = injectiveMoment H reductionPivot11206 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8145).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11206 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11206 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11206 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5935, reductionProjection7128, reductionProjection11203, reductionProjection11204, reductionProjection11205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11206 (0 : Fin 5)) = canonicalInput13169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5935 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5935 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13169 hH))).trans (reductionSound5935 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11206 (1 : Fin 5)) = (normalNode8119).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7128 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11206 (2 : Fin 5)) = canonicalInput15883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11203 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11203 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15883 hH))).trans (reductionSound11203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11206 (3 : Fin 5)) = canonicalInput15900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11204 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15900 hH))).trans (reductionSound11204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11206 (4 : Fin 5)) = canonicalInput15901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11205 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11206 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15901 hH))).trans (reductionSound11205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8145).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11206 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8145).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11206 (j : Fin 5)))
      1 576 2880 5 ![2880, 2880, 2880, 2880, 1440] ![1, 1, 1, 1, 2] reductionProjection11206 ![reductionProjection5935, reductionProjection7128, reductionProjection11203, reductionProjection11204, reductionProjection11205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11207 : Integer.Sparse (Fin 1613) := [(94, 1), (241, 32), (423, 144), (668, 144), (698, 208), (865, 144), (1050, -144), (1052, -96), (1055, -48), (1059, 112), (1221, -144), (1226, 16), (1227, 64), (1251, -19)]

def reductionPivot11207 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound11207 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode9148).moment H =
      Integer.Sparse.eval reductionProjection11207 (momentVector H) := by
  have heq : reductionPivot11207 = (fun u v => (normalNode9148).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9148).moment H = injectiveMoment H reductionPivot11207 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9148).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11207 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11207 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11207 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1840, oldProjection2583, oldProjection1999, oldProjection1632] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11207 (0 : Fin 4)) = canonicalInput18578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11207 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1840 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11207 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18578 hH))).trans (oldProjectionSound1840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11207 (1 : Fin 4)) = canonicalInput17613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11207 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11207 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17613 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11207 (2 : Fin 4)) = canonicalInput17602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11207 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11207 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17602 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11207 (3 : Fin 4)) = canonicalInput17601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11207 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11207 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17601 hH))).trans (oldProjectionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9148).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11207 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9148).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11207 (j : Fin 4)))
      2 576 2880 10 ![1440, 720, 1440, 1440] ![2, 4, 2, 2] reductionProjection11207 ![oldProjection1840, oldProjection2583, oldProjection1999, oldProjection1632]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11208 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 10), (241, 20), (698, 80), (864, 90), (1050, -120), (1059, 60), (1221, -120), (1251, -35)]

def reductionPivot11208 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -1, 0], ![1, 1, 0, 0, -2]]

theorem reductionSound11208 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode8284).moment H =
      Integer.Sparse.eval reductionProjection11208 (momentVector H) := by
  have heq : reductionPivot11208 = (fun u v => (normalNode8284).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8284).moment H = injectiveMoment H reductionPivot11208 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8284).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11208 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11208 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 360, 360, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11208 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2824, oldProjection2851, oldProjection1998, oldProjection2824] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11208 (0 : Fin 4)) = canonicalInput17811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11208 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2824 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11208 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17811 hH))).trans (oldProjectionSound2824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11208 (1 : Fin 4)) = canonicalInput15899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11208 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2851 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11208 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15899 hH))).trans (oldProjectionSound2851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11208 (2 : Fin 4)) = canonicalInput15794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11208 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1998 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11208 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15794 hH))).trans (oldProjectionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11208 (3 : Fin 4)) = canonicalInput15792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11208 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2824 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11208 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15792 hH))).trans (oldProjectionSound2824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8284).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11208 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8284).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11208 (j : Fin 4)))
      2 360 360 2 ![72, 360, 360, 72] ![5, 1, 1, 5] reductionProjection11208 ![oldProjection2824, oldProjection2851, oldProjection1998, oldProjection2824]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11209 : Integer.Sparse (Fin 1613) := [(0, -4), (94, -25), (241, -60), (423, -180), (668, -180), (698, -440), (864, -180), (865, -360), (869, -180), (1050, 420), (1052, 60), (1055, 60), (1059, -260), (1221, 480), (1226, -20), (1227, -140), (1251, 85), (1389, 60)]

def reductionPivot11209 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![1, 1, 0, 0, -2]]

theorem reductionSound11209 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode8146).moment H =
      Integer.Sparse.eval reductionProjection11209 (momentVector H) := by
  have heq : reductionPivot11209 = (fun u v => (normalNode8146).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8146).moment H = injectiveMoment H reductionPivot11209 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8146).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11209 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11209 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 2880, 2880, 360, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11209 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11207, reductionProjection4045, reductionProjection7188, reductionProjection11208, reductionProjection3621] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11209 (0 : Fin 5)) = canonicalInput13170.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11207 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13170 hH))).trans (reductionSound11207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11209 (1 : Fin 5)) = (normalNode8121).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4045 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4045 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound4045 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11209 (2 : Fin 5)) = canonicalInput15884.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15884 hH))).trans (reductionSound7188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11209 (3 : Fin 5)) = canonicalInput15905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11208 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15905 hH))).trans (reductionSound11208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11209 (4 : Fin 5)) = canonicalInput15907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3621 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11209 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15907 hH))).trans (reductionSound3621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8146).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11209 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8146).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11209 (j : Fin 5)))
      1 360 2880 8 ![576, 2880, 2880, 360, 2880] ![5, 1, 1, 8, 1] reductionProjection11209 ![reductionProjection11207, reductionProjection4045, reductionProjection7188, reductionProjection11208, reductionProjection3621]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11210 : Integer.Sparse (Fin 1613) := [(0, -3), (81, -240), (94, 25), (433, 720), (697, -240), (698, 480), (869, 720), (1050, -480), (1052, -480), (1059, 400), (1221, -960), (1227, 160), (1250, 60), (1251, -180), (1389, -720)]

def reductionPivot11210 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound11210 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10037).moment H =
      Integer.Sparse.eval reductionProjection11210 (momentVector H) := by
  have heq : reductionPivot11210 = (fun u v => (normalNode10037).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10037).moment H = injectiveMoment H reductionPivot11210 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10037).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11210 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11210 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11210 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2583, oldProjection1752, oldProjection2000, oldProjection1642] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11210 (0 : Fin 4)) = canonicalInput20628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11210 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11210 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20628 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11210 (1 : Fin 4)) = canonicalInput19793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11210 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1752 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11210 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19793 hH))).trans (oldProjectionSound1752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11210 (2 : Fin 4)) = canonicalInput19773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11210 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2000 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11210 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19773 hH))).trans (oldProjectionSound2000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11210 (3 : Fin 4)) = canonicalInput19771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11210 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11210 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19771 hH))).trans (oldProjectionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10037).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11210 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10037).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11210 (j : Fin 4)))
      2 2880 2880 2 ![720, 720, 1440, 1440] ![4, 4, 2, 2] reductionProjection11210 ![oldProjection2583, oldProjection1752, oldProjection2000, oldProjection1642]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11211 : Integer.Sparse (Fin 1613) := [(0, -56), (81, 240), (94, -195), (241, -240), (423, -720), (433, -720), (610, -720), (668, -1440), (697, 240), (698, -3600), (865, -2160), (869, -1440), (957, -720), (1050, 960), (1052, 480), (1055, 1440), (1059, -1680), (1221, 1680), (1226, -160), (1227, -2320), (1250, -60), (1251, 925), (1389, 960)]

def reductionPivot11211 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound11211 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8147).moment H =
      Integer.Sparse.eval reductionProjection11211 (momentVector H) := by
  have heq : reductionPivot11211 = (fun u v => (normalNode8147).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8147).moment H = injectiveMoment H reductionPivot11211 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8147).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11211 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11211 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11211 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11210, reductionProjection11178, reductionProjection11161, reductionProjection11185, reductionProjection7188] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11211 (0 : Fin 5)) = canonicalInput13171.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11210 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13171 hH))).trans (reductionSound11210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11211 (1 : Fin 5)) = (normalNode8122).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11178 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11211 (2 : Fin 5)) = canonicalInput15885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11161 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15885 hH))).trans (reductionSound11161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11211 (3 : Fin 5)) = canonicalInput15906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11185 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15906 hH))).trans (reductionSound11185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11211 (4 : Fin 5)) = canonicalInput15909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11211 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15909 hH))).trans (reductionSound7188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8147).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11211 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8147).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11211 (j : Fin 5)))
      1 2880 2880 1 ![2880, 1440, 1440, 2880, 2880] ![1, 2, 2, 1, 1] reductionProjection11211 ![reductionProjection11210, reductionProjection11178, reductionProjection11161, reductionProjection11185, reductionProjection7188]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11212 : Integer.Sparse (Fin 1613) := [(0, -2), (81, -480), (94, -5), (433, 720), (697, -240), (698, 560), (865, 720), (1050, -480), (1052, -480), (1058, -240), (1059, 320), (1221, -720), (1227, 240), (1251, -15)]

def reductionPivot11212 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]

theorem reductionSound11212 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10040).moment H =
      Integer.Sparse.eval reductionProjection11212 (momentVector H) := by
  have heq : reductionPivot11212 = (fun u v => (normalNode10040).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10040).moment H = injectiveMoment H reductionPivot11212 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10040).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11212 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11212 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![180, 288, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11212 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1002, reductionProjection962, oldProjection1642, oldProjection1999] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11212 (0 : Fin 4)) = canonicalInput27962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11212 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1002 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11212 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound27962 hH))).trans (oldProjectionSound1002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11212 (1 : Fin 4)) = canonicalInput19976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11212 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection962 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11212 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection962 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19976 hH))).trans (reductionSound962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11212 (2 : Fin 4)) = canonicalInput19778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11212 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11212 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19778 hH))).trans (oldProjectionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11212 (3 : Fin 4)) = canonicalInput19770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11212 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11212 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19770 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10040).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11212 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10040).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11212 (j : Fin 4)))
      2 2880 2880 2 ![180, 288, 1440, 1440] ![16, 10, 2, 2] reductionProjection11212 ![oldProjection1002, reductionProjection962, oldProjection1642, oldProjection1999]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11213 : Integer.Sparse (Fin 1613) := [(0, -23), (81, 480), (94, -65), (241, -160), (423, -720), (426, -2160), (433, -720), (602, -1440), (666, -720), (668, -1440), (697, 240), (698, -3120), (865, -2880), (869, -720), (890, -2160), (956, -720), (1016, -720), (1050, 960), (1052, 480), (1055, 720), (1058, 240), (1059, -1360), (1221, 1440), (1226, -320), (1227, -960), (1251, 530), (1389, 240)]

def reductionPivot11213 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11213 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8148).moment H =
      Integer.Sparse.eval reductionProjection11213 (momentVector H) := by
  have heq : reductionPivot11213 = (fun u v => (normalNode8148).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8148).moment H = injectiveMoment H reductionPivot11213 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8148).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11213 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11213 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11213 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11212, reductionProjection7192, reductionProjection11160, reductionProjection7188, reductionProjection3972] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11213 (0 : Fin 5)) = canonicalInput13172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11212 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13172 hH))).trans (reductionSound11212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11213 (1 : Fin 5)) = (normalNode8123).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7192 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11213 (2 : Fin 5)) = canonicalInput15886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11160 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15886 hH))).trans (reductionSound11160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11213 (3 : Fin 5)) = canonicalInput15908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15908 hH))).trans (reductionSound7188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11213 (4 : Fin 5)) = canonicalInput15910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3972 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11213 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15910 hH))).trans (reductionSound3972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8148).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11213 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8148).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11213 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 2880, 2880, 576] ![1, 1, 1, 1, 5] reductionProjection11213 ![reductionProjection11212, reductionProjection7192, reductionProjection11160, reductionProjection7188, reductionProjection3972]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11214 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 25), (241, 80), (427, 360), (666, 360), (698, 520), (700, 120), (890, 360), (1050, -240), (1052, -120), (1055, -120), (1059, 200), (1221, -120), (1227, 120), (1251, -90)]

def reductionPivot11214 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 2, 0], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound11214 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9153).moment H =
      Integer.Sparse.eval reductionProjection11214 (momentVector H) := by
  have heq : reductionPivot11214 = (fun u v => (normalNode9153).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9153).moment H = injectiveMoment H reductionPivot11214 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9153).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11214 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11214 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 144, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11214 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1839, oldProjection2023, oldProjection2745, oldProjection1633] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11214 (0 : Fin 4)) = canonicalInput18590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11214 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1839 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11214 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18590 hH))).trans (oldProjectionSound1839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11214 (1 : Fin 4)) = canonicalInput17628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11214 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2023 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11214 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17628 hH))).trans (oldProjectionSound2023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11214 (2 : Fin 4)) = canonicalInput17618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11214 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2745 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11214 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17618 hH))).trans (oldProjectionSound2745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11214 (3 : Fin 4)) = canonicalInput17617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11214 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1633 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11214 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17617 hH))).trans (oldProjectionSound1633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9153).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11214 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9153).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11214 (j : Fin 4)))
      2 1440 1440 2 ![1440, 720, 144, 1440] ![1, 2, 10, 1] reductionProjection11214 ![oldProjection1839, oldProjection2023, oldProjection2745, oldProjection1633]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11215 : Integer.Sparse (Fin 1613) := [(0, 14), (94, 5), (241, 20), (698, 240), (867, 180), (1050, -120), (1059, 60), (1227, 80), (1251, -65)]

def reductionPivot11215 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -2, 0]]

theorem reductionSound11215 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8289).moment H =
      Integer.Sparse.eval reductionProjection11215 (momentVector H) := by
  have heq : reductionPivot11215 = (fun u v => (normalNode8289).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8289).moment H = injectiveMoment H reductionPivot11215 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8289).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11215 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11215 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 180, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11215 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2613, oldProjection2609, oldProjection2001, reductionProjection3615] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11215 (0 : Fin 4)) = canonicalInput17894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11215 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2613 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11215 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17894 hH))).trans (oldProjectionSound2613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11215 (1 : Fin 4)) = canonicalInput15934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11215 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2609 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11215 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15934 hH))).trans (oldProjectionSound2609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11215 (2 : Fin 4)) = canonicalInput15796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11215 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2001 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11215 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15796 hH))).trans (oldProjectionSound2001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11215 (3 : Fin 4)) = canonicalInput15793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11215 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3615 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11215 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15793 hH))).trans (reductionSound3615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8289).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11215 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8289).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11215 (j : Fin 4)))
      2 720 1440 4 ![1440, 144, 180, 1440] ![1, 10, 8, 1] reductionProjection11215 ![oldProjection2613, oldProjection2609, oldProjection2001, reductionProjection3615]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11216 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 15), (698, 240), (1059, -160), (1251, 20)]

def reductionPivot11216 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]

theorem reductionSound11216 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8431).moment H =
      Integer.Sparse.eval reductionProjection11216 (momentVector H) := by
  have heq : reductionPivot11216 = (fun u v => (normalNode8431).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8431).moment H = injectiveMoment H reductionPivot11216 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8431).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11216 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11216 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 360, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11216 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2758, oldProjection2759, oldProjection1054, oldProjection2745] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11216 (0 : Fin 4)) = canonicalInput17852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11216 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2758 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11216 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17852 hH))).trans (oldProjectionSound2758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11216 (1 : Fin 4)) = canonicalInput16093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11216 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2759 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11216 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16093 hH))).trans (oldProjectionSound2759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11216 (2 : Fin 4)) = canonicalInput16034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11216 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1054 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11216 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16034 hH))).trans (oldProjectionSound1054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11216 (3 : Fin 4)) = canonicalInput16032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11216 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2745 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11216 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16032 hH))).trans (oldProjectionSound2745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8431).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11216 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8431).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11216 (j : Fin 4)))
      2 2880 2880 2 ![1440, 360, 720, 144] ![2, 8, 4, 20] reductionProjection11216 ![oldProjection2758, oldProjection2759, oldProjection1054, oldProjection2745]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11217 : Integer.Sparse (Fin 1613) := [(0, -79), (81, 240), (94, -145), (241, -240), (427, -1440), (602, -720), (666, -720), (674, -720), (698, -4880), (700, -400), (865, -1440), (867, -1440), (869, -720), (890, -1440), (1050, 1680), (1052, 240), (1055, 240), (1059, -1920), (1221, 1200), (1226, -80), (1227, -1600), (1251, 1130), (1389, 240)]

def reductionPivot11217 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![1, 1, 0, -2, 0]]

theorem reductionSound11217 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8149).moment H =
      Integer.Sparse.eval reductionProjection11217 (momentVector H) := by
  have heq : reductionPivot11217 = (fun u v => (normalNode8149).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8149).moment H = injectiveMoment H reductionPivot11217 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8149).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11217 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11217 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 576, 720, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11217 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11214, reductionProjection2968, reductionProjection3618, reductionProjection11215, reductionProjection11216] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11217 (0 : Fin 5)) = canonicalInput13176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11214 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13176 hH))).trans (reductionSound11214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11217 (1 : Fin 5)) = (normalNode8132).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2968 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound2968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11217 (2 : Fin 5)) = canonicalInput15887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3618 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15887 hH))).trans (reductionSound3618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11217 (3 : Fin 5)) = canonicalInput15911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11215 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15911 hH))).trans (reductionSound11215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11217 (4 : Fin 5)) = canonicalInput15912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11216 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11217 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15912 hH))).trans (reductionSound11216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8149).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11217 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8149).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11217 (j : Fin 5)))
      1 2880 2880 1 ![1440, 2880, 576, 720, 2880] ![2, 1, 5, 4, 1] reductionProjection11217 ![reductionProjection11214, reductionProjection2968, reductionProjection3618, reductionProjection11215, reductionProjection11216]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11218 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -20), (81, -480), (94, 70), (697, -240), (698, 320), (1050, -240), (1055, -240), (1058, -240), (1221, -480), (1227, 320), (1250, 60), (1251, -165), (1389, -480)]

def reductionPivot11218 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound11218 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8383).moment H =
      Integer.Sparse.eval reductionProjection11218 (momentVector H) := by
  have heq : reductionPivot11218 = (fun u v => (normalNode8383).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8383).moment H = injectiveMoment H reductionPivot11218 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8383).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11218 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11218 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11218 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1244, oldProjection1751, oldProjection1635, oldProjection1752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11218 (0 : Fin 4)) = canonicalInput20484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11218 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1244 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11218 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1244 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20484 hH))).trans (oldProjectionSound1244 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11218 (1 : Fin 4)) = canonicalInput16160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11218 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11218 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16160 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11218 (2 : Fin 4)) = canonicalInput15948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11218 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1635 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11218 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15948 hH))).trans (oldProjectionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11218 (3 : Fin 4)) = canonicalInput15931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11218 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1752 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11218 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15931 hH))).trans (oldProjectionSound1752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8383).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11218 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8383).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11218 (j : Fin 4)))
      2 2880 2880 2 ![144, 720, 1440, 720] ![20, 4, 2, 4] reductionProjection11218 ![oldProjection1244, oldProjection1751, oldProjection1635, oldProjection1752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11219 : Integer.Sparse (Fin 1613) := [(0, 12), (94, 25), (241, 80), (610, 720), (668, 720), (698, 400), (1050, -240), (1055, -240), (1058, -240), (1059, 80), (1221, -240), (1226, 80), (1227, 240), (1250, 60), (1251, -35)]

def reductionPivot11219 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1]]

theorem reductionSound11219 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10082).moment H =
      Integer.Sparse.eval reductionProjection11219 (momentVector H) := by
  have heq : reductionPivot11219 = (fun u v => (normalNode10082).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10082).moment H = injectiveMoment H reductionPivot11219 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10082).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11219 0 = Pi.single (0 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11219 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11219 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1309, oldProjection1747, oldProjection1745, oldProjection1840] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11219 (0 : Fin 4)) = canonicalInput27955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11219 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11219 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound27955 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11219 (1 : Fin 4)) = canonicalInput19979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11219 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1747 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11219 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1747 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19979 hH))).trans (oldProjectionSound1747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11219 (2 : Fin 4)) = canonicalInput19803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11219 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1745 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11219 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19803 hH))).trans (oldProjectionSound1745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11219 (3 : Fin 4)) = canonicalInput19790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11219 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1840 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11219 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19790 hH))).trans (oldProjectionSound1840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10082).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11219 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10082).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11219 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 1440] ![4, 2, 2, 2] reductionProjection11219 ![oldProjection1309, oldProjection1747, oldProjection1745, oldProjection1840]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11220 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 15), (610, 180), (698, 100), (1050, -60), (1055, -120), (1058, -60), (1221, -120), (1226, 20), (1227, 120), (1250, 45), (1251, -70), (1388, -60), (1389, -240)]

def reductionPivot11220 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, -1, 1], ![1, 0, 1, 0, -2]]

theorem reductionSound11220 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10071).moment H =
      Integer.Sparse.eval reductionProjection11220 (momentVector H) := by
  have heq : reductionPivot11220 = (fun u v => (normalNode10071).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10071).moment H = injectiveMoment H reductionPivot11220 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10071).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11220 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11220 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 288, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11220 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1751, oldProjection1748, oldProjection1752, oldProjection1745] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11220 (0 : Fin 4)) = canonicalInput20443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11220 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11220 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20443 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11220 (1 : Fin 4)) = canonicalInput19814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11220 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1748 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11220 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19814 hH))).trans (oldProjectionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11220 (2 : Fin 4)) = canonicalInput19793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11220 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1752 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11220 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19793 hH))).trans (oldProjectionSound1752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11220 (3 : Fin 4)) = canonicalInput19791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11220 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1745 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11220 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19791 hH))).trans (oldProjectionSound1745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10071).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11220 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10071).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11220 (j : Fin 4)))
      2 720 1440 4 ![720, 288, 720, 1440] ![2, 5, 2, 1] reductionProjection11220 ![oldProjection1751, oldProjection1748, oldProjection1752, oldProjection1745]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11221 : Integer.Sparse (Fin 1613) := [(0, -61), (19, 20), (81, 480), (94, -230), (241, -80), (610, -1440), (668, -720), (697, 240), (698, -2320), (1050, 720), (1055, 960), (1058, 720), (1059, -640), (1221, 1680), (1226, -320), (1227, -1840), (1250, -300), (1251, 815), (1388, 240), (1389, 1680)]

def reductionPivot11221 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, 0, -1, 0, 0]]

theorem reductionSound11221 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8150).moment H =
      Integer.Sparse.eval reductionProjection11221 (momentVector H) := by
  have heq : reductionPivot11221 = (fun u v => (normalNode8150).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8150).moment H = injectiveMoment H reductionPivot11221 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8150).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11221 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11221 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 720, 2880, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11221 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11218, reductionProjection11219, reductionProjection3596, reductionProjection11156, reductionProjection11220] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11221 (0 : Fin 5)) = canonicalInput13177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11218 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13177 hH))).trans (reductionSound11218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11221 (1 : Fin 5)) = canonicalInput15656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11219 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15656 hH))).trans (reductionSound11219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11221 (2 : Fin 5)) = canonicalInput15897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3596 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3596 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15897 hH))).trans (reductionSound3596 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11221 (3 : Fin 5)) = canonicalInput15920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11156 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15920 hH))).trans (reductionSound11156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11221 (4 : Fin 5)) = canonicalInput15921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11220 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11221 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15921 hH))).trans (reductionSound11220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8150).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11221 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8150).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11221 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 720, 2880, 720] ![1, 1, 4, 1, 4] reductionProjection11221 ![reductionProjection11218, reductionProjection11219, reductionProjection3596, reductionProjection11156, reductionProjection11220]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11222 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (81, -240), (94, 95), (241, 160), (243, 80), (666, 720), (668, 720), (697, -240), (698, 1200), (700, 160), (919, 720), (1050, -480), (1055, -480), (1058, -480), (1059, 480), (1221, -240), (1226, 80), (1227, 480), (1250, 120), (1251, -250), (1389, -480)]

def reductionPivot11222 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound11222 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9179).moment H =
      Integer.Sparse.eval reductionProjection11222 (momentVector H) := by
  have heq : reductionPivot11222 = (fun u v => (normalNode9179).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9179).moment H = injectiveMoment H reductionPivot11222 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9179).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11222 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11222 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11222 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1839, oldProjection1738, oldProjection1840, oldProjection2082] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11222 (0 : Fin 4)) = canonicalInput18679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11222 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1839 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11222 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18679 hH))).trans (oldProjectionSound1839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11222 (1 : Fin 4)) = canonicalInput17833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11222 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1738 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11222 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1738 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17833 hH))).trans (oldProjectionSound1738 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11222 (2 : Fin 4)) = canonicalInput17818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11222 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1840 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11222 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17818 hH))).trans (oldProjectionSound1840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11222 (3 : Fin 4)) = canonicalInput17813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11222 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2082 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11222 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2082 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17813 hH))).trans (oldProjectionSound2082 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9179).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11222 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9179).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11222 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 1440] ![2, 4, 2, 2] reductionProjection11222 ![oldProjection1839, oldProjection1738, oldProjection1840, oldProjection2082]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11223 : Integer.Sparse (Fin 1613) := [(0, -2), (81, -60), (94, 5), (578, 180), (602, 180), (638, 180), (674, 360), (698, 280), (700, 40), (1050, -60), (1055, -60), (1058, -120), (1059, 180), (1221, -60), (1227, 80), (1251, -85)]

def reductionPivot11223 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 2, -2, -1], ![1, 0, -2, 0, 1]]

theorem reductionSound11223 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8177).moment H =
      Integer.Sparse.eval reductionProjection11223 (momentVector H) := by
  have heq : reductionPivot11223 = (fun u v => (normalNode8177).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8177).moment H = injectiveMoment H reductionPivot11223 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8177).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11223 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11223 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 288, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11223 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2635, oldProjection1845, oldProjection1760, reductionProjection3361] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11223 (0 : Fin 4)) = canonicalInput20647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11223 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2635 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11223 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20647 hH))).trans (oldProjectionSound2635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11223 (1 : Fin 4)) = canonicalInput16038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11223 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1845 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11223 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16038 hH))).trans (oldProjectionSound1845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11223 (2 : Fin 4)) = canonicalInput15716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11223 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1760 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11223 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15716 hH))).trans (oldProjectionSound1760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11223 (3 : Fin 4)) = canonicalInput15711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11223 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3361 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11223 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15711 hH))).trans (reductionSound3361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8177).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11223 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8177).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11223 (j : Fin 4)))
      2 720 1440 4 ![720, 288, 720, 1440] ![2, 5, 2, 1] reductionProjection11223 ![oldProjection2635, oldProjection1845, oldProjection1760, reductionProjection3361]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11224 : Integer.Sparse (Fin 1613) := [(0, 5), (81, -48), (94, 16), (674, 144), (698, 240), (700, 32), (1059, 128), (1221, -96), (1226, 16), (1227, 96), (1251, -53)]

def reductionPivot11224 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![1, 1, -1, -2, 1]]

theorem reductionSound11224 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8351).moment H =
      Integer.Sparse.eval reductionProjection11224 (momentVector H) := by
  have heq : reductionPivot11224 = (fun u v => (normalNode8351).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8351).moment H = injectiveMoment H reductionPivot11224 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8351).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11224 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11224 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11224 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5543, oldProjection1846, oldProjection2454, oldProjection2455] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11224 (0 : Fin 4)) = canonicalInput14885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11224 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5543 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11224 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14885 hH))).trans (reductionSound5543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11224 (1 : Fin 4)) = canonicalInput15938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11224 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1846 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11224 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15938 hH))).trans (oldProjectionSound1846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11224 (2 : Fin 4)) = canonicalInput15997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11224 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2454 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11224 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15997 hH))).trans (oldProjectionSound2454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11224 (3 : Fin 4)) = canonicalInput16001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11224 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2455 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11224 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16001 hH))).trans (oldProjectionSound2455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8351).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11224 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8351).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11224 (j : Fin 4)))
      2 576 2880 10 ![36, 1440, 1440, 1440] ![80, 2, 2, 2] reductionProjection11224 ![reductionProjection5543, oldProjection1846, oldProjection2454, oldProjection2455]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11225 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 25), (698, 560), (1059, 320), (1221, -480), (1227, 400), (1251, -260), (1389, -240)]

def reductionPivot11225 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound11225 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8388).moment H =
      Integer.Sparse.eval reductionProjection11225 (momentVector H) := by
  have heq : reductionPivot11225 = (fun u v => (normalNode8388).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8388).moment H = injectiveMoment H reductionPivot11225 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8388).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11225 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11225 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 72, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11225 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2629, oldProjection1053, oldProjection2583, oldProjection1800] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11225 (0 : Fin 4)) = canonicalInput17926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11225 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2629 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11225 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17926 hH))).trans (oldProjectionSound2629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11225 (1 : Fin 4)) = canonicalInput16033.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11225 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1053 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11225 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1053 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16033 hH))).trans (oldProjectionSound1053 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11225 (2 : Fin 4)) = canonicalInput15949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11225 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11225 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15949 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11225 (3 : Fin 4)) = canonicalInput15941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11225 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1800 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11225 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15941 hH))).trans (oldProjectionSound1800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8388).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11225 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8388).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11225 (j : Fin 4)))
      2 2880 2880 2 ![1440, 72, 720, 1440] ![2, 40, 4, 2] reductionProjection11225 ![oldProjection2629, oldProjection1053, oldProjection2583, oldProjection1800]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11226 : Integer.Sparse (Fin 1613) := [(0, 21), (19, -20), (94, 70), (241, 80), (247, 80), (553, 720), (668, 720), (669, 720), (697, -480), (698, 560), (1050, -240), (1055, -480), (1058, -240), (1059, 240), (1221, -240), (1226, 80), (1227, 160), (1250, 180), (1251, -95), (1388, -240)]

def reductionPivot11226 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 2, -1, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]

theorem reductionSound11226 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9536).moment H =
      Integer.Sparse.eval reductionProjection11226 (momentVector H) := by
  have heq : reductionPivot11226 = (fun u v => (normalNode9536).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9536).moment H = injectiveMoment H reductionPivot11226 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9536).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11226 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11226 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11226 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1737, oldProjection1841, oldProjection1840, reductionProjection4797] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11226 (0 : Fin 4)) = canonicalInput17853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11226 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11226 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17853 hH))).trans (oldProjectionSound1737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11226 (1 : Fin 4)) = canonicalInput18683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11226 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11226 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18683 hH))).trans (oldProjectionSound1841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11226 (2 : Fin 4)) = canonicalInput18691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11226 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1840 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11226 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18691 hH))).trans (oldProjectionSound1840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11226 (3 : Fin 4)) = canonicalInput18694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11226 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4797 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11226 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18694 hH))).trans (reductionSound4797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9536).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11226 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9536).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11226 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 1440] ![2, 2, 2, 2] reductionProjection11226 ![oldProjection1737, oldProjection1841, oldProjection1840, reductionProjection4797]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11227 : Integer.Sparse (Fin 1613) := [(0, -28), (19, 20), (81, 360), (94, -145), (241, -120), (243, -40), (247, -40), (553, -360), (578, -360), (602, -360), (638, -360), (666, -360), (668, -720), (669, -360), (674, -1080), (697, 360), (698, -2320), (700, -240), (919, -360), (1050, 480), (1055, 600), (1058, 600), (1059, -1200), (1221, 840), (1226, -120), (1227, -920), (1250, -150), (1251, 605), (1388, 120), (1389, 360)]

def reductionPivot11227 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, 0, -2, 0, 1]]

theorem reductionSound11227 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8151).moment H =
      Integer.Sparse.eval reductionProjection11227 (momentVector H) := by
  have heq : reductionPivot11227 = (fun u v => (normalNode8151).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8151).moment H = injectiveMoment H reductionPivot11227 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8151).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11227 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11227 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 720, 576, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11227 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11222, reductionProjection11223, reductionProjection11224, reductionProjection11225, reductionProjection11226] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11227 (0 : Fin 5)) = canonicalInput13183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11222 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13183 hH))).trans (reductionSound11222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11227 (1 : Fin 5)) = (normalNode8177).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11223 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11223 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11223 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11227 (2 : Fin 5)) = canonicalInput15987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11224 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15987 hH))).trans (reductionSound11224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11227 (3 : Fin 5)) = canonicalInput16012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11225 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16012 hH))).trans (reductionSound11225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11227 (4 : Fin 5)) = canonicalInput16015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11226 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11227 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16015 hH))).trans (reductionSound11226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8151).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11227 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8151).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11227 (j : Fin 5)))
      1 1440 2880 2 ![2880, 720, 576, 2880, 2880] ![1, 4, 5, 1, 1] reductionProjection11227 ![reductionProjection11222, reductionProjection11223, reductionProjection11224, reductionProjection11225, reductionProjection11226]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11228 : Integer.Sparse (Fin 1613) := [(0, -2), (81, 480), (94, -155), (241, -320), (423, -1440), (698, -4240), (864, -1440), (865, -3600), (1050, 2640), (1052, 240), (1055, 720), (1058, 480), (1059, -2160), (1221, 2880), (1226, -320), (1227, -1760), (1250, -120), (1251, 635), (1389, 480)]

def reductionPivot11228 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, -1, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0]]

theorem reductionSound11228 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8153).moment H =
      Integer.Sparse.eval reductionProjection11228 (momentVector H) := by
  have heq : reductionPivot11228 = (fun u v => (normalNode8153).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8153).moment H = injectiveMoment H reductionPivot11228 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8153).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11228 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11228 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11228 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3272, reductionProjection7186, reductionProjection7186, reductionProjection11185, reductionProjection3508] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11228 (0 : Fin 5)) = canonicalInput13195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3272 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13195 hH))).trans (reductionSound3272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11228 (1 : Fin 5)) = canonicalInput15720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7186 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15720 hH))).trans (reductionSound7186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11228 (2 : Fin 5)) = canonicalInput16049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7186 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16049 hH))).trans (reductionSound7186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11228 (3 : Fin 5)) = canonicalInput16051.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11185 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16051 hH))).trans (reductionSound11185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11228 (4 : Fin 5)) = canonicalInput16052.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3508 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11228 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16052 hH))).trans (reductionSound3508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8153).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11228 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8153).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11228 (j : Fin 5)))
      1 2880 2880 1 ![1440, 2880, 2880, 2880, 2880] ![2, 1, 1, 1, 1] reductionProjection11228 ![reductionProjection3272, reductionProjection7186, reductionProjection7186, reductionProjection11185, reductionProjection3508]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11229 : Integer.Sparse (Fin 1613) := [(0, 21), (94, 35), (241, 80), (698, 560), (869, 720), (1050, -240), (1055, -240), (1059, 320), (1227, 320), (1251, -190)]

def reductionPivot11229 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11229 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8293).moment H =
      Integer.Sparse.eval reductionProjection11229 (momentVector H) := by
  have heq : reductionPivot11229 = (fun u v => (normalNode8293).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8293).moment H = injectiveMoment H reductionPivot11229 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8293).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11229 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11229 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11229 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2586, oldProjection2588, oldProjection2055, reductionProjection2762] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11229 (0 : Fin 4)) = canonicalInput17900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11229 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11229 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17900 hH))).trans (oldProjectionSound2586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11229 (1 : Fin 4)) = canonicalInput15945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11229 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11229 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15945 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11229 (2 : Fin 4)) = canonicalInput15809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11229 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11229 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15809 hH))).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11229 (3 : Fin 4)) = canonicalInput15802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11229 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2762 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11229 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15802 hH))).trans (reductionSound2762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8293).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11229 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8293).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11229 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 144, 720] ![2, 2, 20, 4] reductionProjection11229 ![oldProjection2586, oldProjection2588, oldProjection2055, reductionProjection2762]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11230 : Integer.Sparse (Fin 1613) := [(0, -47), (81, 120), (94, -110), (241, -160), (426, -360), (433, -360), (698, -2080), (865, -720), (869, -720), (890, -360), (956, -360), (1050, 480), (1052, 120), (1055, 480), (1059, -960), (1221, 840), (1226, -200), (1227, -1080), (1251, 665), (1389, 360)]

def reductionPivot11230 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]

theorem reductionSound11230 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8156).moment H =
      Integer.Sparse.eval reductionProjection11230 (momentVector H) := by
  have heq : reductionPivot11230 = (fun u v => (normalNode8156).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8156).moment H = injectiveMoment H reductionPivot11230 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8156).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11230 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11230 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11230 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3781, reductionProjection11196, reductionProjection7188, reductionProjection11229, reductionProjection5004] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11230 (0 : Fin 5)) = canonicalInput13233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3781 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13233 hH))).trans (reductionSound3781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11230 (1 : Fin 5)) = canonicalInput15749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11196 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15749 hH))).trans (reductionSound11196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11230 (2 : Fin 5)) = canonicalInput16113.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16113 hH))).trans (reductionSound7188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11230 (3 : Fin 5)) = canonicalInput16118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11229 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16118 hH))).trans (reductionSound11229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11230 (4 : Fin 5)) = canonicalInput16119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5004 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11230 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5004 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16119 hH))).trans (reductionSound5004 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8156).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11230 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8156).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11230 (j : Fin 5)))
      1 1440 2880 2 ![2880, 1440, 2880, 2880, 2880] ![1, 2, 1, 1, 1] reductionProjection11230 ![reductionProjection3781, reductionProjection11196, reductionProjection7188, reductionProjection11229, reductionProjection5004]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11231 : Integer.Sparse (Fin 1613) := [(0, 3), (81, -72), (94, 7), (610, 72), (611, 72), (617, 72), (698, 96), (1059, 32), (1221, -48), (1227, 80), (1251, -44), (1389, -168)]

def reductionPivot11231 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, 0, -2], ![1, 1, -1, -2, 1]]

theorem reductionSound11231 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8193).moment H =
      Integer.Sparse.eval reductionProjection11231 (momentVector H) := by
  have heq : reductionPivot11231 = (fun u v => (normalNode8193).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8193).moment H = injectiveMoment H reductionPivot11231 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8193).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11231 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11231 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 288, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11231 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3718, oldProjection1848, oldProjection1847, oldProjection1847] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11231 (0 : Fin 4)) = canonicalInput14819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11231 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3718 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11231 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14819 hH))).trans (reductionSound3718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11231 (1 : Fin 4)) = canonicalInput15710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11231 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1848 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11231 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15710 hH))).trans (oldProjectionSound1848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11231 (2 : Fin 4)) = canonicalInput15729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11231 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11231 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15729 hH))).trans (oldProjectionSound1847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11231 (3 : Fin 4)) = canonicalInput15732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11231 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11231 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15732 hH))).trans (oldProjectionSound1847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8193).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11231 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8193).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11231 (j : Fin 4)))
      2 288 1440 10 ![1440, 1440, 288, 288] ![1, 1, 5, 5] reductionProjection11231 ![reductionProjection3718, oldProjection1848, oldProjection1847, oldProjection1847]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical233
import NoFourMUBs.Step2.SOS.Canonical234
import NoFourMUBs.Step2.SOS.Canonical246
import NoFourMUBs.Step2.SOS.Canonical250
import NoFourMUBs.Step2.SOS.Canonical251
import NoFourMUBs.Step2.SOS.Canonical256
import NoFourMUBs.Step2.SOS.Canonical257
import NoFourMUBs.Step2.SOS.Canonical258
import NoFourMUBs.Step2.SOS.Canonical259
import NoFourMUBs.Step2.SOS.Canonical260
import NoFourMUBs.Step2.SOS.Canonical261
import NoFourMUBs.Step2.SOS.Canonical262
import NoFourMUBs.Step2.SOS.Canonical263
import NoFourMUBs.Step2.SOS.Canonical274
import NoFourMUBs.Step2.SOS.Canonical275
import NoFourMUBs.Step2.SOS.Canonical280
import NoFourMUBs.Step2.SOS.Canonical287
import NoFourMUBs.Step2.SOS.Canonical288
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical309
import NoFourMUBs.Step2.SOS.Canonical310
import NoFourMUBs.Step2.SOS.Canonical311
import NoFourMUBs.Step2.SOS.Canonical312
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical410
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions065
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions113
import NoFourMUBs.Step2.SOS.Reductions115
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions151
import NoFourMUBs.Step2.SOS.Reductions157
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions227
import NoFourMUBs.Step2.SOS.Reductions317
import NoFourMUBs.Step2.SOS.Reductions338
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions349
import NoFourMUBs.Step2.SOS.Reductions351
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions354
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11360 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 3), (698, 16), (1227, -8), (1251, -7), (1389, -24)]

def reductionPivot11360 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]

theorem reductionSound11360 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10059).moment H =
      Integer.Sparse.eval reductionProjection11360 (momentVector H) := by
  have heq : reductionPivot11360 = (fun u v => (normalNode10059).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10059).moment H = injectiveMoment H reductionPivot11360 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10059).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11360 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11360 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 288, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11360 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2623, oldProjection2744, oldProjection1009, oldProjection2744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11360 (0 : Fin 4)) = canonicalInput14970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11360 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2623 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11360 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2623 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14970 hH))).trans (oldProjectionSound2623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11360 (1 : Fin 4)) = canonicalInput19845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11360 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11360 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19845 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11360 (2 : Fin 4)) = canonicalInput19940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11360 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1009 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11360 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1009 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19940 hH))).trans (oldProjectionSound1009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11360 (3 : Fin 4)) = canonicalInput19946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11360 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11360 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19946 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10059).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11360 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10059).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11360 (j : Fin 4)))
      2 288 1440 10 ![360, 288, 720, 288] ![4, 5, 2, 5] reductionProjection11360 ![oldProjection2623, oldProjection2744, oldProjection1009, oldProjection2744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11361 : Integer.Sparse (Fin 1613) := [(0, -53), (81, 480), (94, -210), (241, -160), (243, -80), (508, -720), (602, -1440), (635, -1440), (636, -1440), (697, 240), (698, -3840), (1050, 240), (1055, 480), (1058, 480), (1059, -880), (1221, 720), (1226, -1200), (1227, -2080), (1250, -60), (1251, 895), (1389, 960)]

def reductionPivot11361 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, 0, -1, 1], ![0, 2, -1, 1, -2], ![1, 0, -1, 0, 0]]

theorem reductionSound11361 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8572).moment H =
      Integer.Sparse.eval reductionProjection11361 (momentVector H) := by
  have heq : reductionPivot11361 = (fun u v => (normalNode8572).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8572).moment H = injectiveMoment H reductionPivot11361 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8572).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11361 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11361 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 576, 1440, 288, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11361 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11359, reductionProjection4021, reductionProjection11358, reductionProjection11360, reductionProjection3847] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11361 (0 : Fin 5)) = canonicalInput15753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11359 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15753 hH))).trans (reductionSound11359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11361 (1 : Fin 5)) = canonicalInput16440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4021 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16440 hH))).trans (reductionSound4021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11361 (2 : Fin 5)) = (normalNode8571).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11358 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11361 (3 : Fin 5)) = canonicalInput16468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11360 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11360 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16468 hH))).trans (reductionSound11360 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11361 (4 : Fin 5)) = canonicalInput16469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3847 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11361 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16469 hH))).trans (reductionSound3847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8572).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11361 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8572).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11361 (j : Fin 5)))
      1 2880 2880 1 ![2880, 576, 1440, 288, 2880] ![1, 5, 2, 10, 1] reductionProjection11361 ![reductionProjection11359, reductionProjection4021, reductionProjection11358, reductionProjection11360, reductionProjection3847]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11362 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -40), (94, 65), (563, 720), (602, 720), (697, -240), (698, 720), (1058, -480), (1059, 80), (1226, 240), (1227, 560), (1250, 120), (1251, -210), (1389, -480)]

def reductionPivot11362 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, -1, -2, 2], ![1, 0, 0, 1, -2]]

theorem reductionSound11362 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9234).moment H =
      Integer.Sparse.eval reductionProjection11362 (momentVector H) := by
  have heq : reductionPivot11362 = (fun u v => (normalNode9234).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9234).moment H = injectiveMoment H reductionPivot11362 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9234).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11362 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11362 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11362 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4828, reductionProjection5407, oldProjection1634, oldProjection1776] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11362 (0 : Fin 4)) = canonicalInput18681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11362 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4828 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11362 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18681 hH))).trans (reductionSound4828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11362 (1 : Fin 4)) = canonicalInput17951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11362 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5407 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11362 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17951 hH))).trans (reductionSound5407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11362 (2 : Fin 4)) = canonicalInput17925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11362 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1634 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11362 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17925 hH))).trans (oldProjectionSound1634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11362 (3 : Fin 4)) = canonicalInput17923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11362 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1776 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11362 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17923 hH))).trans (oldProjectionSound1776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9234).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11362 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9234).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11362 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 1440] ![2, 2, 4, 2] reductionProjection11362 ![reductionProjection4828, reductionProjection5407, oldProjection1634, oldProjection1776]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11363 : Integer.Sparse (Fin 1613) := [(0, 1), (81, -60), (94, 25), (241, 20), (602, 180), (635, 360), (636, 180), (638, 180), (697, -60), (698, 320), (1059, 60), (1221, -60), (1226, 100), (1227, 100), (1251, -50)]

def reductionPivot11363 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, -1, -2, 2]]

theorem reductionSound11363 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8575).moment H =
      Integer.Sparse.eval reductionProjection11363 (momentVector H) := by
  have heq : reductionPivot11363 = (fun u v => (normalNode8575).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8575).moment H = injectiveMoment H reductionPivot11363 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8575).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11363 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11363 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11363 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1773, oldProjection2443, reductionProjection2083, oldProjection1775] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11363 (0 : Fin 4)) = canonicalInput20004.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11363 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1773 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11363 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20004 hH))).trans (oldProjectionSound1773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11363 (1 : Fin 4)) = canonicalInput16687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11363 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2443 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11363 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16687 hH))).trans (oldProjectionSound2443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11363 (2 : Fin 4)) = canonicalInput16482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11363 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2083 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11363 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16482 hH))).trans (reductionSound2083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11363 (3 : Fin 4)) = canonicalInput16481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11363 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1775 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11363 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16481 hH))).trans (oldProjectionSound1775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8575).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11363 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8575).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11363 (j : Fin 4)))
      2 720 1440 4 ![720, 1440, 1440, 1440] ![2, 1, 1, 1] reductionProjection11363 ![oldProjection1773, oldProjection2443, reductionProjection2083, oldProjection1775]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11364 : Integer.Sparse (Fin 1613) := [(0, -49), (19, 40), (81, 480), (94, -290), (241, -320), (426, -720), (563, -720), (602, -2880), (635, -2160), (636, -1440), (638, -720), (666, -720), (697, 480), (698, -4160), (890, -720), (1027, -720), (1050, 240), (1055, 480), (1058, 480), (1059, -1040), (1221, 240), (1226, -1040), (1227, -2080), (1250, -120), (1251, 1055), (1389, 1200)]

def reductionPivot11364 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]

theorem reductionSound11364 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8573).moment H =
      Integer.Sparse.eval reductionProjection11364 (momentVector H) := by
  have heq : reductionPivot11364 = (fun u v => (normalNode8573).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8573).moment H = injectiveMoment H reductionPivot11364 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8573).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11364 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11364 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11364 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3049, reductionProjection11362, reductionProjection10853, reductionProjection11363, reductionProjection11194] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11364 (0 : Fin 5)) = canonicalInput17581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3049 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17581 hH))).trans (reductionSound3049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11364 (1 : Fin 5)) = canonicalInput16491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11362 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16491 hH))).trans (reductionSound11362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11364 (2 : Fin 5)) = canonicalInput16476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10853 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10853 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16476 hH))).trans (reductionSound10853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11364 (3 : Fin 5)) = (normalNode8575).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11363 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11364 (4 : Fin 5)) = canonicalInput16475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11194 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11364 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16475 hH))).trans (reductionSound11194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8573).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11364 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8573).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11364 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 2880, 720, 1440] ![1, 1, 1, 4, 2] reductionProjection11364 ![reductionProjection3049, reductionProjection11362, reductionProjection10853, reductionProjection11363, reductionProjection11194]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11365 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -60), (20, 5), (94, 50), (241, 240), (243, 160), (287, 720), (426, 1440), (698, 960), (700, 80), (1055, -240), (1058, -240), (1059, 160), (1223, -240), (1226, 480), (1227, 240), (1251, -115)]

def reductionPivot11365 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, 1, 1, -3]]

theorem reductionSound11365 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8589).moment H =
      Integer.Sparse.eval reductionProjection11365 (momentVector H) := by
  have heq : reductionPivot11365 = (fun u v => (normalNode8589).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8589).moment H = injectiveMoment H reductionPivot11365 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8589).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11365 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11365 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11365 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3040, oldProjection2532, oldProjection1647, oldProjection1549] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11365 (0 : Fin 4)) = canonicalInput18429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11365 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11365 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18429 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11365 (1 : Fin 4)) = canonicalInput16558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11365 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2532 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11365 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16558 hH))).trans (oldProjectionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11365 (2 : Fin 4)) = canonicalInput16500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11365 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1647 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11365 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16500 hH))).trans (oldProjectionSound1647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11365 (3 : Fin 4)) = canonicalInput16498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11365 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1549 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11365 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16498 hH))).trans (oldProjectionSound1549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8589).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11365 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8589).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11365 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 1440, 288] ![10, 2, 2, 10] reductionProjection11365 ![reductionProjection3040, oldProjection2532, oldProjection1647, oldProjection1549]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11366 : Integer.Sparse (Fin 1613) := [(0, 13), (81, -240), (94, 50), (241, 80), (541, 720), (553, 720), (668, 720), (698, 640), (1050, -720), (1055, -240), (1058, -240), (1059, 320), (1221, -1440), (1227, 240), (1250, 60), (1251, -215), (1389, -960)]

def reductionPivot11366 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, -2, 0, 2], ![0, 2, 1, -2, -1], ![1, -1, 0, 1, -1]]

theorem reductionSound11366 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8591).moment H =
      Integer.Sparse.eval reductionProjection11366 (momentVector H) := by
  have heq : reductionPivot11366 = (fun u v => (normalNode8591).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8591).moment H = injectiveMoment H reductionPivot11366 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8591).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11366 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11366 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 288, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11366 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1986, oldProjection2625, oldProjection1726, reductionProjection3550] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11366 (0 : Fin 4)) = canonicalInput18434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11366 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1986 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11366 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1986 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18434 hH))).trans (reductionSound1986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11366 (1 : Fin 4)) = canonicalInput16563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11366 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2625 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11366 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16563 hH))).trans (oldProjectionSound2625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11366 (2 : Fin 4)) = canonicalInput16506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11366 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1726 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11366 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1726 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16506 hH))).trans (oldProjectionSound1726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11366 (3 : Fin 4)) = canonicalInput16505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11366 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3550 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11366 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16505 hH))).trans (reductionSound3550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8591).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11366 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8591).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11366 (j : Fin 4)))
      2 2880 2880 2 ![9, 288, 1440, 1440] ![320, 10, 2, 2] reductionProjection11366 ![reductionProjection1986, oldProjection2625, oldProjection1726, reductionProjection3550]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11367 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -40), (81, -480), (94, 140), (241, 80), (247, 80), (697, -480), (698, 800), (1226, 320), (1227, 240), (1251, -75)]

def reductionPivot11367 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 2, 1, -3], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]

theorem reductionSound11367 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10067).moment H =
      Integer.Sparse.eval reductionProjection11367 (momentVector H) := by
  have heq : reductionPivot11367 = (fun u v => (normalNode10067).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10067).moment H = injectiveMoment H reductionPivot11367 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10067).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11367 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11367 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 72, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11367 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2717, oldProjection2589, oldProjection1203, oldProjection1643] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11367 (0 : Fin 4)) = canonicalInput14983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11367 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2717 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11367 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2717 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14983 hH))).trans (oldProjectionSound2717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11367 (1 : Fin 4)) = canonicalInput19856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11367 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2589 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11367 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19856 hH))).trans (oldProjectionSound2589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11367 (2 : Fin 4)) = canonicalInput19961.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11367 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1203 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11367 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1203 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19961 hH))).trans (oldProjectionSound1203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11367 (3 : Fin 4)) = canonicalInput19963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11367 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1643 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11367 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19963 hH))).trans (oldProjectionSound1643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10067).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11367 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10067).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11367 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 72, 360] ![4, 2, 40, 8] reductionProjection11367 ![oldProjection2717, oldProjection2589, oldProjection1203, oldProjection1643]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11368 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -12), (94, -1), (241, 16), (247, 16), (697, -48), (698, -16), (700, 16), (1059, 16), (1251, 6)]

def reductionPivot11368 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, 0, -1, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]

theorem reductionSound11368 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode10095).moment H =
      Integer.Sparse.eval reductionProjection11368 (momentVector H) := by
  have heq : reductionPivot11368 = (fun u v => (normalNode10095).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10095).moment H = injectiveMoment H reductionPivot11368 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10095).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11368 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11368 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 360, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11368 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2740, oldProjection2589, oldProjection1079, oldProjection2810] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11368 (0 : Fin 4)) = canonicalInput16105.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11368 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2740 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11368 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2740 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16105 hH))).trans (oldProjectionSound2740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11368 (1 : Fin 4)) = canonicalInput19856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11368 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2589 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11368 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2589 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19856 hH))).trans (oldProjectionSound2589 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11368 (2 : Fin 4)) = canonicalInput19926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11368 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1079 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11368 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1079 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19926 hH))).trans (oldProjectionSound1079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11368 (3 : Fin 4)) = canonicalInput19928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11368 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2810 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11368 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19928 hH))).trans (oldProjectionSound2810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10095).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11368 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10095).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11368 (j : Fin 4)))
      2 576 2880 10 ![288, 1440, 360, 360] ![10, 2, 8, 8] reductionProjection11368 ![oldProjection2740, oldProjection2589, oldProjection1079, oldProjection2810]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11369 : Integer.Sparse (Fin 1613) := [(0, 33), (94, 85), (247, 80), (669, 720), (698, 240), (1055, -240), (1227, 400), (1250, 120), (1251, -280), (1388, -240), (1389, -480)]

def reductionPivot11369 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, -1, 0, 0], ![-1, 0, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1]]

theorem reductionSound11369 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10102).moment H =
      Integer.Sparse.eval reductionProjection11369 (momentVector H) := by
  have heq : reductionPivot11369 = (fun u v => (normalNode10102).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10102).moment H = injectiveMoment H reductionPivot11369 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10102).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11369 0 = Pi.single (0 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11369 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11369 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1309, oldProjection1751, oldProjection1751, oldProjection1841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11369 (0 : Fin 4)) = canonicalInput27589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11369 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1309 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11369 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound27589 hH))).trans (oldProjectionSound1309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11369 (1 : Fin 4)) = canonicalInput19978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11369 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11369 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19978 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11369 (2 : Fin 4)) = canonicalInput19823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11369 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1751 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11369 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19823 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11369 (3 : Fin 4)) = canonicalInput19813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11369 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1841 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11369 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19813 hH))).trans (oldProjectionSound1841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10102).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11369 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10102).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11369 (j : Fin 4)))
      2 2880 2880 2 ![720, 720, 720, 1440] ![4, 4, 4, 2] reductionProjection11369 ![oldProjection1309, oldProjection1751, oldProjection1751, oldProjection1841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11370 : Integer.Sparse (Fin 1613) := [(0, -21), (19, 120), (81, 1200), (94, -420), (241, -480), (247, -240), (426, -1440), (434, -720), (549, -720), (565, -1440), (669, -720), (697, 960), (698, -3200), (700, -80), (1055, 480), (1058, 480), (1059, -80), (1219, 240), (1226, -1440), (1227, -1360), (1250, -120), (1251, 505), (1388, 240), (1389, 480)]

def reductionPivot11370 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -1, 0], ![0, 2, 1, 0, -3], ![1, -1, 0, 0, 0]]

theorem reductionSound11370 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8607).moment H =
      Integer.Sparse.eval reductionProjection11370 (momentVector H) := by
  have heq : reductionPivot11370 = (fun u v => (normalNode8607).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8607).moment H = injectiveMoment H reductionPivot11370 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8607).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11370 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11370 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 576, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11370 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11367, reductionProjection11368, reductionProjection11238, reductionProjection11369, reductionProjection11315] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11370 (0 : Fin 5)) = canonicalInput15760.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11367 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15760 hH))).trans (reductionSound11367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11370 (1 : Fin 5)) = canonicalInput16492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11368 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16492 hH))).trans (reductionSound11368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11370 (2 : Fin 5)) = canonicalInput16508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11238 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16508 hH))).trans (reductionSound11238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11370 (3 : Fin 5)) = canonicalInput16511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11369 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16511 hH))).trans (reductionSound11369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11370 (4 : Fin 5)) = (normalNode8621).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11315 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11370 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8607).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11370 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8607).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11370 (j : Fin 5)))
      1 2880 2880 1 ![2880, 576, 2880, 2880, 2880] ![1, 5, 1, 1, 1] reductionProjection11370 ![reductionProjection11367, reductionProjection11368, reductionProjection11238, reductionProjection11369, reductionProjection11315]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11371 : Integer.Sparse (Fin 1613) := [(87, -24), (90, 16), (94, 1), (426, 72), (698, 80), (955, 72), (1015, 72), (1219, -24), (1226, 48), (1227, 40), (1251, -11)]

def reductionPivot11371 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![1, 0, 1, 1, -3]]

theorem reductionSound11371 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8614).moment H =
      Integer.Sparse.eval reductionProjection11371 (momentVector H) := by
  have heq : reductionPivot11371 = (fun u v => (normalNode8614).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8614).moment H = injectiveMoment H reductionPivot11371 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8614).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11371 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11371 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 18, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11371 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection945, oldProjection2069, reductionProjection358, oldProjection2064] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11371 (0 : Fin 4)) = canonicalInput20660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11371 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection945 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11371 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20660 hH))).trans (oldProjectionSound945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11371 (1 : Fin 4)) = canonicalInput16765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11371 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11371 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16765 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11371 (2 : Fin 4)) = canonicalInput16518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11371 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection358 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11371 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16518 hH))).trans (reductionSound358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11371 (3 : Fin 4)) = canonicalInput16509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11371 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2064 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11371 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16509 hH))).trans (oldProjectionSound2064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8614).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11371 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8614).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11371 (j : Fin 4)))
      2 288 288 2 ![9, 144, 18, 36] ![32, 2, 16, 8] reductionProjection11371 ![oldProjection945, oldProjection2069, reductionProjection358, oldProjection2064]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11372 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 5), (247, 8), (698, 16), (869, 72), (1055, -24), (1059, 8), (1227, 16), (1251, -2), (1388, -24)]

def reductionPivot11372 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11372 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8628).moment H =
      Integer.Sparse.eval reductionProjection11372 (momentVector H) := by
  have heq : reductionPivot11372 = (fun u v => (normalNode8628).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8628).moment H = injectiveMoment H reductionPivot11372 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8628).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11372 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11372 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11372 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1241, oldProjection2629, reductionProjection3279, oldProjection2014] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11372 (0 : Fin 4)) = canonicalInput20663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11372 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1241 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11372 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20663 hH))).trans (oldProjectionSound1241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11372 (1 : Fin 4)) = canonicalInput16768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11372 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2629 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11372 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16768 hH))).trans (oldProjectionSound2629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11372 (2 : Fin 4)) = canonicalInput16522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11372 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3279 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11372 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16522 hH))).trans (reductionSound3279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11372 (3 : Fin 4)) = canonicalInput16514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11372 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2014 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11372 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16514 hH))).trans (oldProjectionSound2014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8628).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11372 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8628).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11372 (j : Fin 4)))
      2 288 1440 10 ![720, 1440, 1440, 360] ![2, 1, 1, 4] reductionProjection11372 ![oldProjection1241, oldProjection2629, reductionProjection3279, oldProjection2014]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11373 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 5), (426, 180), (698, 100), (700, 20), (865, 180), (890, 180), (1055, -60), (1059, 20), (1219, -60), (1226, 20), (1227, 80), (1251, -25)]

def reductionPivot11373 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]

theorem reductionSound11373 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8631).moment H =
      Integer.Sparse.eval reductionProjection11373 (momentVector H) := by
  have heq : reductionPivot11373 = (fun u v => (normalNode8631).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8631).moment H = injectiveMoment H reductionPivot11373 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8631).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11373 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11373 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11373 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1008, oldProjection2015, oldProjection2007, oldProjection2013] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11373 (0 : Fin 4)) = canonicalInput26267.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11373 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1008 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11373 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26267 hH))).trans (oldProjectionSound1008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11373 (1 : Fin 4)) = canonicalInput16843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11373 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2015 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11373 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16843 hH))).trans (oldProjectionSound2015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11373 (2 : Fin 4)) = canonicalInput16526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11373 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2007 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11373 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2007 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16526 hH))).trans (oldProjectionSound2007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11373 (3 : Fin 4)) = canonicalInput16515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11373 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11373 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16515 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8631).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11373 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8631).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11373 (j : Fin 4)))
      2 720 1440 4 ![720, 1440, 1440, 144] ![2, 1, 1, 10] reductionProjection11373 ![oldProjection1008, oldProjection2015, oldProjection2007, oldProjection2013]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11374 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 30), (635, 720), (698, 720), (1059, 80), (1221, -240), (1226, 240), (1227, 240), (1251, -105)]

def reductionPivot11374 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 2, -1, -2]]

theorem reductionSound11374 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8650).moment H =
      Integer.Sparse.eval reductionProjection11374 (momentVector H) := by
  have heq : reductionPivot11374 = (fun u v => (normalNode8650).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8650).moment H = injectiveMoment H reductionPivot11374 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8650).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11374 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11374 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11374 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3046, reductionProjection10173, oldProjection1824, oldProjection2580] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11374 (0 : Fin 4)) = canonicalInput17607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11374 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11374 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17607 hH))).trans (reductionSound3046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11374 (1 : Fin 4)) = canonicalInput16556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11374 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10173 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11374 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16556 hH))).trans (reductionSound10173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11374 (2 : Fin 4)) = canonicalInput16540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11374 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1824 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11374 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16540 hH))).trans (oldProjectionSound1824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11374 (3 : Fin 4)) = canonicalInput16539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11374 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2580 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11374 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16539 hH))).trans (oldProjectionSound2580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8650).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11374 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8650).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11374 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 1440] ![4, 2, 2, 2] reductionProjection11374 ![reductionProjection3046, reductionProjection10173, oldProjection1824, oldProjection2580]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11375 : Integer.Sparse (Fin 1613) := [(0, 11), (81, -120), (90, 40), (94, 30), (602, 360), (635, 360), (636, 360), (698, 600), (1059, 80), (1226, 280), (1227, 320), (1251, -125), (1389, -120)]

def reductionPivot11375 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, 1, -1], ![1, 0, 2, -2, -1]]

theorem reductionSound11375 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8651).moment H =
      Integer.Sparse.eval reductionProjection11375 (momentVector H) := by
  have heq : reductionPivot11375 = (fun u v => (normalNode8651).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8651).moment H = injectiveMoment H reductionPivot11375 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8651).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11375 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11375 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11375 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1820, reductionProjection4840, reductionProjection3692, oldProjection1824] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11375 (0 : Fin 4)) = canonicalInput17608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11375 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1820 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11375 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17608 hH))).trans (oldProjectionSound1820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11375 (1 : Fin 4)) = canonicalInput16557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11375 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4840 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11375 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16557 hH))).trans (reductionSound4840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11375 (2 : Fin 4)) = canonicalInput16541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11375 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3692 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11375 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16541 hH))).trans (reductionSound3692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11375 (3 : Fin 4)) = canonicalInput16540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11375 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1824 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11375 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16540 hH))).trans (oldProjectionSound1824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8651).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11375 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8651).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11375 (j : Fin 4)))
      2 1440 1440 2 ![1440, 720, 1440, 1440] ![1, 2, 1, 1] reductionProjection11375 ![oldProjection1820, reductionProjection4840, reductionProjection3692, oldProjection1824]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11376 : Integer.Sparse (Fin 1613) := [(0, 21), (19, -120), (20, 5), (94, 175), (247, 240), (294, 720), (434, 720), (698, 480), (704, 80), (1226, 160), (1227, 240), (1251, -135), (1388, -240)]

def reductionPivot11376 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, -1, -1, 1], ![1, 0, 1, 1, -3]]

theorem reductionSound11376 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8659).moment H =
      Integer.Sparse.eval reductionProjection11376 (momentVector H) := by
  have heq : reductionPivot11376 = (fun u v => (normalNode8659).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8659).moment H = injectiveMoment H reductionPivot11376 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8659).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11376 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11376 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11376 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4257, oldProjection2531, oldProjection2627, oldProjection1553] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11376 (0 : Fin 4)) = canonicalInput18446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11376 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4257 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11376 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18446 hH))).trans (reductionSound4257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11376 (1 : Fin 4)) = canonicalInput16598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11376 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2531 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11376 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2531 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16598 hH))).trans (oldProjectionSound2531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11376 (2 : Fin 4)) = canonicalInput16542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11376 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2627 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11376 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16542 hH))).trans (oldProjectionSound2627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11376 (3 : Fin 4)) = canonicalInput16538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11376 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1553 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11376 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16538 hH))).trans (oldProjectionSound1553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8659).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11376 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8659).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11376 (j : Fin 4)))
      2 2880 2880 2 ![144, 1440, 1440, 1440] ![20, 2, 2, 2] reductionProjection11376 ![reductionProjection4257, oldProjection2531, oldProjection2627, oldProjection1553]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11377 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -10), (81, -120), (94, 40), (241, 40), (698, 560), (1050, -120), (1058, -120), (1059, 320), (1221, -240), (1226, 40), (1227, 160), (1251, -95)]

def reductionPivot11377 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 2, 0, -2], ![1, 1, -1, -2, 1]]

theorem reductionSound11377 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8689).moment H =
      Integer.Sparse.eval reductionProjection11377 (momentVector H) := by
  have heq : reductionPivot11377 = (fun u v => (normalNode8689).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8689).moment H = injectiveMoment H reductionPivot11377 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8689).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11377 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11377 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11377 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5543, reductionProjection3630, oldProjection2639, oldProjection2435] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11377 (0 : Fin 4)) = canonicalInput14885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11377 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5543 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11377 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14885 hH))).trans (reductionSound5543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11377 (1 : Fin 4)) = canonicalInput16567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11377 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3630 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11377 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16567 hH))).trans (reductionSound3630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11377 (2 : Fin 4)) = canonicalInput16611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11377 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2639 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11377 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16611 hH))).trans (oldProjectionSound2639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11377 (3 : Fin 4)) = canonicalInput16613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11377 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2435 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11377 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2435 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16613 hH))).trans (oldProjectionSound2435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8689).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11377 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8689).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11377 (j : Fin 4)))
      2 1440 1440 2 ![36, 720, 1440, 1440] ![40, 2, 1, 1] reductionProjection11377 ![reductionProjection5543, reductionProjection3630, oldProjection2639, oldProjection2435]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11378 : Integer.Sparse (Fin 1613) := [(0, 14), (81, -240), (94, 15), (241, 80), (243, 80), (578, 720), (586, 720), (602, 720), (698, 720), (1059, 320), (1221, -720), (1226, 320), (1227, 560), (1251, -195), (1389, -240)]

def reductionPivot11378 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, 1, -1, -2, 1]]

theorem reductionSound11378 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8691).moment H =
      Integer.Sparse.eval reductionProjection11378 (momentVector H) := by
  have heq : reductionPivot11378 = (fun u v => (normalNode8691).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8691).moment H = injectiveMoment H reductionPivot11378 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8691).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11378 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11378 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 360, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11378 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3067, oldProjection1829, oldProjection2778, oldProjection1756] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11378 (0 : Fin 4)) = canonicalInput14893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11378 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3067 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11378 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14893 hH))).trans (reductionSound3067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11378 (1 : Fin 4)) = canonicalInput16571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11378 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1829 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11378 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16571 hH))).trans (oldProjectionSound1829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11378 (2 : Fin 4)) = canonicalInput16621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11378 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2778 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11378 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16621 hH))).trans (oldProjectionSound2778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11378 (3 : Fin 4)) = canonicalInput16622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11378 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11378 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16622 hH))).trans (oldProjectionSound1756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8691).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11378 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8691).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11378 (j : Fin 4)))
      2 2880 2880 2 ![288, 360, 720, 1440] ![10, 8, 4, 2] reductionProjection11378 ![reductionProjection3067, oldProjection1829, oldProjection2778, oldProjection1756]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11379 : Integer.Sparse (Fin 1613) := [(0, -7), (1227, 80), (1251, -85), (1385, 180)]

def reductionPivot11379 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]

theorem reductionSound11379 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10154).moment H =
      Integer.Sparse.eval reductionProjection11379 (momentVector H) := by
  have heq : reductionPivot11379 = (fun u v => (normalNode10154).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10154).moment H = injectiveMoment H reductionPivot11379 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10154).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11379 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11379 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11379 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5054, oldProjection2785, oldProjection2645, reductionProjection5155] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11379 (0 : Fin 4)) = canonicalInput20377.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11379 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5054 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11379 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20377 hH))).trans (reductionSound5054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11379 (1 : Fin 4)) = canonicalInput19993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11379 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2785 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11379 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19993 hH))).trans (oldProjectionSound2785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11379 (2 : Fin 4)) = canonicalInput19992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11379 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2645 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11379 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19992 hH))).trans (oldProjectionSound2645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11379 (3 : Fin 4)) = canonicalInput19991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11379 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5155 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11379 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19991 hH))).trans (reductionSound5155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10154).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11379 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10154).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11379 (j : Fin 4)))
      2 720 720 2 ![720, 360, 720, 72] ![1, 2, 1, 10] reductionProjection11379 ![reductionProjection5054, oldProjection2785, oldProjection2645, reductionProjection5155]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11380 : Integer.Sparse (Fin 1613) := [(0, 3), (1227, 80), (1251, -35)]

def reductionPivot11380 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11380 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8734).moment H =
      Integer.Sparse.eval reductionProjection11380 (momentVector H) := by
  have heq : reductionPivot11380 = (fun u v => (normalNode8734).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8734).moment H = injectiveMoment H reductionPivot11380 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8734).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11380 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11380 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 120, 144, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11380 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2725, oldProjection1294, reductionProjection5152, oldProjection2725] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11380 (0 : Fin 4)) = canonicalInput16005.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11380 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11380 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16005 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11380 (1 : Fin 4)) = canonicalInput16604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11380 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1294 (momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11380 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16604 hH))).trans (oldProjectionSound1294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11380 (2 : Fin 4)) = canonicalInput16614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11380 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5152 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11380 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16614 hH))).trans (reductionSound5152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11380 (3 : Fin 4)) = canonicalInput16617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11380 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11380 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16617 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8734).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11380 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8734).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11380 (j : Fin 4)))
      2 720 1440 4 ![1440, 120, 144, 1440] ![1, 12, 10, 1] reductionProjection11380 ![oldProjection2725, oldProjection1294, reductionProjection5152, oldProjection2725]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11381 : Integer.Sparse (Fin 1613) := [(0, -4), (94, -41), (617, -144), (698, -224), (1027, -144), (1059, -96), (1227, -416), (1251, 415), (1385, -288), (1389, 192)]

def reductionPivot11381 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, -1, -1], ![1, -1, 0, 1, -1]]

theorem reductionSound11381 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8698).moment H =
      Integer.Sparse.eval reductionProjection11381 (momentVector H) := by
  have heq : reductionPivot11381 = (fun u v => (normalNode8698).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8698).moment H = injectiveMoment H reductionPivot11381 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8698).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11381 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11381 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 720, 2880, 720, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11381 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5132, reductionProjection11379, reductionProjection7268, reductionProjection11380, reductionProjection11331] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11381 (0 : Fin 5)) = canonicalInput14924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5132 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14924 hH))).trans (reductionSound5132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11381 (1 : Fin 5)) = canonicalInput16599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11379 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11379 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16599 hH))).trans (reductionSound11379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11381 (2 : Fin 5)) = canonicalInput16658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7268 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16658 hH))).trans (reductionSound7268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11381 (3 : Fin 5)) = canonicalInput16662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11380 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16662 hH))).trans (reductionSound11380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11381 (4 : Fin 5)) = canonicalInput16663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11331 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11381 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16663 hH))).trans (reductionSound11331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8698).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11381 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8698).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11381 (j : Fin 5)))
      1 576 2880 5 ![2880, 720, 2880, 720, 2880] ![1, 4, 1, 4, 1] reductionProjection11381 ![reductionProjection5132, reductionProjection11379, reductionProjection7268, reductionProjection11380, reductionProjection11331]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11382 : Integer.Sparse (Fin 1613) := [(0, -23), (19, -20), (81, -240), (94, 65), (247, 80), (698, 400), (1055, -240), (1058, -240), (1059, 80), (1226, 80), (1227, 160), (1251, -120)]

def reductionPivot11382 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -2, 1]]

theorem reductionSound11382 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8699).moment H =
      Integer.Sparse.eval reductionProjection11382 (momentVector H) := by
  have heq : reductionPivot11382 = (fun u v => (normalNode8699).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8699).moment H = injectiveMoment H reductionPivot11382 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8699).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11382 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11382 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![180, 480, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11382 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5561, oldProjection709, oldProjection2639, reductionProjection3095] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11382 (0 : Fin 4)) = canonicalInput14936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11382 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5561 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11382 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14936 hH))).trans (reductionSound5561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11382 (1 : Fin 4)) = canonicalInput16603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11382 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection709 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11382 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16603 hH))).trans (oldProjectionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11382 (2 : Fin 4)) = canonicalInput16672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11382 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2639 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11382 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16672 hH))).trans (oldProjectionSound2639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11382 (3 : Fin 4)) = canonicalInput16676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11382 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3095 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11382 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16676 hH))).trans (reductionSound3095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8699).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11382 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8699).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11382 (j : Fin 4)))
      2 2880 2880 2 ![180, 480, 1440, 1440] ![16, 6, 2, 2] reductionProjection11382 ![reductionProjection5561, oldProjection709, oldProjection2639, reductionProjection3095]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11383 : Integer.Sparse (Fin 1613) := [(0, -37), (81, 120), (90, -40), (94, -95), (602, -1080), (618, -360), (635, -720), (636, -360), (698, -2200), (890, -720), (1015, -360), (1016, -360), (1059, -400), (1221, 360), (1226, -680), (1227, -1040), (1251, 610), (1389, 480)]

def reductionPivot11383 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1]]

theorem reductionSound11383 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8703).moment H =
      Integer.Sparse.eval reductionProjection11383 (momentVector H) := by
  have heq : reductionPivot11383 = (fun u v => (normalNode8703).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8703).moment H = injectiveMoment H reductionPivot11383 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8703).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11383 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11383 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 576, 2880, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11383 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11375, reductionProjection10835, reductionProjection5025, reductionProjection5181, reductionProjection11374] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11383 (0 : Fin 5)) = canonicalInput14949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11375 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14949 hH))).trans (reductionSound11375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11383 (1 : Fin 5)) = canonicalInput16615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10835 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16615 hH))).trans (reductionSound10835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11383 (2 : Fin 5)) = canonicalInput16694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5025 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16694 hH))).trans (reductionSound5025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11383 (3 : Fin 5)) = canonicalInput16699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5181 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16699 hH))).trans (reductionSound5181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11383 (4 : Fin 5)) = canonicalInput16700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11374 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11383 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16700 hH))).trans (reductionSound11374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8703).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11383 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8703).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11383 (j : Fin 5)))
      1 1440 2880 2 ![1440, 576, 2880, 1440, 2880] ![2, 5, 1, 2, 1] reductionProjection11383 ![reductionProjection11375, reductionProjection10835, reductionProjection5025, reductionProjection5181, reductionProjection11374]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11384 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -12), (20, 1), (87, -96), (94, 3), (247, 32), (698, 112), (1055, -48), (1058, -96), (1219, -144), (1223, -48), (1226, 80), (1227, 64), (1250, 12), (1251, -9)]

def reductionPivot11384 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 0, -3, 2], ![1, 0, 0, 1, -2]]

theorem reductionSound11384 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8705).moment H =
      Integer.Sparse.eval reductionProjection11384 (momentVector H) := by
  have heq : reductionPivot11384 = (fun u v => (normalNode8705).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8705).moment H = injectiveMoment H reductionPivot11384 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8705).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11384 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11384 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11384 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1300, oldProjection1116, oldProjection1498, oldProjection1768] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11384 (0 : Fin 4)) = canonicalInput14953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11384 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1300 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11384 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14953 hH))).trans (reductionSound1300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11384 (1 : Fin 4)) = canonicalInput16618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11384 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1116 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11384 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16618 hH))).trans (oldProjectionSound1116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11384 (2 : Fin 4)) = canonicalInput16696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11384 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1498 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11384 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16696 hH))).trans (oldProjectionSound1498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11384 (3 : Fin 4)) = canonicalInput16702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11384 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1768 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11384 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16702 hH))).trans (oldProjectionSound1768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8705).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11384 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8705).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11384 (j : Fin 4)))
      2 576 2880 10 ![72, 720, 1440, 1440] ![40, 4, 2, 2] reductionProjection11384 ![reductionProjection1300, oldProjection1116, oldProjection1498, oldProjection1768]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11385 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (94, 110), (169, 720), (241, 160), (247, 80), (602, 720), (638, 720), (697, -480), (698, 880), (1050, -240), (1055, -240), (1058, -240), (1059, 320), (1226, 80), (1227, 80), (1250, 60), (1251, -135)]

def reductionPivot11385 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, -2, 2], ![1, 0, 0, 1, -2]]

theorem reductionSound11385 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8711).moment H =
      Integer.Sparse.eval reductionProjection11385 (momentVector H) := by
  have heq : reductionPivot11385 = (fun u v => (normalNode8711).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8711).moment H = injectiveMoment H reductionPivot11385 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8711).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11385 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11385 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11385 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1519, oldProjection2443, oldProjection1496, oldProjection1766] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11385 (0 : Fin 4)) = canonicalInput14977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11385 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1519 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11385 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14977 hH))).trans (oldProjectionSound1519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11385 (1 : Fin 4)) = canonicalInput16680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11385 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2443 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11385 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16680 hH))).trans (oldProjectionSound2443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11385 (2 : Fin 4)) = canonicalInput16749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11385 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1496 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11385 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16749 hH))).trans (oldProjectionSound1496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11385 (3 : Fin 4)) = canonicalInput16752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11385 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1766 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11385 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16752 hH))).trans (oldProjectionSound1766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8711).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11385 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8711).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11385 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 1440] ![2, 2, 2, 2] reductionProjection11385 ![oldProjection1519, oldProjection2443, oldProjection1496, oldProjection1766]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11386 : Integer.Sparse (Fin 1613) := [(0, -3), (1059, 40), (1251, -85)]

def reductionPivot11386 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 1, 1, 0], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11386 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9495).moment H =
      Integer.Sparse.eval reductionProjection11386 (momentVector H) := by
  have heq : reductionPivot11386 = (fun u v => (normalNode9495).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9495).moment H = injectiveMoment H reductionPivot11386 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9495).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11386 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11386 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 180, 180] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11386 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1118, oldProjection2607, oldProjection2756, oldProjection2756] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11386 (0 : Fin 4)) = canonicalInput16601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11386 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1118 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11386 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16601 hH))).trans (oldProjectionSound1118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11386 (1 : Fin 4)) = canonicalInput18447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11386 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2607 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11386 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2607 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18447 hH))).trans (oldProjectionSound2607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11386 (2 : Fin 4)) = canonicalInput18459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11386 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2756 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11386 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18459 hH))).trans (oldProjectionSound2756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11386 (3 : Fin 4)) = canonicalInput18460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11386 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2756 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11386 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18460 hH))).trans (oldProjectionSound2756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9495).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11386 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9495).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11386 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 180, 180] ![2, 4, 8, 8] reductionProjection11386 ![oldProjection1118, oldProjection2607, oldProjection2756, oldProjection2756]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11387 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 20), (698, 320), (1059, 80), (1227, 400), (1251, -165)]

def reductionPivot11387 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -1, 0, 0], ![1, 0, -1, 1, -1]]

theorem reductionSound11387 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8761).moment H =
      Integer.Sparse.eval reductionProjection11387 (momentVector H) := by
  have heq : reductionPivot11387 = (fun u v => (normalNode8761).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8761).moment H = injectiveMoment H reductionPivot11387 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8761).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11387 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11387 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11387 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2632, oldProjection2586, oldProjection2632, oldProjection2744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11387 (0 : Fin 4)) = canonicalInput18470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11387 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11387 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18470 hH))).trans (oldProjectionSound2632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11387 (1 : Fin 4)) = canonicalInput16726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11387 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11387 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16726 hH))).trans (oldProjectionSound2586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11387 (2 : Fin 4)) = canonicalInput16642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11387 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11387 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16642 hH))).trans (oldProjectionSound2632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11387 (3 : Fin 4)) = canonicalInput16639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11387 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11387 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16639 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8761).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11387 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8761).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11387 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 288] ![2, 2, 2, 10] reductionProjection11387 ![oldProjection2632, oldProjection2586, oldProjection2632, oldProjection2744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11388 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -6), (698, -112), (890, -72), (1059, -32), (1227, -56), (1251, 51)]

def reductionPivot11388 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, -1, 0, 0]]

theorem reductionSound11388 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8736).moment H =
      Integer.Sparse.eval reductionProjection11388 (momentVector H) := by
  have heq : reductionPivot11388 = (fun u v => (normalNode8736).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8736).moment H = injectiveMoment H reductionPivot11388 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8736).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11388 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11388 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11388 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11291, reductionProjection7277, reductionProjection11386, reductionProjection11387, reductionProjection11387] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11388 (0 : Fin 5)) = canonicalInput16053.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16053 hH))).trans (reductionSound11291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11388 (1 : Fin 5)) = (normalNode8765).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7277 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11388 (2 : Fin 5)) = canonicalInput16653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16653 hH))).trans (reductionSound11386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11388 (3 : Fin 5)) = canonicalInput16654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11387 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16654 hH))).trans (reductionSound11387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11388 (4 : Fin 5)) = canonicalInput16655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11387 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11388 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11387 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16655 hH))).trans (reductionSound11387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8736).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11388 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8736).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11388 (j : Fin 5)))
      1 288 2880 10 ![1440, 1440, 1440, 2880, 2880] ![2, 2, 2, 1, 1] reductionProjection11388 ![reductionProjection11291, reductionProjection7277, reductionProjection11386, reductionProjection11387, reductionProjection11387]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11389 : Integer.Sparse (Fin 1613) := [(0, 8), (19, -4), (94, 15), (247, 16), (698, 144), (700, 16), (1055, -48), (1058, -48), (1059, 64), (1227, 128), (1251, -81)]

def reductionPivot11389 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 0, 1, 1, -2], ![1, 1, -2, -1, 1]]

theorem reductionSound11389 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8740).moment H =
      Integer.Sparse.eval reductionProjection11389 (momentVector H) := by
  have heq : reductionPivot11389 = (fun u v => (normalNode8740).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8740).moment H = injectiveMoment H reductionPivot11389 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8740).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11389 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11389 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11389 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2454, reductionProjection3087, reductionProjection10861, reductionProjection3095] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11389 (0 : Fin 4)) = canonicalInput16067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11389 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2454 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11389 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2454 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16067 hH))).trans (oldProjectionSound2454 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11389 (1 : Fin 4)) = canonicalInput16656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11389 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3087 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11389 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16656 hH))).trans (reductionSound3087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11389 (2 : Fin 4)) = canonicalInput16675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11389 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10861 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11389 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16675 hH))).trans (reductionSound10861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11389 (3 : Fin 4)) = canonicalInput16676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11389 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3095 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11389 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16676 hH))).trans (reductionSound3095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8740).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11389 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8740).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11389 (j : Fin 4)))
      2 576 2880 10 ![1440, 1440, 1440, 1440] ![2, 2, 2, 2] reductionProjection11389 ![oldProjection2454, reductionProjection3087, reductionProjection10861, reductionProjection3095]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11390 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 60), (698, 320), (1226, 80), (1227, 160), (1251, -245)]

def reductionPivot11390 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound11390 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8742).moment H =
      Integer.Sparse.eval reductionProjection11390 (momentVector H) := by
  have heq : reductionPivot11390 = (fun u v => (normalNode8742).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8742).moment H = injectiveMoment H reductionPivot11390 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8742).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11390 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11390 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11390 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2449, oldProjection2645, oldProjection2443, oldProjection2642] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11390 (0 : Fin 4)) = canonicalInput16071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11390 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11390 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16071 hH))).trans (oldProjectionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11390 (1 : Fin 4)) = canonicalInput16661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11390 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2645 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11390 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16661 hH))).trans (oldProjectionSound2645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11390 (2 : Fin 4)) = canonicalInput16680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11390 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2443 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11390 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16680 hH))).trans (oldProjectionSound2443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11390 (3 : Fin 4)) = canonicalInput16681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11390 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11390 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16681 hH))).trans (oldProjectionSound2642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8742).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11390 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8742).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11390 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 1440] ![2, 4, 2, 2] reductionProjection11390 ![oldProjection2449, oldProjection2645, oldProjection2443, oldProjection2642]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11391 : Integer.Sparse (Fin 1613) := [(0, -9), (1227, 80), (1251, -95)]

def reductionPivot11391 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11391 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8743).moment H =
      Integer.Sparse.eval reductionProjection11391 (momentVector H) := by
  have heq : reductionPivot11391 = (fun u v => (normalNode8743).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8743).moment H = injectiveMoment H reductionPivot11391 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8743).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11391 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11391 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![90, 180, 1440, 180] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11391 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1048, oldProjection2756, oldProjection2642, oldProjection2756] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11391 (0 : Fin 4)) = canonicalInput16072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11391 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11391 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16072 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11391 (1 : Fin 4)) = canonicalInput16664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11391 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2756 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11391 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16664 hH))).trans (oldProjectionSound2756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11391 (2 : Fin 4)) = canonicalInput16681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11391 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11391 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16681 hH))).trans (oldProjectionSound2642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11391 (3 : Fin 4)) = canonicalInput16682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11391 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2756 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11391 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16682 hH))).trans (oldProjectionSound2756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8743).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11391 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8743).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11391 (j : Fin 4)))
      2 2880 2880 2 ![90, 180, 1440, 180] ![32, 16, 2, 16] reductionProjection11391 ![oldProjection1048, oldProjection2756, oldProjection2642, oldProjection2756]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

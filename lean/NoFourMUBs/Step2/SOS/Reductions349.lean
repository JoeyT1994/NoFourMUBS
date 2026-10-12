import NoFourMUBs.Step2.SOS.Canonical068
import NoFourMUBs.Step2.SOS.Canonical206
import NoFourMUBs.Step2.SOS.Canonical229
import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical233
import NoFourMUBs.Step2.SOS.Canonical234
import NoFourMUBs.Step2.SOS.Canonical243
import NoFourMUBs.Step2.SOS.Canonical244
import NoFourMUBs.Step2.SOS.Canonical245
import NoFourMUBs.Step2.SOS.Canonical246
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical249
import NoFourMUBs.Step2.SOS.Canonical250
import NoFourMUBs.Step2.SOS.Canonical251
import NoFourMUBs.Step2.SOS.Canonical252
import NoFourMUBs.Step2.SOS.Canonical258
import NoFourMUBs.Step2.SOS.Canonical259
import NoFourMUBs.Step2.SOS.Canonical260
import NoFourMUBs.Step2.SOS.Canonical261
import NoFourMUBs.Step2.SOS.Canonical262
import NoFourMUBs.Step2.SOS.Canonical278
import NoFourMUBs.Step2.SOS.Canonical279
import NoFourMUBs.Step2.SOS.Canonical286
import NoFourMUBs.Step2.SOS.Canonical287
import NoFourMUBs.Step2.SOS.Canonical308
import NoFourMUBs.Step2.SOS.Canonical309
import NoFourMUBs.Step2.SOS.Canonical311
import NoFourMUBs.Step2.SOS.Canonical319
import NoFourMUBs.Step2.SOS.Canonical320
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical331
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions100
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions103
import NoFourMUBs.Step2.SOS.Reductions110
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions112
import NoFourMUBs.Step2.SOS.Reductions113
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions152
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions166
import NoFourMUBs.Step2.SOS.Reductions222
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions348
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11168 : Integer.Sparse (Fin 1613) := [(0, -47), (94, 10), (1227, 80), (1251, -55)]

def reductionPivot11168 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, 0, 0, -1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]

theorem reductionSound11168 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10414).moment H =
      Integer.Sparse.eval reductionProjection11168 (momentVector H) := by
  have heq : reductionPivot11168 = (fun u v => (normalNode10414).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10414).moment H = injectiveMoment H reductionPivot11168 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10414).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11168 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11168 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 288, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11168 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10863, oldProjection2630, oldProjection1262, oldProjection1262] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11168 (0 : Fin 4)) = canonicalInput17847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11168 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10863 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11168 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10863 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17847 hH))).trans (reductionSound10863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11168 (1 : Fin 4)) = canonicalInput20465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11168 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2630 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11168 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20465 hH))).trans (oldProjectionSound2630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11168 (2 : Fin 4)) = canonicalInput20491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11168 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1262 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11168 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20491 hH))).trans (oldProjectionSound1262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11168 (3 : Fin 4)) = canonicalInput20492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11168 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1262 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11168 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20492 hH))).trans (oldProjectionSound1262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10414).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11168 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10414).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11168 (j : Fin 4)))
      2 2880 2880 2 ![720, 288, 720, 720] ![4, 10, 4, 4] reductionProjection11168 ![reductionProjection10863, oldProjection2630, oldProjection1262, oldProjection1262]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11169 : Integer.Sparse (Fin 1613) := [(0, 27), (94, -25), (698, -80)]

def reductionPivot11169 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, 0, -1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11169 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10400).moment H =
      Integer.Sparse.eval reductionProjection11169 (momentVector H) := by
  have heq : reductionPivot11169 = (fun u v => (normalNode10400).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10400).moment H = injectiveMoment H reductionPivot11169 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10400).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11169 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11169 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 1440, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11169 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11164, reductionProjection11167, reductionProjection11153, oldProjection2724, reductionProjection11168] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11169 (0 : Fin 5)) = canonicalInput15990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11164 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15990 hH))).trans (reductionSound11164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11169 (1 : Fin 5)) = (normalNode10404).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11167 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11169 (2 : Fin 5)) = canonicalInput20488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11153 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20488 hH))).trans (reductionSound11153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11169 (3 : Fin 5)) = canonicalInput20489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20489 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11169 (4 : Fin 5)) = canonicalInput20490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11168 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11169 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20490 hH))).trans (reductionSound11168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10400).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11169 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10400).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11169 (j : Fin 5)))
      1 1440 2880 2 ![2880, 1440, 1440, 1440, 2880] ![1, 2, 2, 2, 1] reductionProjection11169 ![reductionProjection11164, reductionProjection11167, reductionProjection11153, oldProjection2724, reductionProjection11168]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11170 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 1), (698, 16), (1251, 16)]

def reductionPivot11170 : Matrix (Fin 6) (Fin 6) ℤ := ![![0, 0, -1, 0, 1, 0], ![-1, -1, 0, 0, 0, 2], ![0, 0, 0, 1, -1, 0], ![0, 0, 1, -1, 0, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]

theorem reductionSound11170 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode8067).moment H =
      Integer.Sparse.eval reductionProjection11170 (momentVector H) := by
  have heq : reductionPivot11170 = (fun u v => (normalNode8067).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8067).moment H = injectiveMoment H reductionPivot11170 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8067).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11170 0 = Pi.single (4 : Fin 6) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11170 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11170 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11165, reductionProjection11153, reductionProjection11153, reductionProjection11169, reductionProjection11169] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11170 (0 : Fin 5)) = canonicalInput14673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11165 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11165 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound14673 hH))).trans (reductionSound11165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11170 (1 : Fin 5)) = canonicalInput15612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11153 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15612 hH))).trans (reductionSound11153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11170 (2 : Fin 5)) = canonicalInput15614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11153 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15614 hH))).trans (reductionSound11153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11170 (3 : Fin 5)) = canonicalInput15615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11169 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15615 hH))).trans (reductionSound11169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11170 (4 : Fin 5)) = canonicalInput15616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11169 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11170 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15616 hH))).trans (reductionSound11169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8067).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11170 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8067).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11170 (j : Fin 5)))
      1 96 1440 15 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection11170 ![reductionProjection11165, reductionProjection11153, reductionProjection11153, reductionProjection11169, reductionProjection11169]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11171 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 45), (247, 80), (698, 480), (865, 720), (1055, -480), (1059, 160), (1227, 320), (1251, -120)]

def reductionPivot11171 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 1, 1], ![0, 0, -2, 1, 1], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11171 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8625).moment H =
      Integer.Sparse.eval reductionProjection11171 (momentVector H) := by
  have heq : reductionPivot11171 = (fun u v => (normalNode8625).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8625).moment H = injectiveMoment H reductionPivot11171 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8625).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11171 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11171 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11171 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1264, oldProjection2743, reductionProjection3279, oldProjection2013] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11171 (0 : Fin 4)) = canonicalInput21237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11171 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1264 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11171 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21237 hH))).trans (oldProjectionSound1264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11171 (1 : Fin 4)) = canonicalInput16780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11171 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2743 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11171 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16780 hH))).trans (oldProjectionSound2743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11171 (2 : Fin 4)) = canonicalInput16522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11171 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3279 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11171 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16522 hH))).trans (reductionSound3279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11171 (3 : Fin 4)) = canonicalInput16513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11171 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11171 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16513 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8625).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11171 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8625).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11171 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 144] ![4, 2, 2, 20] reductionProjection11171 ![oldProjection1264, oldProjection2743, reductionProjection3279, oldProjection2013]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11172 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 4), (81, 288), (94, -33), (241, -48), (247, -16), (423, -288), (668, -288), (697, 96), (698, -544), (864, -144), (865, -432), (1050, 336), (1052, 96), (1055, 96), (1058, 96), (1059, -272), (1221, 480), (1226, -32), (1227, -192), (1250, -12), (1251, 60), (1389, 192)]

def reductionPivot11172 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 0, 2], ![0, 0, -2, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11172 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8227).moment H =
      Integer.Sparse.eval reductionProjection11172 (momentVector H) := by
  have heq : reductionPivot11172 = (fun u v => (normalNode8227).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8227).moment H = injectiveMoment H reductionPivot11172 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8227).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11172 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11172 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 720, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11172 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11171, reductionProjection11158, reductionProjection11154, reductionProjection3525, reductionProjection3525] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11172 (0 : Fin 5)) = (normalNode8625).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11171 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11172 (1 : Fin 5)) = (normalNode8295).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11158 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11172 (2 : Fin 5)) = canonicalInput15764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11154 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15764 hH))).trans (reductionSound11154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11172 (3 : Fin 5)) = canonicalInput15762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3525 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15762 hH))).trans (reductionSound3525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11172 (4 : Fin 5)) = (normalNode8259).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3525 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11172 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound3525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8227).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11172 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8227).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11172 (j : Fin 5)))
      1 576 2880 5 ![2880, 720, 720, 1440, 1440] ![1, 4, 4, 2, 2] reductionProjection11172 ![reductionProjection11171, reductionProjection11158, reductionProjection11154, reductionProjection3525, reductionProjection3525]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11173 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 40), (602, 1440), (635, 720), (666, 720), (698, 960), (865, 720), (1050, -480), (1059, 640), (1221, -480), (1227, 320), (1251, -95)]

def reductionPivot11173 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1]]

theorem reductionSound11173 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8300).moment H =
      Integer.Sparse.eval reductionProjection11173 (momentVector H) := by
  have heq : reductionPivot11173 = (fun u v => (normalNode8300).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8300).moment H = injectiveMoment H reductionPivot11173 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8300).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11173 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11173 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11173 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2743, reductionProjection2177, reductionProjection2024, oldProjection1999] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11173 (0 : Fin 4)) = canonicalInput20666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11173 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2743 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11173 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20666 hH))).trans (oldProjectionSound2743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11173 (1 : Fin 4)) = canonicalInput16152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11173 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2177 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11173 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16152 hH))).trans (reductionSound2177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11173 (2 : Fin 4)) = canonicalInput15812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11173 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2024 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11173 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15812 hH))).trans (reductionSound2024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11173 (3 : Fin 4)) = canonicalInput15806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11173 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11173 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15806 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8300).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11173 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8300).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11173 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 1440] ![2, 2, 4, 2] reductionProjection11173 ![oldProjection2743, reductionProjection2177, reductionProjection2024, oldProjection1999]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11174 : Integer.Sparse (Fin 1613) := [(0, -12), (81, 360), (94, -85), (241, -160), (423, -360), (602, -720), (635, -360), (666, -360), (668, -360), (697, 120), (698, -1960), (864, -360), (865, -1080), (869, -360), (1050, 1200), (1052, 120), (1055, 120), (1058, 120), (1059, -1040), (1221, 1440), (1226, -160), (1227, -720), (1251, 255), (1389, 240)]

def reductionPivot11174 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11174 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8155).moment H =
      Integer.Sparse.eval reductionProjection11174 (momentVector H) := by
  have heq : reductionPivot11174 = (fun u v => (normalNode8155).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8155).moment H = injectiveMoment H reductionPivot11174 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8155).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11174 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11174 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 720, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11174 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3525, reductionProjection7188, reductionProjection11158, reductionProjection7186, reductionProjection11173] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11174 (0 : Fin 5)) = canonicalInput13230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3525 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13230 hH))).trans (reductionSound3525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11174 (1 : Fin 5)) = canonicalInput15748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15748 hH))).trans (reductionSound7188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11174 (2 : Fin 5)) = canonicalInput16112.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11158 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16112 hH))).trans (reductionSound11158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11174 (3 : Fin 5)) = canonicalInput16116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7186 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16116 hH))).trans (reductionSound7186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11174 (4 : Fin 5)) = canonicalInput16117.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11173 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11174 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16117 hH))).trans (reductionSound11173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8155).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11174 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8155).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11174 (j : Fin 5)))
      1 1440 2880 2 ![1440, 2880, 720, 2880, 2880] ![2, 1, 4, 1, 1] reductionProjection11174 ![reductionProjection3525, reductionProjection7188, reductionProjection11158, reductionProjection7186, reductionProjection11173]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11175 : Integer.Sparse (Fin 1613) := [(0, 87), (19, -40), (81, -2880), (94, 695), (241, 1120), (247, 80), (423, 2880), (602, 2880), (635, 1440), (666, 1440), (668, 2880), (697, -960), (698, 12640), (864, 2160), (865, 6480), (869, 2880), (1050, -7200), (1052, -960), (1055, -1440), (1058, -960), (1059, 6560), (1221, -9600), (1226, 960), (1227, 4960), (1250, 120), (1251, -2300), (1389, -2880)]

def reductionPivot11175 : Matrix (Fin 6) (Fin 6) ℤ := ![![0, 0, -1, 0, 1, 0], ![-1, -1, 0, 0, 0, 2], ![0, 0, 0, 2, -2, 0], ![0, 0, 1, -2, 1, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]

theorem reductionSound11175 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8068).moment H =
      Integer.Sparse.eval reductionProjection11175 (momentVector H) := by
  have heq : reductionPivot11175 = (fun u v => (normalNode8068).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8068).moment H = injectiveMoment H reductionPivot11175 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8068).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11175 0 = Pi.single (4 : Fin 6) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11175 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 288, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11175 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11172, reductionProjection11159, reductionProjection11158, reductionProjection11174, reductionProjection11174] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11175 (0 : Fin 5)) = canonicalInput14674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11172 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11172 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound14674 hH))).trans (reductionSound11172 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11175 (1 : Fin 5)) = canonicalInput15613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11159 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15613 hH))).trans (reductionSound11159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11175 (2 : Fin 5)) = canonicalInput15617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11158 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15617 hH))).trans (reductionSound11158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11175 (3 : Fin 5)) = canonicalInput15618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11174 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15618 hH))).trans (reductionSound11174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11175 (4 : Fin 5)) = canonicalInput15619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11174 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11175 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15619 hH))).trans (reductionSound11174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8068).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11175 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8068).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11175 (j : Fin 5)))
      1 2880 2880 1 ![576, 288, 720, 1440, 1440] ![5, 10, 4, 2, 2] reductionProjection11175 ![reductionProjection11172, reductionProjection11159, reductionProjection11158, reductionProjection11174, reductionProjection11174]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11176 : Integer.Sparse (Fin 1613) := [(0, 47), (81, -240), (94, 110), (247, 80), (541, 720), (616, 720), (617, 1440), (669, 720), (697, -240), (698, 640), (1055, -240), (1059, 320), (1226, 80), (1227, 320), (1250, 60), (1251, -325), (1388, -480)]

def reductionPivot11176 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 2, 1, -2, -1], ![1, 0, -1, 1, -1]]

theorem reductionSound11176 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8080).moment H =
      Integer.Sparse.eval reductionProjection11176 (momentVector H) := by
  have heq : reductionPivot11176 = (fun u v => (normalNode8080).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8080).moment H = injectiveMoment H reductionPivot11176 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8080).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11176 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11176 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11176 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3788, reductionProjection3194, reductionProjection5343, oldProjection1836] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11176 (0 : Fin 4)) = canonicalInput17868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11176 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3788 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11176 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3788 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17868 hH))).trans (reductionSound3788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11176 (1 : Fin 4)) = canonicalInput15700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11176 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3194 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11176 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15700 hH))).trans (reductionSound3194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11176 (2 : Fin 4)) = canonicalInput15641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11176 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5343 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11176 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15641 hH))).trans (reductionSound5343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11176 (3 : Fin 4)) = canonicalInput15639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11176 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1836 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11176 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15639 hH))).trans (oldProjectionSound1836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8080).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11176 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8080).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11176 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 1440] ![4, 2, 2, 2] reductionProjection11176 ![reductionProjection3788, reductionProjection3194, reductionProjection5343, oldProjection1836]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11177 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 3), (617, 144), (1227, 16), (1251, -48), (1383, -288), (1385, 288), (1389, -96), (1399, -288)]

def reductionPivot11177 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 1, 1, 0], ![0, -1, -1, 1, 1], ![0, 1, 1, -1, -1], ![2, 1, -1, -1, -1]]

theorem reductionSound11177 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8101).moment H =
      Integer.Sparse.eval reductionProjection11177 (momentVector H) := by
  have heq : reductionPivot11177 = (fun u v => (normalNode8101).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8101).moment H = injectiveMoment H reductionPivot11177 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8101).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8101).entries)).symm
  have hshape : reductionPivot11177 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11177 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11177 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4793, reductionProjection4805, reductionProjection5129, reductionProjection5157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11177 (0 : Fin 4)) = canonicalInput4388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11177 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4793 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11177 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4388 hH))).trans (reductionSound4793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11177 (1 : Fin 4)) = canonicalInput18352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11177 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4805 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11177 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18352 hH))).trans (reductionSound4805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11177 (2 : Fin 4)) = canonicalInput18395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11177 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5129 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11177 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18395 hH))).trans (reductionSound5129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11177 (3 : Fin 4)) = canonicalInput18400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11177 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5157 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11177 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18400 hH))).trans (reductionSound5157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8101).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11177 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8101).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11177 (j : Fin 4)))
      2 576 2880 10 ![1, 1, 1440, 1440] ![2880, 2880, 2, 2] reductionProjection11177 ![reductionProjection4793, reductionProjection4805, reductionProjection5129, reductionProjection5157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11178 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 25), (423, 360), (610, 360), (668, 720), (698, 320), (865, 720), (1055, -240), (1059, 120), (1227, 200), (1251, -20)]

def reductionPivot11178 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1]]

theorem reductionSound11178 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8122).moment H =
      Integer.Sparse.eval reductionProjection11178 (momentVector H) := by
  have heq : reductionPivot11178 = (fun u v => (normalNode8122).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8122).moment H = injectiveMoment H reductionPivot11178 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8122).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11178 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11178 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 360, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11178 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2743, oldProjection2013, oldProjection1994, oldProjection1997] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11178 (0 : Fin 4)) = canonicalInput20626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11178 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2743 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11178 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20626 hH))).trans (oldProjectionSound2743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11178 (1 : Fin 4)) = canonicalInput15936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11178 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11178 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15936 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11178 (2 : Fin 4)) = canonicalInput15660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11178 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1994 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11178 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15660 hH))).trans (oldProjectionSound1994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11178 (3 : Fin 4)) = canonicalInput15647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11178 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1997 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11178 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15647 hH))).trans (oldProjectionSound1997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8122).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11178 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8122).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11178 (j : Fin 4)))
      2 1440 1440 2 ![1440, 144, 360, 1440] ![1, 10, 4, 1] reductionProjection11178 ![oldProjection2743, oldProjection2013, oldProjection1994, oldProjection1997]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11179 : Integer.Sparse (Fin 1613) := [(0, 53), (94, 50), (610, 1440), (617, 720), (668, 720), (698, 320), (957, 720), (1055, -480), (1227, 640), (1251, -355)]

def reductionPivot11179 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound11179 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8110).moment H =
      Integer.Sparse.eval reductionProjection11179 (momentVector H) := by
  have heq : reductionPivot11179 = (fun u v => (normalNode8110).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8110).moment H = injectiveMoment H reductionPivot11179 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8110).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11179 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11179 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 288, 360, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11179 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3580, oldProjection2630, oldProjection1994, oldProjection2057] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11179 (0 : Fin 4)) = canonicalInput17797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11179 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11179 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17797 hH))).trans (reductionSound3580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11179 (1 : Fin 4)) = canonicalInput15695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11179 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2630 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11179 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15695 hH))).trans (oldProjectionSound2630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11179 (2 : Fin 4)) = canonicalInput15660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11179 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1994 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11179 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15660 hH))).trans (oldProjectionSound1994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11179 (3 : Fin 4)) = canonicalInput15658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11179 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11179 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15658 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8110).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11179 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8110).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11179 (j : Fin 4)))
      2 2880 2880 2 ![288, 288, 360, 1440] ![10, 10, 8, 2] reductionProjection11179 ![reductionProjection3580, oldProjection2630, oldProjection1994, oldProjection2057]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11180 : Integer.Sparse (Fin 1613) := [(0, -89), (94, -195), (241, -80), (247, -80), (423, -720), (610, -2880), (617, -1440), (668, -2160), (697, 240), (698, -2400), (865, -1440), (957, -1440), (1055, 1680), (1058, 240), (1059, -560), (1226, -160), (1227, -2800), (1251, 1210)]

def reductionPivot11180 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound11180 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8107).moment H =
      Integer.Sparse.eval reductionProjection11180 (momentVector H) := by
  have heq : reductionPivot11180 = (fun u v => (normalNode8107).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8107).moment H = injectiveMoment H reductionPivot11180 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8107).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11180 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11180 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 1440, 2880, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11180 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4864, reductionProjection11168, reductionProjection11178, reductionProjection11179, reductionProjection11161] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11180 (0 : Fin 5)) = canonicalInput17794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4864 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17794 hH))).trans (reductionSound4864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11180 (1 : Fin 5)) = canonicalInput15692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11168 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15692 hH))).trans (reductionSound11168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11180 (2 : Fin 5)) = (normalNode8122).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11178 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11180 (3 : Fin 5)) = (normalNode8110).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11179 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11180 (4 : Fin 5)) = canonicalInput15644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11161 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11180 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15644 hH))).trans (reductionSound11161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8107).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11180 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8107).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11180 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 1440, 2880, 1440] ![1, 1, 2, 1, 2] reductionProjection11180 ![reductionProjection4864, reductionProjection11168, reductionProjection11178, reductionProjection11179, reductionProjection11161]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11181 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 15), (241, 40), (698, 280), (865, 360), (1050, -120), (1055, -120), (1059, 120), (1221, -120), (1226, 40), (1227, 120), (1251, -70)]

def reductionPivot11181 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11181 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8297).moment H =
      Integer.Sparse.eval reductionProjection11181 (momentVector H) := by
  have heq : reductionPivot11181 = (fun u v => (normalNode8297).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8297).moment H = injectiveMoment H reductionPivot11181 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8297).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11181 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11181 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11181 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1008, oldProjection2583, oldProjection2805, oldProjection2013] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11181 (0 : Fin 4)) = canonicalInput20480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11181 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1008 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11181 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20480 hH))).trans (oldProjectionSound1008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11181 (1 : Fin 4)) = canonicalInput16146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11181 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11181 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16146 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11181 (2 : Fin 4)) = canonicalInput15811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11181 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2805 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11181 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15811 hH))).trans (oldProjectionSound2805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11181 (3 : Fin 4)) = canonicalInput15795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11181 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11181 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15795 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8297).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11181 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8297).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11181 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 144] ![2, 2, 2, 10] reductionProjection11181 ![oldProjection1008, oldProjection2583, oldProjection2805, oldProjection2013]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11182 : Integer.Sparse (Fin 1613) := [(0, -8), (94, -13), (241, -16), (426, -432), (602, -288), (666, -288), (698, -608), (865, -144), (890, -576), (956, -288), (1015, -144), (1016, -432), (1050, 48), (1055, 96), (1059, -160), (1221, 48), (1226, -112), (1227, -176), (1251, 151), (1389, 48)]

def reductionPivot11182 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11182 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8108).moment H =
      Integer.Sparse.eval reductionProjection11182 (momentVector H) := by
  have heq : reductionPivot11182 = (fun u v => (normalNode8108).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8108).moment H = injectiveMoment H reductionPivot11182 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8108).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11182 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11182 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2880, 2880, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11182 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5198, reductionProjection11156, reductionProjection7131, reductionProjection11181, reductionProjection7128] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11182 (0 : Fin 5)) = canonicalInput17795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5198 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17795 hH))).trans (reductionSound5198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11182 (1 : Fin 5)) = canonicalInput15693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11156 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15693 hH))).trans (reductionSound11156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11182 (2 : Fin 5)) = (normalNode8128).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7131 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7131 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7131 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11182 (3 : Fin 5)) = canonicalInput15646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11181 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15646 hH))).trans (reductionSound11181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11182 (4 : Fin 5)) = (normalNode8119).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7128 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11182 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8108).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11182 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8108).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11182 (j : Fin 5)))
      1 576 2880 5 ![288, 2880, 2880, 1440, 2880] ![10, 1, 1, 2, 1] reductionProjection11182 ![reductionProjection5198, reductionProjection11156, reductionProjection7131, reductionProjection11181, reductionProjection7128]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11183 : Integer.Sparse (Fin 1613) := [(0, 12), (94, 35), (602, 1440), (698, 880), (890, 720), (1059, 560), (1221, -240), (1226, 80), (1227, 400), (1251, -365)]

def reductionPivot11183 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]

theorem reductionSound11183 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8712).moment H =
      Integer.Sparse.eval reductionProjection11183 (momentVector H) := by
  have heq : reductionPivot11183 = (fun u v => (normalNode8712).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8712).moment H = injectiveMoment H reductionPivot11183 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8712).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11183 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11183 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11183 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1781, oldProjection2645, oldProjection2015, oldProjection1766] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11183 (0 : Fin 4)) = canonicalInput14979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11183 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1781 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11183 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14979 hH))).trans (oldProjectionSound1781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11183 (1 : Fin 4)) = canonicalInput16685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11183 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2645 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11183 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16685 hH))).trans (oldProjectionSound2645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11183 (2 : Fin 4)) = canonicalInput16751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11183 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2015 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11183 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16751 hH))).trans (oldProjectionSound2015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11183 (3 : Fin 4)) = canonicalInput16753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11183 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1766 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11183 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16753 hH))).trans (oldProjectionSound1766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8712).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11183 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8712).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11183 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 1440] ![2, 4, 2, 2] reductionProjection11183 ![oldProjection1781, oldProjection2645, oldProjection2015, oldProjection1766]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11184 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 3), (698, 32), (1059, 24), (1227, 16), (1251, -10)]

def reductionPivot11184 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2]]

theorem reductionSound11184 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8360).moment H =
      Integer.Sparse.eval reductionProjection11184 (momentVector H) := by
  have heq : reductionPivot11184 = (fun u v => (normalNode8360).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8360).moment H = injectiveMoment H reductionPivot11184 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8360).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11184 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11184 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 40, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11184 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7573, oldProjection294, oldProjection2784, oldProjection2598] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11184 (0 : Fin 4)) = canonicalInput14927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11184 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7573 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11184 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7573 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14927 hH))).trans (reductionSound7573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11184 (1 : Fin 4)) = canonicalInput15982.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((40 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11184 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection294 (momentVector H)
      have hh : (40 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11184 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (40 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15982 hH))).trans (oldProjectionSound294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11184 (2 : Fin 4)) = canonicalInput16061.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11184 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2784 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11184 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16061 hH))).trans (oldProjectionSound2784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11184 (3 : Fin 4)) = canonicalInput16064.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11184 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2598 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11184 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16064 hH))).trans (oldProjectionSound2598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8360).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11184 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8360).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11184 (j : Fin 4)))
      2 288 1440 10 ![720, 40, 720, 144] ![2, 36, 2, 10] reductionProjection11184 ![reductionProjection7573, oldProjection294, oldProjection2784, oldProjection2598]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11185 : Integer.Sparse (Fin 1613) := [(0, -13), (94, 45), (241, 80), (698, 960), (865, 720), (1050, -240), (1055, -240), (1059, 560), (1221, -240), (1227, 480), (1251, -90)]

def reductionPivot11185 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1]]

theorem reductionSound11185 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8285).moment H =
      Integer.Sparse.eval reductionProjection11185 (momentVector H) := by
  have heq : reductionPivot11185 = (fun u v => (normalNode8285).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8285).moment H = injectiveMoment H reductionPivot11185 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8285).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11185 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11185 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11185 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3630, oldProjection2734, oldProjection2013, reductionProjection3615] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11185 (0 : Fin 4)) = canonicalInput17812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11185 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3630 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11185 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17812 hH))).trans (reductionSound3630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11185 (1 : Fin 4)) = canonicalInput15902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11185 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2734 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11185 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15902 hH))).trans (oldProjectionSound2734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11185 (2 : Fin 4)) = canonicalInput15795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11185 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2013 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11185 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15795 hH))).trans (oldProjectionSound2013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11185 (3 : Fin 4)) = canonicalInput15793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11185 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3615 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11185 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15793 hH))).trans (reductionSound3615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8285).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11185 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8285).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11185 (j : Fin 4)))
      2 2880 2880 2 ![720, 720, 144, 1440] ![4, 4, 20, 2] reductionProjection11185 ![reductionProjection3630, oldProjection2734, oldProjection2013, reductionProjection3615]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11186 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 15), (698, 320), (865, 720), (869, 720), (1050, -480), (1059, 240), (1221, -720), (1227, 80), (1251, 10), (1389, -240)]

def reductionPivot11186 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]

theorem reductionSound11186 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8139).moment H =
      Integer.Sparse.eval reductionProjection11186 (momentVector H) := by
  have heq : reductionPivot11186 = (fun u v => (normalNode8139).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8139).moment H = injectiveMoment H reductionPivot11186 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8139).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11186 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11186 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11186 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2000, oldProjection1999, oldProjection1999, oldProjection2000] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11186 (0 : Fin 4)) = canonicalInput19773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11186 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2000 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11186 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19773 hH))).trans (oldProjectionSound2000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11186 (1 : Fin 4)) = canonicalInput15806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11186 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11186 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15806 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11186 (2 : Fin 4)) = canonicalInput15665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11186 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1999 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11186 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15665 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11186 (3 : Fin 4)) = canonicalInput15657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11186 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2000 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11186 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15657 hH))).trans (oldProjectionSound2000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8139).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11186 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8139).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11186 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 1440, 1440] ![1, 1, 1, 1] reductionProjection11186 ![oldProjection2000, oldProjection1999, oldProjection1999, oldProjection2000]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11187 : Integer.Sparse (Fin 1613) := [(0, -4), (94, -37), (241, -64), (426, -144), (602, -288), (666, -144), (698, -752), (865, -432), (869, -288), (890, -288), (1050, 288), (1055, 144), (1059, -416), (1221, 384), (1226, -32), (1227, -320), (1251, 155), (1389, 96)]

def reductionPivot11187 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]

theorem reductionSound11187 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8109).moment H =
      Integer.Sparse.eval reductionProjection11187 (momentVector H) := by
  have heq : reductionPivot11187 = (fun u v => (normalNode8109).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8109).moment H = injectiveMoment H reductionPivot11187 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8109).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11187 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11187 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 288, 2880, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11187 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11183, reductionProjection11184, reductionProjection11185, reductionProjection11186, reductionProjection3049] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11187 (0 : Fin 5)) = canonicalInput17796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11183 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17796 hH))).trans (reductionSound11183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11187 (1 : Fin 5)) = canonicalInput15694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11184 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15694 hH))).trans (reductionSound11184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11187 (2 : Fin 5)) = canonicalInput15653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11185 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11185 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15653 hH))).trans (reductionSound11185 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11187 (3 : Fin 5)) = (normalNode8139).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11186 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11187 (4 : Fin 5)) = canonicalInput15651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3049 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11187 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15651 hH))).trans (reductionSound3049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8109).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11187 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8109).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11187 (j : Fin 5)))
      1 576 2880 5 ![2880, 288, 2880, 1440, 2880] ![1, 10, 1, 2, 1] reductionProjection11187 ![reductionProjection11183, reductionProjection11184, reductionProjection11185, reductionProjection11186, reductionProjection3049]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11188 : Integer.Sparse (Fin 1613) := [(0, -12), (94, 35), (698, 80), (1227, 320), (1251, -285), (1389, -240)]

def reductionPivot11188 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound11188 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10048).moment H =
      Integer.Sparse.eval reductionProjection11188 (momentVector H) := by
  have heq : reductionPivot11188 = (fun u v => (normalNode10048).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10048).moment H = injectiveMoment H reductionPivot11188 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10048).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11188 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11188 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11188 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4796, oldProjection2632, oldProjection1006, oldProjection2632] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11188 (0 : Fin 4)) = canonicalInput14926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11188 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4796 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11188 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14926 hH))).trans (reductionSound4796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11188 (1 : Fin 4)) = canonicalInput19809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11188 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11188 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19809 hH))).trans (oldProjectionSound2632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11188 (2 : Fin 4)) = canonicalInput19904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11188 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1006 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11188 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1006 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19904 hH))).trans (oldProjectionSound1006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11188 (3 : Fin 4)) = canonicalInput19905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11188 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11188 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19905 hH))).trans (oldProjectionSound2632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10048).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11188 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10048).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11188 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 1440] ![2, 2, 4, 2] reductionProjection11188 ![reductionProjection4796, oldProjection2632, oldProjection1006, oldProjection2632]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11189 : Integer.Sparse (Fin 1613) := [(0, 13), (94, 40), (698, 560), (700, 80), (1059, 320), (1227, 320), (1251, -325)]

def reductionPivot11189 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11189 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10072).moment H =
      Integer.Sparse.eval reductionProjection11189 (momentVector H) := by
  have heq : reductionPivot11189 = (fun u v => (normalNode10072).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10072).moment H = injectiveMoment H reductionPivot11189 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10072).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11189 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11189 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 288, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11189 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2744, oldProjection2630, oldProjection2587, reductionProjection3646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11189 (0 : Fin 4)) = canonicalInput20444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11189 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11189 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20444 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11189 (1 : Fin 4)) = canonicalInput19815.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11189 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2630 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11189 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19815 hH))).trans (oldProjectionSound2630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11189 (2 : Fin 4)) = canonicalInput19794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11189 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2587 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11189 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19794 hH))).trans (oldProjectionSound2587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11189 (3 : Fin 4)) = canonicalInput19792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11189 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3646 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11189 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19792 hH))).trans (reductionSound3646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10072).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11189 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10072).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11189 (j : Fin 4)))
      2 2880 2880 2 ![288, 288, 1440, 720] ![10, 10, 2, 4] reductionProjection11189 ![oldProjection2744, oldProjection2630, oldProjection2587, reductionProjection3646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11190 : Integer.Sparse (Fin 1613) := [(0, 5), (94, 2), (427, 144), (666, 144), (698, 192), (865, 144), (890, 288), (1055, -48), (1059, 48), (1221, -48), (1227, 128), (1251, -51), (1389, -48)]

def reductionPivot11190 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, 0, -2], ![1, 1, -1, -1, 0]]

theorem reductionSound11190 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8133).moment H =
      Integer.Sparse.eval reductionProjection11190 (momentVector H) := by
  have heq : reductionPivot11190 = (fun u v => (normalNode8133).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8133).moment H = injectiveMoment H reductionPivot11190 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8133).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11190 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11190 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11190 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2015, oldProjection2613, reductionProjection3050, oldProjection2002] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11190 (0 : Fin 4)) = canonicalInput20439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11190 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2015 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11190 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20439 hH))).trans (oldProjectionSound2015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11190 (1 : Fin 4)) = canonicalInput15913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11190 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2613 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11190 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2613 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15913 hH))).trans (oldProjectionSound2613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11190 (2 : Fin 4)) = canonicalInput15662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11190 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3050 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11190 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15662 hH))).trans (reductionSound3050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11190 (3 : Fin 4)) = canonicalInput15649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11190 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2002 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11190 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15649 hH))).trans (oldProjectionSound2002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8133).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11190 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8133).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11190 (j : Fin 4)))
      2 576 2880 10 ![1440, 1440, 1440, 720] ![2, 2, 2, 4] reductionProjection11190 ![oldProjection2015, oldProjection2613, reductionProjection3050, oldProjection2002]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11191 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 1), (666, 36), (698, 48), (957, 36), (1055, -24), (1059, 8), (1227, 64), (1251, -29), (1389, -24)]

def reductionPivot11191 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 1, -1, -1, 0]]

theorem reductionSound11191 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode8118).moment H =
      Integer.Sparse.eval reductionProjection11191 (momentVector H) := by
  have heq : reductionPivot11191 = (fun u v => (normalNode8118).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8118).moment H = injectiveMoment H reductionPivot11191 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8118).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11191 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11191 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11191 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2071, oldProjection2084, reductionProjection3050, oldProjection2057] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11191 (0 : Fin 4)) = canonicalInput17874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11191 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11191 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17874 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11191 (1 : Fin 4)) = canonicalInput15709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11191 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2084 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11191 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15709 hH))).trans (oldProjectionSound2084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11191 (2 : Fin 4)) = canonicalInput15662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11191 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3050 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11191 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15662 hH))).trans (reductionSound3050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11191 (3 : Fin 4)) = canonicalInput15658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11191 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11191 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15658 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8118).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11191 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8118).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11191 (j : Fin 4)))
      2 144 1440 20 ![1440, 720, 1440, 1440] ![1, 2, 1, 1] reductionProjection11191 ![oldProjection2071, oldProjection2084, reductionProjection3050, oldProjection2057]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11192 : Integer.Sparse (Fin 1613) := [(0, -7), (94, 45), (241, 80), (698, 400), (957, 720), (1055, -480), (1059, 80), (1227, 320), (1251, -240)]

def reductionPivot11192 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound11192 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10035).moment H =
      Integer.Sparse.eval reductionProjection11192 (momentVector H) := by
  have heq : reductionPivot11192 = (fun u v => (normalNode10035).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10035).moment H = injectiveMoment H reductionPivot11192 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10035).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11192 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11192 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11192 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2588, oldProjection2734, oldProjection2057, reductionProjection3305] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11192 (0 : Fin 4)) = canonicalInput20440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11192 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11192 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20440 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11192 (1 : Fin 4)) = canonicalInput19782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11192 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2734 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11192 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19782 hH))).trans (oldProjectionSound2734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11192 (2 : Fin 4)) = canonicalInput19774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11192 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11192 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19774 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11192 (3 : Fin 4)) = canonicalInput19772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11192 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3305 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11192 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19772 hH))).trans (reductionSound3305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10035).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11192 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10035).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11192 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 1440] ![2, 4, 2, 2] reductionProjection11192 ![oldProjection2588, oldProjection2734, oldProjection2057, reductionProjection3305]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11193 : Integer.Sparse (Fin 1613) := [(0, -99), (94, -150), (241, -80), (427, -720), (666, -1440), (698, -2960), (700, -80), (865, -720), (890, -1440), (957, -1440), (1055, 1200), (1059, -800), (1221, 240), (1227, -2880), (1251, 1685), (1389, 960)]

def reductionPivot11193 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 1, -1, -1, 0]]

theorem reductionSound11193 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8114).moment H =
      Integer.Sparse.eval reductionProjection11193 (momentVector H) := by
  have heq : reductionPivot11193 = (fun u v => (normalNode8114).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8114).moment H = injectiveMoment H reductionPivot11193 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8114).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11193 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11193 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 576, 144, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11193 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11188, reductionProjection11189, reductionProjection11190, reductionProjection11191, reductionProjection11192] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11193 (0 : Fin 5)) = canonicalInput17870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17870 hH))).trans (reductionSound11188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11193 (1 : Fin 5)) = canonicalInput15703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11189 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15703 hH))).trans (reductionSound11189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11193 (2 : Fin 5)) = (normalNode8133).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11190 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11193 (3 : Fin 5)) = (normalNode8118).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11191 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11193 (4 : Fin 5)) = canonicalInput15645.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11192 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11193 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15645 hH))).trans (reductionSound11192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8114).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11193 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8114).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11193 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 576, 144, 2880] ![1, 1, 5, 20, 1] reductionProjection11193 ![reductionProjection11188, reductionProjection11189, reductionProjection11190, reductionProjection11191, reductionProjection11192]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11194 : Integer.Sparse (Fin 1613) := [(0, 8), (94, 15), (698, 160), (1059, 40), (1227, 40), (1251, -65), (1389, -120)]

def reductionPivot11194 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]

theorem reductionSound11194 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8700).moment H =
      Integer.Sparse.eval reductionProjection11194 (momentVector H) := by
  have heq : reductionPivot11194 = (fun u v => (normalNode8700).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8700).moment H = injectiveMoment H reductionPivot11194 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8700).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11194 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11194 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 480, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11194 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3130, oldProjection711, oldProjection2584, oldProjection2645] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11194 (0 : Fin 4)) = canonicalInput14941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11194 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3130 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11194 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14941 hH))).trans (reductionSound3130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11194 (1 : Fin 4)) = canonicalInput16605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11194 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection711 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11194 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection711 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16605 hH))).trans (oldProjectionSound711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11194 (2 : Fin 4)) = canonicalInput16679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11194 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2584 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11194 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16679 hH))).trans (oldProjectionSound2584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11194 (3 : Fin 4)) = canonicalInput16685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11194 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2645 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11194 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16685 hH))).trans (oldProjectionSound2645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8700).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11194 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8700).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11194 (j : Fin 4)))
      2 1440 1440 2 ![1440, 480, 1440, 720] ![1, 3, 1, 2] reductionProjection11194 ![reductionProjection3130, oldProjection711, oldProjection2584, oldProjection2645]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11195 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5), (698, 560), (1016, 720), (1059, 240), (1227, 240), (1251, -200)]

def reductionPivot11195 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]

theorem reductionSound11195 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8704).moment H =
      Integer.Sparse.eval reductionProjection11195 (momentVector H) := by
  have heq : reductionPivot11195 = (fun u v => (normalNode8704).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8704).moment H = injectiveMoment H reductionPivot11195 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8704).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11195 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11195 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11195 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2761, oldProjection2725, oldProjection2073, oldProjection2744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11195 (0 : Fin 4)) = canonicalInput14951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11195 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11195 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14951 hH))).trans (oldProjectionSound2761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11195 (1 : Fin 4)) = canonicalInput16617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11195 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11195 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16617 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11195 (2 : Fin 4)) = canonicalInput16695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11195 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2073 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11195 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16695 hH))).trans (oldProjectionSound2073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11195 (3 : Fin 4)) = canonicalInput16701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11195 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11195 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16701 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8704).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11195 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8704).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11195 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 288] ![4, 2, 2, 10] reductionProjection11195 ![oldProjection2761, oldProjection2725, oldProjection2073, oldProjection2744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11196 : Integer.Sparse (Fin 1613) := [(0, 19), (94, 20), (241, 40), (698, 320), (956, 360), (1055, -240), (1059, 80), (1227, 240), (1251, -215)]

def reductionPivot11196 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]

theorem reductionSound11196 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8685).moment H =
      Integer.Sparse.eval reductionProjection11196 (momentVector H) := by
  have heq : reductionPivot11196 = (fun u v => (normalNode8685).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8685).moment H = injectiveMoment H reductionPivot11196 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8685).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11196 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11196 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11196 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2828, oldProjection2056, oldProjection2588, oldProjection2724] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11196 (0 : Fin 4)) = canonicalInput14851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11196 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2828 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11196 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14851 hH))).trans (oldProjectionSound2828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11196 (1 : Fin 4)) = canonicalInput16519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11196 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2056 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11196 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16519 hH))).trans (oldProjectionSound2056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11196 (2 : Fin 4)) = canonicalInput16568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11196 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11196 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16568 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11196 (3 : Fin 4)) = canonicalInput16570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11196 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11196 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16570 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8685).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11196 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8685).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11196 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 1440, 1440] ![1, 1, 1, 1] reductionProjection11196 ![oldProjection2828, oldProjection2056, oldProjection2588, oldProjection2724]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11197 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 8), (698, 128), (869, 144), (956, 144), (957, 288), (1055, -192), (1059, 16), (1227, 144), (1251, -87)]

def reductionPivot11197 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound11197 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8140).moment H =
      Integer.Sparse.eval reductionProjection11197 (momentVector H) := by
  have heq : reductionPivot11197 = (fun u v => (normalNode8140).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8140).moment H = injectiveMoment H reductionPivot11197 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8140).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11197 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11197 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11197 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2057, oldProjection2055, oldProjection2056, oldProjection2057] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11197 (0 : Fin 4)) = canonicalInput19774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11197 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11197 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19774 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11197 (1 : Fin 4)) = canonicalInput15809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11197 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2055 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11197 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15809 hH))).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11197 (2 : Fin 4)) = canonicalInput15666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11197 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2056 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11197 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15666 hH))).trans (oldProjectionSound2056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11197 (3 : Fin 4)) = canonicalInput15658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11197 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11197 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15658 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8140).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11197 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8140).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11197 (j : Fin 4)))
      2 576 2880 10 ![1440, 144, 1440, 1440] ![2, 20, 2, 2] reductionProjection11197 ![oldProjection2057, oldProjection2055, oldProjection2056, oldProjection2057]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11198 : Integer.Sparse (Fin 1613) := [(0, -99), (94, -160), (241, -320), (426, -720), (666, -720), (698, -3120), (869, -720), (890, -720), (956, -1440), (957, -1440), (1016, -720), (1050, 240), (1055, 1920), (1059, -800), (1226, -80), (1227, -1920), (1251, 1435), (1389, 240)]

def reductionPivot11198 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]

theorem reductionSound11198 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8115).moment H =
      Integer.Sparse.eval reductionProjection11198 (momentVector H) := by
  have heq : reductionPivot11198 = (fun u v => (normalNode8115).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8115).moment H = injectiveMoment H reductionPivot11198 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8115).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11198 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11198 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 1440, 576, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11198 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11194, reductionProjection11195, reductionProjection11196, reductionProjection11197, reductionProjection3049] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11198 (0 : Fin 5)) = canonicalInput17871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11194 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17871 hH))).trans (reductionSound11194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11198 (1 : Fin 5)) = canonicalInput15706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11195 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15706 hH))).trans (reductionSound11195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11198 (2 : Fin 5)) = canonicalInput15654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11196 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15654 hH))).trans (reductionSound11196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11198 (3 : Fin 5)) = (normalNode8140).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11197 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11198 (4 : Fin 5)) = canonicalInput15651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3049 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11198 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15651 hH))).trans (reductionSound3049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8115).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11198 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8115).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11198 (j : Fin 5)))
      1 2880 2880 1 ![1440, 2880, 1440, 576, 2880] ![2, 1, 2, 5, 1] reductionProjection11198 ![reductionProjection11194, reductionProjection11195, reductionProjection11196, reductionProjection11197, reductionProjection3049]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11199 : Integer.Sparse (Fin 1613) := [(0, 12), (94, 45), (698, 560), (1059, 320), (1221, -240), (1227, 480), (1251, -115), (1389, -240)]

def reductionPivot11199 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11199 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8708).moment H =
      Integer.Sparse.eval reductionProjection11199 (momentVector H) := by
  have heq : reductionPivot11199 = (fun u v => (normalNode8708).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8708).moment H = injectiveMoment H reductionPivot11199 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8708).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11199 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11199 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11199 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3212, oldProjection2632, oldProjection2743, oldProjection2586] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11199 (0 : Fin 4)) = canonicalInput14966.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11199 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3212 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11199 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14966 hH))).trans (reductionSound3212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11199 (1 : Fin 4)) = canonicalInput16640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11199 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11199 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16640 hH))).trans (oldProjectionSound2632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11199 (2 : Fin 4)) = canonicalInput16724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11199 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2743 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11199 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16724 hH))).trans (oldProjectionSound2743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11199 (3 : Fin 4)) = canonicalInput16727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11199 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11199 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16727 hH))).trans (oldProjectionSound2586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8708).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11199 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8708).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11199 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 1440] ![2, 2, 2, 2] reductionProjection11199 ![reductionProjection3212, oldProjection2632, oldProjection2743, oldProjection2586]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

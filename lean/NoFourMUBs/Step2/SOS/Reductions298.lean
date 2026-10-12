import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical006
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical112
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical157
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical185
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical187
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions002
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions263
import NoFourMUBs.Step2.SOS.Reductions266
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions273
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions297
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical102
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical135
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical137
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical163
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical164
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical165
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical169
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical205
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical226
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical274
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical316
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9536 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 40), (20, -5), (94, -40), (108, -160), (247, -240), (694, 480), (1047, 240), (1055, 240), (1251, -55), (1319, 720), (1388, 240)]

def reductionPivot9536 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound9536 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5750).moment H =
      Integer.Sparse.eval reductionProjection9536 (momentVector H) := by
  have heq : reductionPivot9536 = (fun u v => (normalNode5750).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5750).moment H = injectiveMoment H reductionPivot9536 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5750).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9536 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9536 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9536 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection761, oldProjection931, oldProjection790, oldProjection930] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9536 (0 : Fin 4)) = canonicalInput9695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9536 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9536 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9695 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9536 (1 : Fin 4)) = canonicalInput11812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9536 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection931 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9536 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11812 hH))).trans (oldProjectionSound931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9536 (2 : Fin 4)) = canonicalInput11834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9536 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9536 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11834 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9536 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5227 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9536 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection930 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9536 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5227 hH))).trans (oldProjectionSound930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5750).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9536 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5750).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9536 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 3, 3] ![2, 4, 480, 480] reductionProjection9536 ![oldProjection761, oldProjection931, oldProjection790, oldProjection930]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9537 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -60), (20, 5), (94, 45), (108, 120), (158, 360), (205, 180), (247, 140), (694, -360), (918, 360), (1047, -120), (1055, -120), (1251, 60), (1319, -480), (1388, -120)]

def reductionPivot9537 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -3, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]

theorem reductionSound9537 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode5746).moment H =
      Integer.Sparse.eval reductionProjection9537 (momentVector H) := by
  have heq : reductionPivot9537 = (fun u v => (normalNode5746).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5746).moment H = injectiveMoment H reductionPivot9537 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5746).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9537 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9537 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 2, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9537 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9534, reductionProjection7743, reductionProjection9535, reductionProjection9536, reductionProjection9536] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9537 (0 : Fin 5)) = canonicalInput9652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9534 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9652 hH))).trans (reductionSound9534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9537 (1 : Fin 5)) = canonicalInput11808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7743 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7743 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11808 hH))).trans (reductionSound7743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9537 (2 : Fin 5)) = (normalNode5747).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9535 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9535 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9537 (3 : Fin 5)) = (normalNode5750).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9536 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9537 (4 : Fin 5)) = canonicalInput11810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9536 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9537 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11810 hH))).trans (reductionSound9536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5746).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9537 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5746).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9537 (j : Fin 5)))
      1 360 1440 4 ![720, 2, 720, 1440, 1440] ![2, 720, 2, 1, 1] reductionProjection9537 ![reductionProjection9534, reductionProjection7743, reductionProjection9535, reductionProjection9536, reductionProjection9536]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9538 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -200), (20, 15), (93, 180), (94, 80), (104, 80), (108, 320), (153, 720), (241, 80), (247, 480), (690, -240), (694, -1680), (698, 80), (1047, -960), (1055, -960), (1058, -480), (1060, -240), (1227, 80), (1250, 240), (1251, -20), (1319, -1440), (1388, -480)]

def reductionPivot9538 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound9538 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5748).moment H =
      Integer.Sparse.eval reductionProjection9538 (momentVector H) := by
  have heq : reductionPivot9538 = (fun u v => (normalNode5748).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5748).moment H = injectiveMoment H reductionPivot9538 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5748).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9538 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9538 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9538 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8433, reductionProjection521, reductionProjection521, oldProjection2288, oldProjection2329] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9538 (0 : Fin 5)) = canonicalInput9687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8433 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8433 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9687 hH))).trans (reductionSound8433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9538 (1 : Fin 5)) = (normalNode5752).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection521 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9538 (2 : Fin 5)) = canonicalInput11829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection521 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11829 hH))).trans (reductionSound521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9538 (3 : Fin 5)) = canonicalInput11831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2288 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11831 hH))).trans (oldProjectionSound2288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9538 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2329⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2329 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9538 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5748).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9538 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5748).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9538 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection9538 ![reductionProjection8433, reductionProjection521, reductionProjection521, oldProjection2288, oldProjection2329]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9539 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 80), (20, -5), (93, -120), (94, 20), (108, -80), (1047, 480), (1058, 240), (1060, 240), (1250, -60), (1319, 240)]

def reductionPivot9539 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound9539 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5749).moment H =
      Integer.Sparse.eval reductionProjection9539 (momentVector H) := by
  have heq : reductionPivot9539 = (fun u v => (normalNode5749).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5749).moment H = injectiveMoment H reductionPivot9539 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5749).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9539 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9539 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9539 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection511, oldProjection1024, oldProjection1196, oldProjection1195] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9539 (0 : Fin 4)) = canonicalInput9694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9539 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection511 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9539 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9694 hH))).trans (reductionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9539 (1 : Fin 4)) = canonicalInput11811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9539 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9539 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11811 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9539 (2 : Fin 4)) = canonicalInput11833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9539 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1196 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9539 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11833 hH))).trans (oldProjectionSound1196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9539 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5226 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9539 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9539 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5226 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5749).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9539 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5749).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9539 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 3, 720] ![10, 10, 480, 2] reductionProjection9539 ![reductionProjection511, oldProjection1024, oldProjection1196, oldProjection1195]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9540 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 80), (20, -15), (33, 240), (93, -60), (94, -20), (236, 240), (694, 480), (1047, 240), (1084, -720), (1251, -30)]

def reductionPivot9540 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -3, 3], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound9540 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5754).moment H =
      Integer.Sparse.eval reductionProjection9540 (momentVector H) := by
  have heq : reductionPivot9540 = (fun u v => (normalNode5754).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5754).moment H = injectiveMoment H reductionPivot9540 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5754).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9540 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9540 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9540 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6551, oldProjection1024, reductionProjection6704, oldProjection993] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9540 (0 : Fin 4)) = canonicalInput11794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9540 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6551 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9540 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11794 hH))).trans (reductionSound6551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9540 (1 : Fin 4)) = canonicalInput11811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9540 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9540 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11811 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9540 (2 : Fin 4)) = canonicalInput11814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9540 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6704 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9540 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11814 hH))).trans (reductionSound6704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9540 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5219 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9540 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection993 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9540 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5219 hH))).trans (oldProjectionSound993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5754).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9540 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5754).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9540 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 1, 720] ![10, 10, 1440, 2] reductionProjection9540 ![reductionProjection6551, oldProjection1024, reductionProjection6704, oldProjection993]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9541 : Integer.Sparse (Fin 1613) := [(4, 1), (17, 12), (20, -1), (93, 12), (94, -1), (1251, 1), (1290, -48)]

def reductionPivot9541 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-3, -1, 1, 3], ![4, 2, -2, -4]]

theorem reductionSound9541 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9659).moment H =
      Integer.Sparse.eval reductionProjection9541 (momentVector H) := by
  have heq : reductionPivot9541 = (fun u v => (normalNode9659).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9659).moment H = injectiveMoment H reductionPivot9541 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9659).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9659).entries)).symm
  have hshape : reductionPivot9541 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9541 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9541 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection6517, reductionProjection6576, oldProjection277] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9541 (0 : Fin 3)) = canonicalInput17988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9541 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9541 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17988 hH))).trans (reductionSound6517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9541 (1 : Fin 3)) = canonicalInput26655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9541 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6576 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9541 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26655 hH))).trans (reductionSound6576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9541 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8798 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9541 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection277 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9541 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8798 hH))).trans (oldProjectionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9659).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9541 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9659).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9541 (j : Fin 3)))
      3 144 144 3 ![1, 48, 48] ![144, 3, 3] reductionProjection9541 ![reductionProjection6517, reductionProjection6576, oldProjection277]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9542 : Integer.Sparse (Fin 1613) := [(20, 1), (93, 12), (94, -2), (1251, 1), (1292, -48), (1321, -48)]

def reductionPivot9542 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 1, -1], ![-3, -1, 1, 3], ![3, 2, -2, -3]]

theorem reductionSound9542 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10960).moment H =
      Integer.Sparse.eval reductionProjection9542 (momentVector H) := by
  have heq : reductionPivot9542 = (fun u v => (normalNode10960).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10960).moment H = injectiveMoment H reductionPivot9542 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10960).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10960).entries)).symm
  have hshape : reductionPivot9542 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9542 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9542 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection277, reductionProjection6841, oldProjection260] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9542 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8798 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9542 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection277 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9542 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8798 hH))).trans (oldProjectionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9542 (1 : Fin 3)) = canonicalInput33332.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9542 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9542 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33332 hH))).trans (reductionSound6841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9542 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10118 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9542 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection260 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9542 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10118 hH))).trans (oldProjectionSound260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10960).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9542 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10960).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9542 (j : Fin 3)))
      3 144 144 3 ![48, 1, 1] ![3, 144, 144] reductionProjection9542 ![oldProjection277, reductionProjection6841, oldProjection260]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9543 : Integer.Sparse (Fin 1613) := [(0, 1), (4, -5), (17, -60), (20, 10), (94, -10), (1250, -60), (1251, 10), (1290, 240), (1292, 240), (1319, 240), (1321, 240)]

def reductionPivot9543 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound9543 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5757).moment H =
      Integer.Sparse.eval reductionProjection9543 (momentVector H) := by
  have heq : reductionPivot9543 = (fun u v => (normalNode5757).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5757).moment H = injectiveMoment H reductionPivot9543 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5757).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9543 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9543 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9543 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9541, oldProjection277, reductionProjection9542, oldProjection1195] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9543 (0 : Fin 4)) = canonicalInput11801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9543 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9541 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9543 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11801 hH))).trans (reductionSound9541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9543 (1 : Fin 4)) = canonicalInput11827.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9543 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection277 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9543 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11827 hH))).trans (oldProjectionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9543 (2 : Fin 4)) = canonicalInput11835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9543 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9542 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9543 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9542 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11835 hH))).trans (reductionSound9542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9543 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5226 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9543 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9543 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5226 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5757).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9543 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5757).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9543 (j : Fin 4)))
      2 1440 1440 2 ![144, 48, 144, 720] ![10, 30, 10, 2] reductionProjection9543 ![reductionProjection9541, oldProjection277, reductionProjection9542, oldProjection1195]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9544 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -60), (4, 5), (17, 60), (19, -220), (20, 15), (33, -480), (93, 180), (94, 60), (108, 160), (236, -240), (247, 80), (694, -720), (698, 80), (704, 80), (1042, -240), (1047, -720), (1055, -240), (1058, -480), (1060, -480), (1084, 720), (1250, 120), (1251, 50), (1290, -240), (1292, -240), (1319, -480), (1321, -240)]

def reductionPivot9544 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -3, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound9544 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5751).moment H =
      Integer.Sparse.eval reductionProjection9544 (momentVector H) := by
  have heq : reductionPivot9544 = (fun u v => (normalNode5751).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5751).moment H = injectiveMoment H reductionPivot9544 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5751).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9544 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9544 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 6, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9544 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2854, reductionProjection9539, reductionProjection9540, reductionProjection9275, reductionProjection9543] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9544 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4338 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2854 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4338 hH))).trans (oldProjectionSound2854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9544 (1 : Fin 5)) = (normalNode5749).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9539 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9544 (2 : Fin 5)) = canonicalInput11820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9540 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11820 hH))).trans (reductionSound9540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9544 (3 : Fin 5)) = canonicalInput11821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9275 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11821 hH))).trans (reductionSound9275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9544 (4 : Fin 5)) = (normalNode5757).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9543 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9544 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5751).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9544 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5751).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9544 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 6, 1440] ![1, 1, 1, 240, 1] reductionProjection9544 ![oldProjection2854, reductionProjection9539, reductionProjection9540, reductionProjection9275, reductionProjection9543]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9545 : Integer.Sparse (Fin 1613) := [(17, -1), (93, -1)]

def reductionPivot9545 : Matrix (Fin 3) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, -2, 2, 3], ![4, 2, -2, -4]]

theorem reductionSound9545 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * (normalNode6283).moment H =
      Integer.Sparse.eval reductionProjection9545 (momentVector H) := by
  have heq : reductionPivot9545 = (fun u v => (normalNode6283).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation3 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6283).moment H = injectiveMoment H reductionPivot9545 := by
    have hh := congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6283).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation3)).trans (injectiveMoment_transpose H (normalNode6283).entries)).symm
  have hshape : reductionPivot9545 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 2 < 6)
    hH reductionPivot9545 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 2,
      ((![1, 1] : Fin 2 → ℤ) j : ℝ) * (fun j : Fin 2 => injectiveMoment H (mergeFirst reductionPivot9545 (j : Fin 2))) j =
        Integer.Sparse.eval (![reductionProjection66, oldProjection23] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9545 (0 : Fin 2)) = canonicalInput4.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9545 (0 : Fin 2)) =
        Integer.Sparse.eval reductionProjection66 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9545 (0 : Fin 2)) =
          Integer.Sparse.eval reductionProjection66 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 2) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4 hH))).trans (reductionSound66 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9545 (1 : Fin 2)) = OAI.MUB6.Certificate.PairSemantics.raw217 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9545 (1 : Fin 2)) =
        Integer.Sparse.eval oldProjection23 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9545 (1 : Fin 2)) =
          Integer.Sparse.eval oldProjection23 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 2) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical217 hH))).trans (oldProjectionSound23 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (4 : ℝ) * (normalNode6283).moment H + ∑ j : Fin 2, (fun j : Fin 2 => injectiveMoment H (mergeFirst reductionPivot9545 (j : Fin 2))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6283).moment H) (fun j : Fin 2 => injectiveMoment H (mergeFirst reductionPivot9545 (j : Fin 2)))
      4 4 4 4 ![1, 1] ![4, 4] reductionProjection9545 ![reductionProjection66, oldProjection23]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9546 : Integer.Sparse (Fin 1613) := [(17, 1), (93, 2), (233, -4), (1250, 1)]

def reductionPivot9546 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![-2, -2, 2, 2], ![4, 2, -2, -4]]

theorem reductionSound9546 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode7438).moment H =
      Integer.Sparse.eval reductionProjection9546 (momentVector H) := by
  have heq : reductionPivot9546 = (fun u v => (normalNode7438).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7438).moment H = injectiveMoment H reductionPivot9546 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7438).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7438).entries)).symm
  have hshape : reductionPivot9546 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9546 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 4, 4] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9546 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1719, reductionProjection9545, oldProjection264] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9546 (0 : Fin 3)) = canonicalInput7169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9546 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9546 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7169 hH))).trans (reductionSound1719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9546 (1 : Fin 3)) = canonicalInput20699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9546 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9545 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9546 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9545 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20699 hH))).trans (reductionSound9545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9546 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7251 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9546 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection264 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9546 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7251 hH))).trans (oldProjectionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7438).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9546 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7438).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9546 (j : Fin 3)))
      3 12 12 3 ![1, 4, 4] ![12, 3, 3] reductionProjection9546 ![reductionProjection1719, reductionProjection9545, oldProjection264]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9547 : Integer.Sparse (Fin 1613) := [(0, 1), (17, -60), (93, 180), (94, -5), (233, 240), (690, 240), (1250, 180), (1251, 10)]

def reductionPivot9547 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 2, -2]]

theorem reductionSound9547 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5755).moment H =
      Integer.Sparse.eval reductionProjection9547 (momentVector H) := by
  have heq : reductionPivot9547 = (fun u v => (normalNode5755).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5755).moment H = injectiveMoment H reductionPivot9547 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5755).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9547 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9547 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![12, 4, 4, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9547 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9546, oldProjection264, oldProjection264, oldProjection955] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9547 (0 : Fin 4)) = canonicalInput11799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9547 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9546 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9547 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11799 hH))).trans (reductionSound9546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9547 (1 : Fin 4)) = canonicalInput11825.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9547 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection264 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9547 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11825 hH))).trans (oldProjectionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9547 (2 : Fin 4)) = canonicalInput11830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9547 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection264 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9547 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11830 hH))).trans (oldProjectionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9547 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5223 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9547 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection955 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9547 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5223 hH))).trans (oldProjectionSound955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5755).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9547 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5755).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9547 (j : Fin 4)))
      2 1440 1440 2 ![12, 4, 4, 720] ![120, 360, 360, 2] reductionProjection9547 ![reductionProjection9546, oldProjection264, oldProjection264, oldProjection955]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9548 : Integer.Sparse (Fin 1613) := [(32, -1), (233, -1), (690, -1)]

def reductionPivot9548 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 0, 2], ![-1, -2, 2, 1], ![4, 2, -2, -4]]

theorem reductionSound9548 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6466).moment H =
      Integer.Sparse.eval reductionProjection9548 (momentVector H) := by
  have heq : reductionPivot9548 = (fun u v => (normalNode6466).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6466).moment H = injectiveMoment H reductionPivot9548 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6466).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6466).entries)).symm
  have hshape : reductionPivot9548 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9548 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9548 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection232, reductionProjection1719, oldProjection162] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9548 (0 : Fin 3)) = canonicalInput415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9548 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection232 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9548 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound415 hH))).trans (reductionSound232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9548 (1 : Fin 3)) = canonicalInput7169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9548 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1719 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9548 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7169 hH))).trans (reductionSound1719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9548 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3289 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9548 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection162 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9548 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3289 hH))).trans (oldProjectionSound162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6466).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9548 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6466).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9548 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9548 ![reductionProjection232, reductionProjection1719, oldProjection162]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9549 : Integer.Sparse (Fin 1613) := [(0, 1), (32, 240), (93, -60), (94, -5), (233, 240), (1044, 240), (1050, 240), (1250, -120), (1251, 10)]

def reductionPivot9549 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -2, 1, -1]]

theorem reductionSound9549 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5756).moment H =
      Integer.Sparse.eval reductionProjection9549 (momentVector H) := by
  have heq : reductionPivot9549 = (fun u v => (normalNode5756).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5756).moment H = injectiveMoment H reductionPivot9549 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5756).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9549 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9549 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9549 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9548, oldProjection162, oldProjection955, oldProjection789] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9549 (0 : Fin 4)) = canonicalInput11800.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9549 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9548 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9549 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11800 hH))).trans (reductionSound9548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9549 (1 : Fin 4)) = canonicalInput11826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9549 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection162 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9549 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11826 hH))).trans (oldProjectionSound162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9549 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5223 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9549 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection955 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9549 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5223 hH))).trans (oldProjectionSound955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9549 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5225 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9549 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection789 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9549 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5225 hH))).trans (oldProjectionSound789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5756).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9549 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5756).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9549 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 720, 3] ![480, 1440, 2, 480] reductionProjection9549 ![reductionProjection9548, oldProjection162, oldProjection955, oldProjection789]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9550 : Integer.Sparse (Fin 1613) := [(225, -1), (1290, -1), (1319, -1)]

def reductionPivot9550 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![-2, -1, 1, 2], ![4, 2, -2, -4]]

theorem reductionSound9550 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7375).moment H =
      Integer.Sparse.eval reductionProjection9550 (momentVector H) := by
  have heq : reductionPivot9550 = (fun u v => (normalNode7375).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7375).moment H = injectiveMoment H reductionPivot9550 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7375).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7375).entries)).symm
  have hshape : reductionPivot9550 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9550 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9550 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1688, reductionProjection6517, oldProjection258] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9550 (0 : Fin 3)) = canonicalInput4644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9550 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1688 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9550 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1688 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4644 hH))).trans (reductionSound1688 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9550 (1 : Fin 3)) = canonicalInput17988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9550 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9550 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17988 hH))).trans (reductionSound6517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9550 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6572 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9550 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9550 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6572 hH))).trans (oldProjectionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7375).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9550 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7375).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9550 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9550 ![reductionProjection1688, reductionProjection6517, oldProjection258]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9551 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (93, -60), (94, 5), (225, 240), (1250, -60), (1251, 5), (1290, 240), (1319, 240), (1388, 240)]

def reductionPivot9551 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound9551 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5758).moment H =
      Integer.Sparse.eval reductionProjection9551 (momentVector H) := by
  have heq : reductionPivot9551 = (fun u v => (normalNode5758).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5758).moment H = injectiveMoment H reductionPivot9551 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5758).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9551 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9551 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9551 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9550, oldProjection258, oldProjection1195, oldProjection930] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9551 (0 : Fin 4)) = canonicalInput11802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9551 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9550 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9551 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11802 hH))).trans (reductionSound9550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9551 (1 : Fin 4)) = canonicalInput11828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9551 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9551 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11828 hH))).trans (oldProjectionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9551 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5226 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9551 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9551 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5226 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9551 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5227 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9551 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection930 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9551 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5227 hH))).trans (oldProjectionSound930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5758).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9551 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5758).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9551 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 720, 3] ![480, 1440, 2, 480] reductionProjection9551 ![reductionProjection9550, oldProjection258, oldProjection1195, oldProjection930]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9552 : Integer.Sparse (Fin 1613) := [(0, 1), (93, -20), (94, -5), (690, 240), (1044, 160), (1050, 240), (1250, -60), (1251, -10)]

def reductionPivot9552 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 0, 0]]

theorem reductionSound9552 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode5759).moment H =
      Integer.Sparse.eval reductionProjection9552 (momentVector H) := by
  have heq : reductionPivot9552 = (fun u v => (normalNode5759).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5759).moment H = injectiveMoment H reductionPivot9552 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5759).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9552 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9552 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 3, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9552 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1027, oldProjection789, oldProjection789, oldProjection955] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9552 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5289 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9552 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1027 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9552 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1027 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5289 hH))).trans (oldProjectionSound1027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9552 (1 : Fin 4)) = canonicalInput11836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9552 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection789 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9552 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11836 hH))).trans (oldProjectionSound789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9552 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5225 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9552 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection789 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9552 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5225 hH))).trans (oldProjectionSound789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9552 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5223 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9552 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection955 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9552 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5223 hH))).trans (oldProjectionSound955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5759).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9552 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5759).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9552 (j : Fin 4)))
      2 480 1440 6 ![360, 3, 3, 720] ![4, 480, 480, 2] reductionProjection9552 ![oldProjection1027, oldProjection789, oldProjection789, oldProjection955]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9553 : Integer.Sparse (Fin 1613) := [(72, -1), (1039, -1), (1044, -1)]

def reductionPivot9553 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 0, 0, 3], ![1, -2, 2, -1], ![3, 2, -2, -3]]

theorem reductionSound9553 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6097).moment H =
      Integer.Sparse.eval reductionProjection9553 (momentVector H) := by
  have heq : reductionPivot9553 = (fun u v => (normalNode6097).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6097).moment H = injectiveMoment H reductionPivot9553 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6097).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6097).entries)).symm
  have hshape : reductionPivot9553 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9553 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9553 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection6981, oldProjection192, oldProjection101] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9553 (0 : Fin 3)) = canonicalInput7.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9553 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6981 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9553 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7 hH))).trans (reductionSound6981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9553 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw337 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9553 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection192 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9553 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical337 hH))).trans (oldProjectionSound192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9553 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw338 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9553 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9553 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical338 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6097).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9553 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6097).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9553 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9553 ![reductionProjection6981, oldProjection192, oldProjection101]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9554 : Integer.Sparse (Fin 1613) := [(72, 2), (152, -3), (690, 1), (1039, 1), (1044, 2), (1050, 2), (1221, 1)]

def reductionPivot9554 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -2, -1, 1]]

theorem reductionSound9554 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5760).moment H =
      Integer.Sparse.eval reductionProjection9554 (momentVector H) := by
  have heq : reductionPivot9554 = (fun u v => (normalNode5760).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5760).moment H = injectiveMoment H reductionPivot9554 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5760).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9554 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9554 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9554 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection825, reductionProjection1150, reductionProjection9553, oldProjection789] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9554 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5292 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9554 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9554 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5292 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9554 (1 : Fin 4)) = canonicalInput11837.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9554 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1150 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9554 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11837 hH))).trans (reductionSound1150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9554 (2 : Fin 4)) = canonicalInput11832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9554 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9553 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9554 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11832 hH))).trans (reductionSound9553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9554 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5225 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9554 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection789 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9554 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5225 hH))).trans (oldProjectionSound789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5760).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9554 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5760).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9554 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection9554 ![oldProjection825, reductionProjection1150, reductionProjection9553, oldProjection789]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9555 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (93, -60), (94, 5), (1079, -360), (1250, -60), (1251, 5), (1292, 120), (1319, 120), (1321, 240), (1389, 120)]

def reductionPivot9555 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -3, 3], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]

theorem reductionSound9555 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5761).moment H =
      Integer.Sparse.eval reductionProjection9555 (momentVector H) := by
  have heq : reductionPivot9555 = (fun u v => (normalNode5761).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5761).moment H = injectiveMoment H reductionPivot9555 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5761).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9555 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9555 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9555 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1331, reductionProjection6699, oldProjection1195, reductionProjection9542] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9555 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5293 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9555 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9555 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5293 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9555 (1 : Fin 4)) = canonicalInput11839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9555 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6699 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9555 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11839 hH))).trans (reductionSound6699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9555 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5226 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9555 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9555 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5226 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9555 (3 : Fin 4)) = canonicalInput11835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9555 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9542 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9555 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9542 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11835 hH))).trans (reductionSound9542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5761).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9555 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5761).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9555 (j : Fin 4)))
      2 720 720 2 ![720, 1, 720, 144] ![1, 720, 1, 5] reductionProjection9555 ![oldProjection1331, reductionProjection6699, oldProjection1195, reductionProjection9542]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9556 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -45), (238, 240), (240, 240), (241, -80), (247, -80), (698, -240), (700, -80), (704, -80), (1058, 240), (1059, -80), (1249, -720), (1251, -40), (1321, 240)]

def reductionPivot9556 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 2, -2, 2], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound9556 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5762).moment H =
      Integer.Sparse.eval reductionProjection9556 (momentVector H) := by
  have heq : reductionPivot9556 = (fun u v => (normalNode5762).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5762).moment H = injectiveMoment H reductionPivot9556 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5762).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9556 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9556 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9556 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1050, oldProjection1255, oldProjection714, oldProjection1274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9556 (0 : Fin 4)) = canonicalInput10077.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9556 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1050 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9556 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10077 hH))).trans (oldProjectionSound1050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9556 (1 : Fin 4)) = canonicalInput11848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9556 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1255 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9556 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11848 hH))).trans (oldProjectionSound1255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9556 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5244 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9556 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection714 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9556 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5244 hH))).trans (oldProjectionSound714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9556 (3 : Fin 4)) = canonicalInput11857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9556 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9556 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11857 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5762).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9556 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5762).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9556 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 1, 72] ![2, 160, 1440, 20] reductionProjection9556 ![oldProjection1050, oldProjection1255, oldProjection714, oldProjection1274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9557 : Integer.Sparse (Fin 1613) := [(94, -1), (240, 24), (698, -8), (704, -8), (911, -72), (1251, -1), (1252, -72), (1253, -72), (1321, 24)]

def reductionPivot9557 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 2, -2, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 0, 1, -2]]

theorem reductionSound9557 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5764).moment H =
      Integer.Sparse.eval reductionProjection9557 (momentVector H) := by
  have heq : reductionPivot9557 = (fun u v => (normalNode5764).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5764).moment H = injectiveMoment H reductionPivot9557 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5764).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9557 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9557 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9557 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1274, reductionProjection1427, oldProjection718, oldProjection610] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9557 (0 : Fin 4)) = canonicalInput23457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9557 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9557 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23457 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9557 (1 : Fin 4)) = canonicalInput11947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9557 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1427 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9557 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1427 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11947 hH))).trans (reductionSound1427 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9557 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node718⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9557 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection718 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9557 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9557 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5238 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9557 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection610 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9557 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5238 hH))).trans (oldProjectionSound610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5764).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9557 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5764).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9557 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection9557 ![oldProjection1274, reductionProjection1427, oldProjection718, oldProjection610]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9558 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -60), (20, 10), (81, -120), (94, 65), (227, -120), (229, -120), (240, -360), (243, 80), (246, 40), (682, -120), (697, -120), (698, 240), (704, 200), (911, 720), (919, 360), (920, 360), (1058, -480), (1226, 80), (1227, 40), (1250, 60), (1251, 35), (1252, 360), (1253, 360), (1321, -600), (1389, -120)]

def reductionPivot9558 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound9558 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5763).moment H =
      Integer.Sparse.eval reductionProjection9558 (momentVector H) := by
  have heq : reductionPivot9558 = (fun u v => (normalNode5763).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5763).moment H = injectiveMoment H reductionPivot9558 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5763).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9558 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9558 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 288, 720, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9558 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4445, reductionProjection1311, reductionProjection8759, oldProjection2332, reductionProjection9557] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9558 (0 : Fin 5)) = (normalNode5844).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4445 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9558 (1 : Fin 5)) = canonicalInput11859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1311 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11859 hH))).trans (reductionSound1311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9558 (2 : Fin 5)) = (normalNode5765).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8759 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8759 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8759 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9558 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2332⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2332 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9558 (4 : Fin 5)) = (normalNode5764).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9557 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9558 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9557 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9557 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5763).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9558 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5763).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9558 (j : Fin 5)))
      1 720 1440 2 ![720, 1440, 288, 720, 144] ![2, 1, 5, 2, 10] reductionProjection9558 ![reductionProjection4445, reductionProjection1311, reductionProjection8759, oldProjection2332, reductionProjection9557]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9559 : Integer.Sparse (Fin 1613) := [(0, 7), (94, -30), (682, 240), (697, 480), (698, -320), (704, -80), (1059, -80), (1221, 240), (1227, -160), (1251, 75), (1389, 480)]

def reductionPivot9559 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound9559 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5851).moment H =
      Integer.Sparse.eval reductionProjection9559 (momentVector H) := by
  have heq : reductionPivot9559 = (fun u v => (normalNode5851).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5851).moment H = injectiveMoment H reductionPivot9559 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5851).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9559 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9559 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 180, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9559 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1010, oldProjection1247, oldProjection947, oldProjection1276] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9559 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5408 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9559 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1010 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9559 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5408 hH))).trans (oldProjectionSound1010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9559 (1 : Fin 4)) = canonicalInput11993.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9559 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1247 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9559 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11993 hH))).trans (oldProjectionSound1247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9559 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5311 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9559 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9559 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5311 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9559 (3 : Fin 4)) = canonicalInput11980.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9559 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9559 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11980 hH))).trans (oldProjectionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5851).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9559 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5851).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9559 (j : Fin 4)))
      2 1440 1440 2 ![360, 180, 72, 720] ![4, 8, 20, 2] reductionProjection9559 ![oldProjection1010, oldProjection1247, oldProjection947, oldProjection1276]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9560 : Integer.Sparse (Fin 1613) := [(19, 2), (94, -1), (240, 24), (697, 24), (1124, -72), (1250, -6), (1251, -1), (1252, -72), (1257, -72)]

def reductionPivot9560 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 2, -2, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 2, -2]]

theorem reductionSound9560 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5769).moment H =
      Integer.Sparse.eval reductionProjection9560 (momentVector H) := by
  have heq : reductionPivot9560 = (fun u v => (normalNode5769).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5769).moment H = injectiveMoment H reductionPivot9560 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5769).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9560 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9560 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9560 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8584, reductionProjection1423, oldProjection718, oldProjection681] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9560 (0 : Fin 4)) = canonicalInput23459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9560 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8584 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9560 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23459 hH))).trans (reductionSound8584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9560 (1 : Fin 4)) = canonicalInput11949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9560 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1423 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9560 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11949 hH))).trans (reductionSound1423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9560 (2 : Fin 4)) = canonicalInput11858.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9560 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection718 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9560 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11858 hH))).trans (oldProjectionSound718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9560 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5242 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9560 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection681 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9560 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection681 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5242 hH))).trans (oldProjectionSound681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5769).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9560 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5769).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9560 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection9560 ![reductionProjection8584, reductionProjection1423, oldProjection718, oldProjection681]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9561 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (227, -48), (240, -48), (246, 16), (704, 16)]

def reductionPivot9561 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![-2, 2, 2, -2], ![4, -1, -4, 1]]

theorem reductionSound9561 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7420).moment H =
      Integer.Sparse.eval reductionProjection9561 (momentVector H) := by
  have heq : reductionPivot9561 = (fun u v => (normalNode7420).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7420).moment H = injectiveMoment H reductionPivot9561 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7420).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7420).entries)).symm
  have hshape : reductionPivot9561 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9561 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9561 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1693, oldProjection148, oldProjection152] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9561 (0 : Fin 3)) = canonicalInput5495.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9561 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1693 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9561 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5495 hH))).trans (reductionSound1693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9561 (1 : Fin 3)) = canonicalInput18699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9561 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection148 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9561 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18699 hH))).trans (oldProjectionSound148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9561 (2 : Fin 3)) = canonicalInput18707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9561 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection152 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9561 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18707 hH))).trans (oldProjectionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7420).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9561 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7420).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9561 (j : Fin 3)))
      3 144 144 3 ![1, 48, 1] ![144, 3, 144] reductionProjection9561 ![reductionProjection1693, oldProjection148, oldProjection152]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9562 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -2), (94, -7), (227, 48), (240, 96), (246, -16), (682, 48), (697, 48), (698, -32), (704, -48), (1250, -12), (1251, -9), (1321, 96)]

def reductionPivot9562 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, -1, -1, 2], ![1, -1, 3, -3], ![1, 0, -1, 0]]

theorem reductionSound9562 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5768).moment H =
      Integer.Sparse.eval reductionProjection9562 (momentVector H) := by
  have heq : reductionPivot9562 = (fun u v => (normalNode5768).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5768).moment H = injectiveMoment H reductionPivot9562 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5768).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9562 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9562 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9562 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection947, reductionProjection1218, reductionProjection9561, oldProjection1274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9562 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5311 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9562 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9562 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5311 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9562 (1 : Fin 4)) = canonicalInput11865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9562 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1218 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9562 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11865 hH))).trans (reductionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9562 (2 : Fin 4)) = canonicalInput11856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9562 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9561 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9562 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11856 hH))).trans (reductionSound9561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9562 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5246 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9562 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9562 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5246 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5768).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9562 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5768).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9562 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 72] ![4, 2, 2, 4] reductionProjection9562 ![oldProjection947, reductionProjection1218, reductionProjection9561, oldProjection1274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9563 : Integer.Sparse (Fin 1613) := [(0, -21), (19, -180), (20, 15), (94, 190), (227, -240), (240, -960), (246, 80), (682, -480), (697, -1200), (698, 640), (704, 400), (1059, 80), (1124, 720), (1221, -240), (1227, 240), (1250, 540), (1251, -100), (1252, 1440), (1257, 720), (1321, -960), (1389, -960)]

def reductionPivot9563 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, -2, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound9563 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5766).moment H =
      Integer.Sparse.eval reductionProjection9563 (momentVector H) := by
  have heq : reductionPivot9563 = (fun u v => (normalNode5766).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5766).moment H = injectiveMoment H reductionPivot9563 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5766).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9563 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9563 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9563 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9559, reductionProjection1470, reductionProjection9560, reductionProjection9562, reductionProjection1425] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9563 (0 : Fin 5)) = (normalNode5851).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9559 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9563 (1 : Fin 5)) = (normalNode5790).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1470 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9563 (2 : Fin 5)) = (normalNode5769).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9560 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9560 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9563 (3 : Fin 5)) = (normalNode5768).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9562 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9562 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9563 (4 : Fin 5)) = (normalNode5767).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1425 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9563 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5766).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9563 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5766).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9563 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 144, 288, 1440] ![1, 5, 10, 5, 1] reductionProjection9563 ![reductionProjection9559, reductionProjection1470, reductionProjection9560, reductionProjection9562, reductionProjection1425]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9564 : Integer.Sparse (Fin 1613) := [(10, 48), (19, -4), (20, -2), (94, -5), (227, 48), (229, 48), (240, 48), (244, -16), (246, -16), (701, -16), (704, -16), (719, -144), (1251, -3)]

def reductionPivot9564 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 2, -2, 2], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, 0, -1, 0]]

theorem reductionSound9564 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5771).moment H =
      Integer.Sparse.eval reductionProjection9564 (momentVector H) := by
  have heq : reductionPivot9564 = (fun u v => (normalNode5771).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5771).moment H = injectiveMoment H reductionPivot9564 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5771).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9564 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9564 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9564 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1024, reductionProjection7691, reductionProjection9561, reductionProjection6323] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9564 (0 : Fin 4)) = canonicalInput22633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9564 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1024 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9564 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22633 hH))).trans (reductionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9564 (1 : Fin 4)) = canonicalInput11946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9564 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7691 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9564 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7691 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11946 hH))).trans (reductionSound7691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9564 (2 : Fin 4)) = canonicalInput11856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9564 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9561 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9564 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11856 hH))).trans (reductionSound9561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9564 (3 : Fin 4)) = canonicalInput11855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9564 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6323 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9564 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6323 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11855 hH))).trans (reductionSound6323 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5771).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9564 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5771).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9564 (j : Fin 4)))
      2 288 288 2 ![48, 144, 144, 1] ![6, 2, 2, 288] reductionProjection9564 ![reductionProjection1024, reductionProjection7691, reductionProjection9561, reductionProjection6323]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9565 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (20, -10), (81, 240), (94, -45), (229, 240), (698, -160), (704, -80), (1058, 480), (1250, -60), (1251, -30), (1321, 480), (1389, 240)]

def reductionPivot9565 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]

theorem reductionSound9565 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5789).moment H =
      Integer.Sparse.eval reductionProjection9565 (momentVector H) := by
  have heq : reductionPivot9565 = (fun u v => (normalNode5789).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5789).moment H = injectiveMoment H reductionPivot9565 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5789).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9565 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9565 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9565 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1326, oldProjection1073, oldProjection728, oldProjection1331] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9565 (0 : Fin 4)) = canonicalInput9920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9565 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1326 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9565 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9920 hH))).trans (oldProjectionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9565 (1 : Fin 4)) = canonicalInput11871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9565 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9565 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11871 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9565 (2 : Fin 4)) = canonicalInput11930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9565 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection728 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9565 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11930 hH))).trans (oldProjectionSound728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9565 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5293 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9565 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9565 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5293 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5789).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9565 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5789).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9565 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 3, 720] ![2, 2, 480, 2] reductionProjection9565 ![oldProjection1326, oldProjection1073, oldProjection728, oldProjection1331]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9566 : Integer.Sparse (Fin 1613) := [(0, -21), (19, -180), (20, 25), (81, -480), (94, 85), (229, -480), (238, -480), (243, 240), (244, 80), (698, 720), (700, 320), (704, 160), (1058, -1920), (1059, 240), (1226, 160), (1250, 480), (1251, -95), (1321, -960), (1389, -480)]

def reductionPivot9566 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound9566 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5772).moment H =
      Integer.Sparse.eval reductionProjection9566 (momentVector H) := by
  have heq : reductionPivot9566 = (fun u v => (normalNode5772).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5772).moment H = injectiveMoment H reductionPivot9566 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5772).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9566 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9566 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9566 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8524, reductionProjection7741, reductionProjection1311, reductionProjection9565, reductionProjection1470] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9566 (0 : Fin 5)) = canonicalInput9787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8524 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9787 hH))).trans (reductionSound8524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9566 (1 : Fin 5)) = canonicalInput11844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7741 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7741 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11844 hH))).trans (reductionSound7741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9566 (2 : Fin 5)) = (normalNode5778).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1311 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9566 (3 : Fin 5)) = (normalNode5789).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9565 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9565 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9566 (4 : Fin 5)) = canonicalInput11861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1470 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9566 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1470 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11861 hH))).trans (reductionSound1470 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5772).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9566 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5772).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9566 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 1440, 1440, 288] ![1, 80, 1, 1, 5] reductionProjection9566 ![reductionProjection8524, reductionProjection7741, reductionProjection1311, reductionProjection9565, reductionProjection1470]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9567 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -10), (72, 480), (94, 25), (229, 240), (243, -80), (698, -80), (700, -240), (704, -80), (1058, 240), (1251, -30), (1321, 480)]

def reductionPivot9567 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 2, -2, 2], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound9567 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5792).moment H =
      Integer.Sparse.eval reductionProjection9567 (momentVector H) := by
  have heq : reductionPivot9567 = (fun u v => (normalNode5792).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5792).moment H = injectiveMoment H reductionPivot9567 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5792).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9567 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9567 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9567 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1072, oldProjection1073, oldProjection729, oldProjection1012] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9567 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4411 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9567 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1072 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9567 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4411 hH))).trans (oldProjectionSound1072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9567 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5259 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9567 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1073 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9567 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1073 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5259 hH))).trans (oldProjectionSound1073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9567 (2 : Fin 4)) = canonicalInput11941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9567 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection729 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9567 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11941 hH))).trans (oldProjectionSound729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9567 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5301 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9567 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1012 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9567 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1012 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5301 hH))).trans (oldProjectionSound1012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5792).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9567 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5792).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9567 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 72, 144] ![10, 2, 20, 10] reductionProjection9567 ![oldProjection1072, oldProjection1073, oldProjection729, oldProjection1012]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

import NoFourMUBs.Step2.SOS.Canonical102
import NoFourMUBs.Step2.SOS.Canonical103
import NoFourMUBs.Step2.SOS.Canonical104
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical152
import NoFourMUBs.Step2.SOS.Canonical153
import NoFourMUBs.Step2.SOS.Canonical154
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical158
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical383
import NoFourMUBs.Step2.SOS.Canonical384
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions206
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions213
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions264
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions269
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical100
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical133
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical134
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical135
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical136
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical137
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical144
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical195
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical97
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8640 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -280), (20, 15), (94, 75), (241, 240), (243, 80), (247, 400), (484, 720), (698, 480), (700, 80), (1050, -240), (1052, -240), (1055, -480), (1219, -480), (1250, 180), (1251, -120), (1323, -240)]

def reductionPivot8640 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound8640 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4865).moment H =
      Integer.Sparse.eval reductionProjection8640 (momentVector H) := by
  have heq : reductionPivot8640 = (fun u v => (normalNode4865).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4865).moment H = injectiveMoment H reductionPivot8640 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4865).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8640 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8640 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 72, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8640 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2748, oldProjection2043, reductionProjection2156, oldProjection1505, reductionProjection8619] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8640 (0 : Fin 5)) = canonicalInput6541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2748 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6541 hH))).trans (oldProjectionSound2748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8640 (1 : Fin 5)) = canonicalInput9757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2043 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2043 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9757 hH))).trans (oldProjectionSound2043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8640 (2 : Fin 5)) = canonicalInput9812.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2156 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9812 hH))).trans (reductionSound2156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8640 (3 : Fin 5)) = canonicalInput9820.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1505 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9820 hH))).trans (oldProjectionSound1505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8640 (4 : Fin 5)) = canonicalInput9821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8619 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8640 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9821 hH))).trans (reductionSound8619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4865).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8640 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4865).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8640 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 72, 1440] ![1, 1, 5, 20, 1] reductionProjection8640 ![oldProjection2748, oldProjection2043, reductionProjection2156, oldProjection1505, reductionProjection8619]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8641 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 1), (94, 23), (241, 64), (243, 32), (247, 64), (508, 144), (697, -336), (698, 112), (700, 16), (704, 32), (1052, -48), (1059, 16), (1219, -96), (1226, 16), (1227, 32), (1251, -8)]

def reductionPivot8641 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound8641 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4866).moment H =
      Integer.Sparse.eval reductionProjection8641 (momentVector H) := by
  have heq : reductionPivot8641 = (fun u v => (normalNode4866).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4866).moment H = injectiveMoment H reductionPivot8641 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4866).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8641 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8641 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8641 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2605, oldProjection2049, reductionProjection8574, oldProjection1513, reductionProjection1088] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8641 (0 : Fin 5)) = canonicalInput6542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2605 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6542 hH))).trans (oldProjectionSound2605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8641 (1 : Fin 5)) = canonicalInput9758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2049 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9758 hH))).trans (oldProjectionSound2049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8641 (2 : Fin 5)) = canonicalInput9816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8574 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8574 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9816 hH))).trans (reductionSound8574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8641 (3 : Fin 5)) = canonicalInput9822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9822 hH))).trans (oldProjectionSound1513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8641 (4 : Fin 5)) = canonicalInput9823.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1088 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8641 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1088 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9823 hH))).trans (reductionSound1088 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4866).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8641 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4866).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8641 (j : Fin 5)))
      1 288 1440 5 ![720, 720, 1440, 1440, 1440] ![2, 2, 1, 1, 1] reductionProjection8641 ![oldProjection2605, oldProjection2049, reductionProjection8574, oldProjection1513, reductionProjection1088]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8642 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -2), (20, -1), (94, -1), (1042, -24), (1214, -24)]

def reductionPivot8642 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 1, -2], ![3, -4, 1, 0], ![-3, 4, -2, 1]]

theorem reductionSound8642 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode11190).moment H =
      Integer.Sparse.eval reductionProjection8642 (momentVector H) := by
  have heq : reductionPivot8642 = (fun u v => (normalNode11190).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11190).moment H = injectiveMoment H reductionPivot8642 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11190).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11190).entries)).symm
  have hshape : reductionPivot8642 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8642 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8642 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection278, oldProjection219, reductionProjection6575] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8642 (0 : Fin 3)) = canonicalInput31758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8642 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection278 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8642 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31758 hH))).trans (oldProjectionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8642 (1 : Fin 3)) = canonicalInput33868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8642 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8642 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33868 hH))).trans (oldProjectionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8642 (2 : Fin 3)) = canonicalInput33870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8642 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8642 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33870 hH))).trans (reductionSound6575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11190).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8642 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11190).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8642 (j : Fin 3)))
      3 72 72 3 ![24, 1, 1] ![3, 72, 72] reductionProjection8642 ![oldProjection278, oldProjection219, reductionProjection6575]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8643 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 3), (704, -4), (1042, 12), (1047, 12), (1060, 12), (1096, -36), (1214, 12), (1219, 12), (1223, 12)]

def reductionPivot8643 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, 3, -4]]

theorem reductionSound8643 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode4950).moment H =
      Integer.Sparse.eval reductionProjection8643 (momentVector H) := by
  have heq : reductionPivot8643 = (fun u v => (normalNode4950).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4950).moment H = injectiveMoment H reductionPivot8643 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4950).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8643 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8643 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8643 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8642, reductionProjection6834, oldProjection1230, oldProjection1369] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8643 (0 : Fin 4)) = canonicalInput9712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8643 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8642 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8643 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9712 hH))).trans (reductionSound8642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8643 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1096).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8643 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6834 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8643 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8643 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4414 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8643 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1230 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8643 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1230 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4414 hH))).trans (oldProjectionSound1230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8643 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4415 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8643 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1369 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8643 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4415 hH))).trans (oldProjectionSound1369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4950).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8643 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4950).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8643 (j : Fin 4)))
      2 72 144 4 ![72, 1, 144, 144] ![2, 144, 1, 1] reductionProjection8643 ![reductionProjection8642, reductionProjection6834, oldProjection1230, oldProjection1369]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8644 : Integer.Sparse (Fin 1613) := [(3, 12), (4, -2), (17, -12), (19, 36), (20, -3), (93, -12), (94, -6), (236, 48), (246, -32), (704, -48), (1251, -5), (1292, 48)]

def reductionPivot8644 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 4, -4]]

theorem reductionSound8644 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4952).moment H =
      Integer.Sparse.eval reductionProjection8644 (momentVector H) := by
  have heq : reductionPivot8644 = (fun u v => (normalNode4952).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4952).moment H = injectiveMoment H reductionPivot8644 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4952).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8644 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8644 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8644 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6603, reductionProjection6836, reductionProjection6842, oldProjection1224] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8644 (0 : Fin 4)) = canonicalInput9716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8644 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6603 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8644 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6603 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9716 hH))).trans (reductionSound6603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8644 (1 : Fin 4)) = canonicalInput9946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8644 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6836 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8644 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9946 hH))).trans (reductionSound6836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8644 (2 : Fin 4)) = canonicalInput9947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8644 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6842 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8644 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9947 hH))).trans (reductionSound6842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8644 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4418 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8644 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8644 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4418 hH))).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4952).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8644 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4952).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8644 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection8644 ![reductionProjection6603, reductionProjection6836, reductionProjection6842, oldProjection1224]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8645 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -100), (4, 10), (17, 60), (19, -180), (20, 10), (93, 120), (94, 10), (104, 80), (236, -240), (246, 160), (704, 160), (1042, -240), (1047, -240), (1060, -480), (1096, 720), (1214, -240), (1219, -240), (1223, -480), (1251, 55), (1292, -240)]

def reductionPivot8645 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound8645 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4872).moment H =
      Integer.Sparse.eval reductionProjection8645 (momentVector H) := by
  have heq : reductionPivot8645 = (fun u v => (normalNode4872).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4872).moment H = injectiveMoment H reductionPivot8645 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4872).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8645 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8645 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 36, 72, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8645 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6753, reductionProjection8633, reductionProjection1022, reductionProjection8643, reductionProjection8644] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8645 (0 : Fin 5)) = canonicalInput6649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6753 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6753 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6649 hH))).trans (reductionSound6753 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8645 (1 : Fin 5)) = (normalNode4855).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8633 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8645 (2 : Fin 5)) = canonicalInput9856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1022 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1022 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9856 hH))).trans (reductionSound1022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8645 (3 : Fin 5)) = (normalNode4950).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8643 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8645 (4 : Fin 5)) = (normalNode4952).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8644 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8645 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8644 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4872).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8645 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4872).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8645 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 36, 72, 288] ![1, 5, 40, 20, 5] reductionProjection8645 ![reductionProjection6753, reductionProjection8633, reductionProjection1022, reductionProjection8643, reductionProjection8644]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8646 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -5), (94, -15), (108, -80), (247, -80), (1047, 480), (1055, 240), (1058, 240), (1214, 240), (1219, 480), (1223, 240), (1251, -20)]

def reductionPivot8646 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 2, -3]]

theorem reductionSound8646 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4954).moment H =
      Integer.Sparse.eval reductionProjection8646 (momentVector H) := by
  have heq : reductionPivot8646 = (fun u v => (normalNode4954).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4954).moment H = injectiveMoment H reductionPivot8646 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4954).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8646 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8646 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8646 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1187, oldProjection1369, oldProjection1329, oldProjection820] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8646 (0 : Fin 4)) = canonicalInput9721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8646 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1187 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8646 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9721 hH))).trans (oldProjectionSound1187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8646 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4415 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8646 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1369 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8646 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4415 hH))).trans (oldProjectionSound1369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8646 (2 : Fin 4)) = canonicalInput9950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8646 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8646 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9950 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8646 (3 : Fin 4)) = canonicalInput9951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8646 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection820 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8646 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9951 hH))).trans (oldProjectionSound820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4954).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8646 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4954).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8646 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 144, 360] ![10, 10, 10, 4] reductionProjection8646 ![oldProjection1187, oldProjection1369, oldProjection1329, oldProjection820]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8647 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -12), (19, -32), (20, 10), (93, 24), (94, 1), (108, 32), (247, 32), (698, 32), (704, 48), (1047, -96), (1055, -48), (1058, -96), (1214, -48), (1219, -96), (1223, -96), (1250, 24), (1251, -8), (1321, -48)]

def reductionPivot8647 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound8647 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4873).moment H =
      Integer.Sparse.eval reductionProjection8647 (momentVector H) := by
  have heq : reductionPivot8647 = (fun u v => (normalNode4873).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4873).moment H = injectiveMoment H reductionPivot8647 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4873).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8647 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8647 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8647 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4282, oldProjection1492, oldProjection2854, reductionProjection8646, reductionProjection8597] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8647 (0 : Fin 5)) = canonicalInput6653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4282 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6653 hH))).trans (reductionSound4282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8647 (1 : Fin 5)) = canonicalInput9793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1492 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9793 hH))).trans (oldProjectionSound1492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8647 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4338 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2854 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4338 hH))).trans (oldProjectionSound2854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8647 (3 : Fin 5)) = (normalNode4954).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8646 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8647 (4 : Fin 5)) = (normalNode4956).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8597 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8647 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4873).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8647 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4873).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8647 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 1440, 720] ![1, 1, 1, 1, 2] reductionProjection8647 ![reductionProjection4282, oldProjection1492, oldProjection2854, reductionProjection8646, reductionProjection8597]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8648 : Integer.Sparse (Fin 1613) := [(0, 9), (19, 100), (20, -5), (94, -80), (108, -160), (247, -320), (1250, -60), (1251, -60), (1319, 480), (1388, 240)]

def reductionPivot8648 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound8648 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4957).moment H =
      Integer.Sparse.eval reductionProjection8648 (momentVector H) := by
  have heq : reductionPivot8648 = (fun u v => (normalNode4957).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4957).moment H = injectiveMoment H reductionPivot8648 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4957).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8648 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8648 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 180] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8648 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection923, oldProjection1361, oldProjection1222, oldProjection987] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8648 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4282 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8648 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8648 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4282 hH))).trans (oldProjectionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8648 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4419 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8648 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8648 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4419 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8648 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4424 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8648 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8648 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4424 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8648 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4425 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8648 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection987 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8648 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4425 hH))).trans (oldProjectionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4957).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8648 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4957).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8648 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 720, 180] ![10, 2, 2, 8] reductionProjection8648 ![oldProjection923, oldProjection1361, oldProjection1222, oldProjection987]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8649 : Integer.Sparse (Fin 1613) := [(0, -8), (3, -40), (19, -280), (20, 35), (93, 120), (94, 180), (108, 240), (241, 160), (242, -240), (247, 640), (697, -480), (698, 160), (1250, 300), (1251, 5), (1319, -480), (1323, -480), (1388, -240)]

def reductionPivot8649 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound8649 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4874).moment H =
      Integer.Sparse.eval reductionProjection8649 (momentVector H) := by
  have heq : reductionPivot8649 = (fun u v => (normalNode4874).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4874).moment H = injectiveMoment H reductionPivot8649 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4874).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8649 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8649 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8649 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2698, oldProjection1493, reductionProjection8617, reductionProjection8600, reductionProjection8648] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8649 (0 : Fin 5)) = canonicalInput6654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2698 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6654 hH))).trans (reductionSound2698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8649 (1 : Fin 5)) = canonicalInput9794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1493 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1493 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9794 hH))).trans (oldProjectionSound1493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8649 (2 : Fin 5)) = canonicalInput9859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8617 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9859 hH))).trans (reductionSound8617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8649 (3 : Fin 5)) = (normalNode4955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8600 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8600 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8649 (4 : Fin 5)) = canonicalInput9864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8648 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8649 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9864 hH))).trans (reductionSound8648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4874).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8649 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4874).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8649 (j : Fin 5)))
      1 1440 1440 1 ![360, 1440, 1440, 1440, 1440] ![4, 1, 1, 1, 1] reductionProjection8649 ![reductionProjection2698, oldProjection1493, reductionProjection8617, reductionProjection8600, reductionProjection8648]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8650 : Integer.Sparse (Fin 1613) := [(0, 1), (37, 240), (94, 25), (243, -160), (697, 240), (698, -160), (1052, 480), (1214, 240), (1219, 480), (1223, 240), (1226, -240), (1227, -80), (1251, 20)]

def reductionPivot8650 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 2, -3], ![1, -2, 1, 0], ![1, 0, 0, -1]]

theorem reductionSound8650 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4961).moment H =
      Integer.Sparse.eval reductionProjection8650 (momentVector H) := by
  have heq : reductionPivot8650 = (fun u v => (normalNode4961).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4961).moment H = injectiveMoment H reductionPivot8650 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4961).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8650 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8650 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8650 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6424, oldProjection815, oldProjection1035, oldProjection1067] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8650 (0 : Fin 4)) = canonicalInput9727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8650 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6424 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8650 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9727 hH))).trans (reductionSound6424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8650 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4426 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8650 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8650 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4426 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8650 (2 : Fin 4)) = canonicalInput9957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8650 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1035 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8650 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9957 hH))).trans (oldProjectionSound1035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8650 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4430 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8650 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1067 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8650 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4430 hH))).trans (oldProjectionSound1067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4961).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8650 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4961).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8650 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 144] ![10, 2, 10, 10] reductionProjection8650 ![reductionProjection6424, oldProjection815, oldProjection1035, oldProjection1067]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8651 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 60), (20, -15), (37, 240), (94, -5), (108, -80), (247, -80), (697, 240), (1052, 240), (1105, -720), (1251, -10)]

def reductionPivot8651 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound8651 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4962).moment H =
      Integer.Sparse.eval reductionProjection8651 (momentVector H) := by
  have heq : reductionPivot8651 = (fun u v => (normalNode4962).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4962).moment H = injectiveMoment H reductionPivot8651 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4962).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8651 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8651 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8651 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection992, oldProjection995, oldProjection677, oldProjection1028] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8651 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4286 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8651 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection992 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8651 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4286 hH))).trans (oldProjectionSound992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8651 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4429 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8651 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection995 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8651 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection995 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4429 hH))).trans (oldProjectionSound995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8651 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node677⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8651 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection677 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8651 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection677 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8651 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4432 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8651 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1028 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8651 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4432 hH))).trans (oldProjectionSound1028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4962).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8651 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4962).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8651 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 1, 144] ![10, 2, 1440, 10] reductionProjection8651 ![oldProjection992, oldProjection995, oldProjection677, oldProjection1028]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8652 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -10), (19, -80), (20, 20), (37, -240), (94, -10), (105, 40), (108, 40), (241, 160), (243, 280), (247, 40), (697, -240), (698, 320), (700, 160), (704, 80), (1052, -600), (1105, 360), (1214, -120), (1219, -240), (1223, -240), (1226, 160), (1227, 40), (1251, -25)]

def reductionPivot8652 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound8652 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4876).moment H =
      Integer.Sparse.eval reductionProjection8652 (momentVector H) := by
  have heq : reductionPivot8652 = (fun u v => (normalNode4876).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4876).moment H = injectiveMoment H reductionPivot8652 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4876).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8652 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8652 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8652 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2418, oldProjection1495, reductionProjection8594, reductionProjection8650, reductionProjection8651] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8652 (0 : Fin 5)) = canonicalInput6656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2418 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6656 hH))).trans (oldProjectionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8652 (1 : Fin 5)) = canonicalInput9798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1495 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9798 hH))).trans (oldProjectionSound1495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8652 (2 : Fin 5)) = canonicalInput9861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8594 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8594 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9861 hH))).trans (reductionSound8594 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8652 (3 : Fin 5)) = (normalNode4961).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8650 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8652 (4 : Fin 5)) = (normalNode4962).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8651 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8652 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8651 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4876).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8652 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4876).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8652 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1440, 1440, 1440] ![1, 1, 1, 1, 1] reductionProjection8652 ![oldProjection2418, oldProjection1495, reductionProjection8594, reductionProjection8650, reductionProjection8651]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8653 : Integer.Sparse (Fin 1613) := [(20, 2), (94, 5), (106, -16), (243, -32), (996, -144), (1040, 48), (1045, 48), (1052, 48), (1214, 48), (1219, 48), (1223, 48), (1225, -32), (1226, -16), (1251, -1)]

def reductionPivot8653 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, -2, 3], ![0, 1, 3, -4], ![1, -2, 1, 0], ![1, 0, -1, 0]]

theorem reductionSound8653 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4964).moment H =
      Integer.Sparse.eval reductionProjection8653 (momentVector H) := by
  have heq : reductionPivot8653 = (fun u v => (normalNode4964).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4964).moment H = injectiveMoment H reductionPivot8653 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4964).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8653 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8653 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8653 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8468, oldProjection1067, oldProjection1020, reductionProjection6653] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8653 (0 : Fin 4)) = canonicalInput9730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8653 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8468 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8653 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8468 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9730 hH))).trans (reductionSound8468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8653 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4430 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8653 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1067 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8653 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1067 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4430 hH))).trans (oldProjectionSound1067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8653 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4433 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8653 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1020 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8653 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4433 hH))).trans (oldProjectionSound1020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8653 (3 : Fin 4)) = canonicalInput9960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8653 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6653 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8653 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9960 hH))).trans (reductionSound6653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4964).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8653 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4964).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8653 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection8653 ![reductionProjection8468, oldProjection1067, oldProjection1020, reductionProjection6653]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8654 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (4, 5), (19, -280), (20, 5), (94, -30), (106, 160), (243, 560), (244, 400), (246, 80), (698, 80), (700, 400), (701, 320), (704, 480), (996, 720), (1040, -1200), (1045, -480), (1052, -480), (1214, -240), (1219, -240), (1223, -480), (1225, 240), (1226, 80), (1251, 55)]

def reductionPivot8654 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound8654 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4878).moment H =
      Integer.Sparse.eval reductionProjection8654 (momentVector H) := by
  have heq : reductionPivot8654 = (fun u v => (normalNode4878).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4878).moment H = injectiveMoment H reductionPivot8654 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4878).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8654 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8654 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8654 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6769, reductionProjection1028, reductionProjection8626, reductionProjection8653, oldProjection2182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8654 (0 : Fin 5)) = canonicalInput6659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6769 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6659 hH))).trans (reductionSound6769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8654 (1 : Fin 5)) = (normalNode4861).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1028 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1028 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8654 (2 : Fin 5)) = canonicalInput9863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8626 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9863 hH))).trans (reductionSound8626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8654 (3 : Fin 5)) = (normalNode4964).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8653 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8654 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2182⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2182 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8654 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4878).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8654 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4878).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8654 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 288, 288] ![1, 5, 5, 5, 5] reductionProjection8654 ![reductionProjection6769, reductionProjection1028, reductionProjection8626, reductionProjection8653, oldProjection2182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8655 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 5), (241, -160), (243, -160), (465, -720), (698, -480), (700, -80), (1055, 240), (1058, 240), (1059, -80), (1226, -80), (1227, -160), (1251, 70)]

def reductionPivot8655 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -2, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]

theorem reductionSound8655 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4904).moment H =
      Integer.Sparse.eval reductionProjection8655 (momentVector H) := by
  have heq : reductionPivot8655 = (fun u v => (normalNode4904).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4904).moment H = injectiveMoment H reductionPivot8655 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4904).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8655 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8655 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8655 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1058, oldProjection1215, oldProjection483, oldProjection976] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8655 (0 : Fin 4)) = canonicalInput10157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8655 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1058 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8655 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10157 hH))).trans (oldProjectionSound1058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8655 (1 : Fin 4)) = canonicalInput9839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8655 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1215 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8655 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9839 hH))).trans (oldProjectionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8655 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4316 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8655 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection483 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8655 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4316 hH))).trans (oldProjectionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8655 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4313 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8655 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection976 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8655 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection976 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4313 hH))).trans (oldProjectionSound976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4904).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8655 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4904).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8655 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 72] ![2, 10, 1440, 20] reductionProjection8655 ![oldProjection1058, oldProjection1215, oldProjection483, oldProjection976]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8656 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -40), (94, 65), (241, 640), (243, 480), (465, 1440), (697, -480), (698, 1840), (700, 480), (1050, -240), (1052, -480), (1055, -480), (1058, -480), (1059, 800), (1226, 160), (1227, 320), (1250, 60), (1251, -360)]

def reductionPivot8656 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]

theorem reductionSound8656 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4881).moment H =
      Integer.Sparse.eval reductionProjection8656 (momentVector H) := by
  have heq : reductionPivot8656 = (fun u v => (normalNode4881).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4881).moment H = injectiveMoment H reductionPivot8656 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4881).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8656 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8656 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8656 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2676, reductionProjection8655, reductionProjection8655, oldProjection2860, oldProjection1507] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8656 (0 : Fin 5)) = canonicalInput6682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2676 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6682 hH))).trans (oldProjectionSound2676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8656 (1 : Fin 5)) = (normalNode4904).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8655 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8656 (2 : Fin 5)) = canonicalInput9894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8655 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9894 hH))).trans (reductionSound8655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8656 (3 : Fin 5)) = canonicalInput9905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2860 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9905 hH))).trans (oldProjectionSound2860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8656 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4357 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1507 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8656 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4357 hH))).trans (oldProjectionSound1507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4881).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8656 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4881).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8656 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 720, 1440] ![2, 1, 1, 2, 1] reductionProjection8656 ![oldProjection2676, reductionProjection8655, reductionProjection8655, oldProjection2860, oldProjection1507]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8657 : Integer.Sparse (Fin 1613) := [(1097, 1)]

theorem reductionSound8657 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1097).moment H =
      Integer.Sparse.eval reductionProjection8657 (momentVector H) := by
  have hc : coordinates (1097 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1097) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8657, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8658 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (93, -60), (94, -5), (240, 240), (698, -80), (704, -80), (1085, -720), (1097, -720), (1250, -60), (1251, -5), (1321, 480)]

def reductionPivot8658 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, -2, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, 0, 2, -3]]

theorem reductionSound8658 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4905).moment H =
      Integer.Sparse.eval reductionProjection8658 (momentVector H) := by
  have heq : reductionPivot8658 = (fun u v => (normalNode4905).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4905).moment H = injectiveMoment H reductionPivot8658 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4905).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8658 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8658 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8658 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1205, reductionProjection8657, oldProjection1274, reductionProjection6854] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8658 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1205⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8658 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1205 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8658 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8658 (1 : Fin 4)) = canonicalInput9964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8658 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8657 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8658 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9964 hH))).trans (reductionSound8657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8658 (2 : Fin 4)) = canonicalInput9835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8658 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8658 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9835 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8658 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1085).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8658 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6854 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8658 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4905).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8658 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4905).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8658 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 72, 1] ![2, 1440, 20, 1440] reductionProjection8658 ![oldProjection1205, reductionProjection8657, oldProjection1274, reductionProjection6854]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8659 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (1047, 48), (1096, -144), (1097, -144), (1139, -144), (1219, 48), (1251, 1)]

def reductionPivot8659 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -2, 3], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 0, 2, -3]]

theorem reductionSound8659 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4975).moment H =
      Integer.Sparse.eval reductionProjection8659 (momentVector H) := by
  have heq : reductionPivot8659 = (fun u v => (normalNode4975).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4975).moment H = injectiveMoment H reductionPivot8659 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4975).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8659 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8659 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8659 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection227, oldProjection1369, reductionProjection8657, reductionProjection6834] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8659 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1139).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8659 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection227 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8659 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8659 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4415 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8659 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1369 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8659 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4415 hH))).trans (oldProjectionSound1369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8659 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1097).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8659 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8657 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8659 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8659 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1096).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8659 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6834 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8659 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4975).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8659 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4975).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8659 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection8659 ![reductionProjection227, oldProjection1369, reductionProjection8657, reductionProjection6834]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8660 : Integer.Sparse (Fin 1613) := [(1099, 1)]

theorem reductionSound8660 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1099).moment H =
      Integer.Sparse.eval reductionProjection8660 (momentVector H) := by
  have hc : coordinates (1099 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1099) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8660, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8661 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 120), (20, -25), (93, -60), (94, -35), (236, 240), (246, -80), (694, 240), (698, -80), (704, -160), (1099, -720), (1251, -55)]

def reductionPivot8661 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -2, 3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound8661 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4977).moment H =
      Integer.Sparse.eval reductionProjection8661 (momentVector H) := by
  have heq : reductionPivot8661 = (fun u v => (normalNode4977).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4977).moment H = injectiveMoment H reductionPivot8661 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4977).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8661 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8661 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8661 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1308, oldProjection1224, reductionProjection8660, reductionProjection6836] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8661 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4610 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8661 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1308 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8661 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4610 hH))).trans (oldProjectionSound1308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8661 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4418 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8661 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8661 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4418 hH))).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8661 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1099).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8661 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8660 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8661 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8660 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8661 (3 : Fin 4)) = canonicalInput9946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8661 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6836 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8661 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9946 hH))).trans (reductionSound6836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4977).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8661 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4977).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8661 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 144] ![2, 10, 1440, 10] reductionProjection8661 ![oldProjection1308, oldProjection1224, reductionProjection8660, reductionProjection6836]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8662 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -140), (20, 20), (93, 60), (94, 55), (104, 40), (108, 40), (236, -120), (240, -120), (241, 40), (246, 40), (247, 40), (694, -240), (698, 120), (704, 160), (1047, -120), (1085, 360), (1096, 360), (1097, 720), (1099, 360), (1139, 360), (1219, -120), (1250, 30), (1251, 40), (1321, -240)]

def reductionPivot8662 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound8662 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4882).moment H =
      Integer.Sparse.eval reductionProjection8662 (momentVector H) := by
  have heq : reductionPivot8662 = (fun u v => (normalNode4882).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4882).moment H = injectiveMoment H reductionPivot8662 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4882).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8662 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8662 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8662 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6819, reductionProjection8658, oldProjection2854, reductionProjection8659, reductionProjection8661] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8662 (0 : Fin 5)) = canonicalInput6684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6819 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6684 hH))).trans (reductionSound6819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8662 (1 : Fin 5)) = (normalNode4905).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8658 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8658 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8658 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8662 (2 : Fin 5)) = canonicalInput9895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2854 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9895 hH))).trans (oldProjectionSound2854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8662 (3 : Fin 5)) = (normalNode4975).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8659 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8659 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8662 (4 : Fin 5)) = (normalNode4977).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8661 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8662 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4882).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8662 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4882).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8662 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 1440, 288, 1440] ![1, 1, 1, 5, 1] reductionProjection8662 ![reductionProjection6819, reductionProjection8658, oldProjection2854, reductionProjection8659, reductionProjection8661]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8663 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (94, -5), (1251, 10)]

def reductionPivot8663 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![0, -1, -2, 3], ![0, 0, -1, 1], ![0, 2, 1, -3], ![1, -1, 1, -1]]

theorem reductionSound8663 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10829).moment H =
      Integer.Sparse.eval reductionProjection8663 (momentVector H) := by
  have heq : reductionPivot8663 = (fun u v => (normalNode10829).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10829).moment H = injectiveMoment H reductionPivot8663 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10829).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot8663 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8663 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8663 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection933, oldProjection1094, oldProjection1326, oldProjection180] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8663 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6243 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8663 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection933 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8663 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection933 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6243 hH))).trans (oldProjectionSound933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8663 (1 : Fin 4)) = canonicalInput24563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8663 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1094 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8663 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1094 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24563 hH))).trans (oldProjectionSound1094 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8663 (2 : Fin 4)) = canonicalInput24605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8663 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1326 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8663 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24605 hH))).trans (oldProjectionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8663 (3 : Fin 4)) = canonicalInput24616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8663 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection180 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8663 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24616 hH))).trans (oldProjectionSound180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10829).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8663 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10829).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8663 (j : Fin 4)))
      2 720 720 2 ![720, 720, 720, 24] ![1, 1, 1, 30] reductionProjection8663 ![oldProjection933, oldProjection1094, oldProjection1326, oldProjection180]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8664 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (94, -35), (240, 240), (698, -160), (704, -160), (1084, -720), (1086, -720), (1251, -30), (1321, 240)]

def reductionPivot8664 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, -2, 3], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]

theorem reductionSound8664 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4907).moment H =
      Integer.Sparse.eval reductionProjection8664 (momentVector H) := by
  have heq : reductionPivot8664 = (fun u v => (normalNode4907).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4907).moment H = injectiveMoment H reductionPivot8664 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4907).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8664 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8664 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8664 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6704, oldProjection1326, oldProjection1274, oldProjection673] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8664 (0 : Fin 4)) = canonicalInput11814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8664 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6704 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8664 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11814 hH))).trans (reductionSound6704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8664 (1 : Fin 4)) = canonicalInput9920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8664 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1326 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8664 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9920 hH))).trans (oldProjectionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8664 (2 : Fin 4)) = canonicalInput9835.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8664 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1274 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8664 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9835 hH))).trans (oldProjectionSound1274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8664 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node673⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8664 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection673 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8664 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4907).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8664 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4907).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8664 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 72, 1] ![1440, 2, 20, 1440] reductionProjection8664 ![reductionProjection6704, oldProjection1326, oldProjection1274, oldProjection673]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8665 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 120), (20, -40), (93, -60), (94, -45), (246, -80), (698, -160), (704, -320), (1251, -70), (1292, 240), (1321, 480)]

def reductionPivot8665 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -2, 3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 3, -3]]

theorem reductionSound8665 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4981).moment H =
      Integer.Sparse.eval reductionProjection8665 (momentVector H) := by
  have heq : reductionPivot8665 = (fun u v => (normalNode4981).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4981).moment H = injectiveMoment H reductionPivot8665 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4981).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8665 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8665 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8665 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection984, oldProjection1327, oldProjection1224, reductionProjection6842] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8665 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4617 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8665 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection984 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8665 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection984 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4617 hH))).trans (oldProjectionSound984 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8665 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4423 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8665 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1327 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8665 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4423 hH))).trans (oldProjectionSound1327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8665 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4418 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8665 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8665 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4418 hH))).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8665 (3 : Fin 4)) = canonicalInput9947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8665 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6842 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8665 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9947 hH))).trans (reductionSound6842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4981).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8665 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4981).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8665 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 144] ![2, 10, 10, 10] reductionProjection8665 ![oldProjection984, oldProjection1327, oldProjection1224, reductionProjection6842]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8666 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -44), (20, 10), (93, 12), (94, 12), (240, -48), (246, 16), (698, 64), (704, 80), (1047, -48), (1058, -96), (1060, -48), (1084, 144), (1086, 144), (1219, -48), (1223, -96), (1226, 16), (1227, 16), (1251, 11), (1292, -48), (1321, -144)]

def reductionPivot8666 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 2, -3]]

theorem reductionSound8666 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4883).moment H =
      Integer.Sparse.eval reductionProjection8666 (momentVector H) := by
  have heq : reductionPivot8666 = (fun u v => (normalNode4883).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4883).moment H = injectiveMoment H reductionPivot8666 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4883).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8666 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8666 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8666 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8663, reductionProjection8664, oldProjection1326, reductionProjection8615, reductionProjection8665] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8666 (0 : Fin 5)) = canonicalInput6692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8663 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8663 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6692 hH))).trans (reductionSound8663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8666 (1 : Fin 5)) = (normalNode4907).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8664 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8664 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8666 (2 : Fin 5)) = canonicalInput9900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1326 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9900 hH))).trans (oldProjectionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8666 (3 : Fin 5)) = (normalNode4979).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8615 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8666 (4 : Fin 5)) = (normalNode4981).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8665 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8666 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4883).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8666 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4883).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8666 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 720, 1440, 1440] ![2, 1, 2, 1, 1] reductionProjection8666 ![reductionProjection8663, reductionProjection8664, oldProjection1326, reductionProjection8615, reductionProjection8665]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8667 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -120), (93, 60), (94, 185), (241, 80), (247, 480), (549, 720), (694, -480), (697, -480), (698, 160), (1250, 120), (1319, -720), (1323, -240), (1388, -480), (1389, -240)]

def reductionPivot8667 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound8667 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4884).moment H =
      Integer.Sparse.eval reductionProjection8667 (momentVector H) := by
  have heq : reductionPivot8667 = (fun u v => (normalNode4884).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4884).moment H = injectiveMoment H reductionPivot8667 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4884).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8667 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8667 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8667 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2813, oldProjection2169, oldProjection964, oldProjection2189, oldProjection2191] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8667 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3126 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2813 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3126 hH))).trans (oldProjectionSound2813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8667 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2169⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2169 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8667 (2 : Fin 5)) = canonicalInput9901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection964 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9901 hH))).trans (oldProjectionSound964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8667 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2189⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2189 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8667 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2191⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2191 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8667 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4884).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8667 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4884).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8667 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 288, 720] ![1, 1, 2, 5, 2] reductionProjection8667 ![oldProjection2813, oldProjection2169, oldProjection964, oldProjection2189, oldProjection2191]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8668 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -100), (20, 5), (94, 125), (241, 240), (243, 160), (247, 320), (465, 720), (697, -1680), (698, 1200), (700, 160), (704, 160), (1052, -480), (1059, 320), (1219, -480), (1226, 80), (1227, 240), (1251, -135)]

def reductionPivot8668 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound8668 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4886).moment H =
      Integer.Sparse.eval reductionProjection8668 (momentVector H) := by
  have heq : reductionPivot8668 = (fun u v => (normalNode4886).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4886).moment H = injectiveMoment H reductionPivot8668 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4886).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8668 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8668 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8668 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2579, oldProjection2173, oldProjection2850, oldProjection2193, oldProjection1512] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8668 (0 : Fin 5)) = canonicalInput6696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2579 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6696 hH))).trans (oldProjectionSound2579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8668 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2173⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2173 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8668 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4365 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2850 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4365 hH))).trans (oldProjectionSound2850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8668 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2193⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2193 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8668 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4376 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8668 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4376 hH))).trans (oldProjectionSound1512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4886).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8668 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4886).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8668 (j : Fin 5)))
      1 1440 1440 1 ![288, 720, 1440, 1440, 1440] ![5, 2, 1, 1, 1] reductionProjection8668 ![oldProjection2579, oldProjection2173, oldProjection2850, oldProjection2193, oldProjection1512]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8669 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -3), (694, 48), (697, 48), (1251, 5), (1319, 48)]

def reductionPivot8669 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -2, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound8669 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4892).moment H =
      Integer.Sparse.eval reductionProjection8669 (momentVector H) := by
  have heq : reductionPivot8669 = (fun u v => (normalNode4892).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4892).moment H = injectiveMoment H reductionPivot8669 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4892).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8669 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8669 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 120, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8669 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1299, oldProjection175, oldProjection1310, oldProjection1361] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8669 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3219 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8669 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1299 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8669 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3219 hH))).trans (oldProjectionSound1299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8669 (1 : Fin 4)) = canonicalInput9889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8669 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection175 (momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8669 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9889 hH))).trans (oldProjectionSound175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8669 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4416 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8669 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1310 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8669 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4416 hH))).trans (oldProjectionSound1310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8669 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4419 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8669 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8669 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4419 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4892).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8669 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4892).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8669 (j : Fin 4)))
      2 288 1440 10 ![720, 120, 360, 720] ![2, 12, 4, 2] reductionProjection8669 ![oldProjection1299, oldProjection175, oldProjection1310, oldProjection1361]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8670 : Integer.Sparse (Fin 1613) := [(1087, 1)]

theorem reductionSound8670 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1087).moment H =
      Integer.Sparse.eval reductionProjection8670 (momentVector H) := by
  have hc : coordinates (1087 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1087) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8670, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8671 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -20), (241, -80), (694, 240), (698, -80), (1085, -720), (1087, -720), (1114, -720), (1251, 15)]

def reductionPivot8671 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -2, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![2, -1, 1, -2]]

theorem reductionSound8671 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4903).moment H =
      Integer.Sparse.eval reductionProjection8671 (momentVector H) := by
  have heq : reductionPivot8671 = (fun u v => (normalNode4903).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4903).moment H = injectiveMoment H reductionPivot8671 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4903).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8671 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8671 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8671 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection678, reductionProjection8670, oldProjection1366, reductionProjection6854] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8671 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node678⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8671 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection678 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8671 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8671 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1087).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8671 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8670 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8671 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8671 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4309 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8671 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1366 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8671 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4309 hH))).trans (oldProjectionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8671 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1085).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8671 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6854 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8671 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4903).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8671 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4903).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8671 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection8671 ![oldProjection678, reductionProjection8670, oldProjection1366, reductionProjection6854]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

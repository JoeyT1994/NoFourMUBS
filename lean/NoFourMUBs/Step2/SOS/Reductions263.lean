import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical093
import NoFourMUBs.Step2.SOS.Canonical096
import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical149
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical151
import NoFourMUBs.Step2.SOS.Canonical155
import NoFourMUBs.Step2.SOS.Canonical226
import NoFourMUBs.Step2.SOS.Canonical227
import NoFourMUBs.Step2.SOS.Canonical240
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical383
import NoFourMUBs.Step2.SOS.Canonical384
import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical487
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions193
import NoFourMUBs.Step2.SOS.Reductions194
import NoFourMUBs.Step2.SOS.Reductions195
import NoFourMUBs.Step2.SOS.Reductions196
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions257
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions262
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical132
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical133
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical136
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical195
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical215
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical237
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical247
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical277
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical94
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8416 : Integer.Sparse (Fin 1613) := [(487, -1), (998, -1), (1075, -1), (1076, -1)]

def reductionPivot8416 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, 1, -2, 1], ![1, -3, 0, 2], ![1, 2, 0, -3]]

theorem reductionSound8416 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4716).moment H =
      Integer.Sparse.eval reductionProjection8416 (momentVector H) := by
  have heq : reductionPivot8416 = (fun u v => (normalNode4716).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4716).moment H = injectiveMoment H reductionPivot8416 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4716).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8416 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8416 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8416 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3519, reductionProjection8384, reductionProjection8348, reductionProjection4077] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8416 (0 : Fin 4)) = canonicalInput9440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8416 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8416 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9440 hH))).trans (reductionSound3519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8416 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1075).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8416 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8416 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8416 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1076).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8416 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8348 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8416 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8416 (3 : Fin 4)) = canonicalInput9590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8416 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4077 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8416 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4077 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9590 hH))).trans (reductionSound4077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4716).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8416 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4716).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8416 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8416 ![reductionProjection3519, reductionProjection8384, reductionProjection8348, reductionProjection4077]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8417 : Integer.Sparse (Fin 1613) := [(37, -1), (40, -1), (70, -1)]

def reductionPivot8417 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 3, 0], ![0, 2, 1, -3], ![3, -1, -4, 2]]

theorem reductionSound8417 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6704).moment H =
      Integer.Sparse.eval reductionProjection8417 (momentVector H) := by
  have heq : reductionPivot8417 = (fun u v => (normalNode6704).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6704).moment H = injectiveMoment H reductionPivot8417 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6704).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6704).entries)).symm
  have hshape : reductionPivot8417 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8417 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8417 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection394, oldProjection84, oldProjection86] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8417 (0 : Fin 3)) = canonicalInput356.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8417 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8417 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound356 hH))).trans (reductionSound394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8417 (1 : Fin 3)) = canonicalInput5856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8417 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection84 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8417 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5856 hH))).trans (oldProjectionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8417 (2 : Fin 3)) = canonicalInput5905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8417 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection86 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8417 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection86 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5905 hH))).trans (oldProjectionSound86 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6704).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8417 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6704).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8417 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection8417 ![reductionProjection394, oldProjection84, oldProjection86]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8418 : Integer.Sparse (Fin 1613) := [(37, 48), (40, 48), (70, 48), (76, 48), (84, 48), (94, 3), (243, -16), (682, 48), (1052, 48), (1076, -144), (1217, 48), (1226, -16), (1251, -1)]

def reductionPivot8418 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, 1, -1, 0], ![1, -3, -1, 3], ![1, 2, 0, -3]]

theorem reductionSound8418 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4717).moment H =
      Integer.Sparse.eval reductionProjection8418 (momentVector H) := by
  have heq : reductionPivot8418 = (fun u v => (normalNode4717).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4717).moment H = injectiveMoment H reductionPivot8418 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4717).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8418 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8418 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8418 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1226, reductionProjection8348, reductionProjection8417, reductionProjection4318] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8418 (0 : Fin 4)) = canonicalInput9445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8418 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1226 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8418 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9445 hH))).trans (oldProjectionSound1226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8418 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1076).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8418 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8348 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8418 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8418 (2 : Fin 4)) = canonicalInput9591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8418 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8417 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8418 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8417 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9591 hH))).trans (reductionSound8417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8418 (3 : Fin 4)) = canonicalInput9592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8418 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4318 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8418 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9592 hH))).trans (reductionSound4318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4717).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8418 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4717).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8418 (j : Fin 4)))
      2 288 288 2 ![144, 1, 3, 3] ![2, 288, 96, 96] reductionProjection8418 ![oldProjection1226, reductionProjection8348, reductionProjection8417, reductionProjection4318]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8419 : Integer.Sparse (Fin 1613) := [(37, -8), (40, -8), (58, -8), (70, -8), (76, -16), (81, -16), (84, -16), (94, -1), (150, 24), (243, 8), (458, 24), (487, 48), (682, -16), (698, 8), (912, 24), (998, 48), (1052, -32), (1075, 48), (1076, 48), (1217, -16), (1221, -16), (1226, 8), (1251, -1)]

def reductionPivot8419 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 2, 0, -3]]

theorem reductionSound8419 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4715).moment H =
      Integer.Sparse.eval reductionProjection8419 (momentVector H) := by
  have heq : reductionPivot8419 = (fun u v => (normalNode4715).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4715).moment H = injectiveMoment H reductionPivot8419 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4715).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8419 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8419 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 2, 2, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8419 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8415, reductionProjection8414, reductionProjection8416, reductionProjection8418, reductionProjection4338] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8419 (0 : Fin 5)) = canonicalInput9430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8415 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8415 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9430 hH))).trans (reductionSound8415 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8419 (1 : Fin 5)) = (normalNode4714).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8414 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8419 (2 : Fin 5)) = (normalNode4716).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8416 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8416 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8419 (3 : Fin 5)) = (normalNode4717).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8418 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8419 (4 : Fin 5)) = canonicalInput9583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4338 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8419 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4338 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9583 hH))).trans (reductionSound4338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4715).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8419 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4715).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8419 (j : Fin 5)))
      1 48 288 6 ![72, 2, 2, 288, 288] ![4, 144, 144, 1, 1] reductionProjection8419 ![reductionProjection8415, reductionProjection8414, reductionProjection8416, reductionProjection8418, reductionProjection4338]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8420 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 120), (94, -35), (108, -240), (141, -720), (241, -160), (242, 240), (1251, -40)]

def reductionPivot8420 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -3, 4], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound8420 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4732).moment H =
      Integer.Sparse.eval reductionProjection8420 (momentVector H) := by
  have heq : reductionPivot8420 = (fun u v => (normalNode4732).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4732).moment H = injectiveMoment H reductionPivot8420 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4732).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8420 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8420 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8420 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection998, oldProjection403, reductionProjection485, reductionProjection1199] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8420 (0 : Fin 4)) = canonicalInput6158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8420 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection998 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8420 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6158 hH))).trans (oldProjectionSound998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8420 (1 : Fin 4)) = canonicalInput9641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8420 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection403 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8420 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9641 hH))).trans (oldProjectionSound403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8420 (2 : Fin 4)) = canonicalInput9662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8420 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection485 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8420 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9662 hH))).trans (reductionSound485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8420 (3 : Fin 4)) = canonicalInput9663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8420 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1199 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8420 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9663 hH))).trans (reductionSound1199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4732).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8420 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4732).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8420 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 72, 72] ![2, 1440, 20, 20] reductionProjection8420 ![oldProjection998, oldProjection403, reductionProjection485, reductionProjection1199]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8421 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 100), (20, -5), (45, 240), (94, -60), (108, -160), (241, -80), (242, 240), (247, -320), (329, -720), (697, 240), (1251, -55)]

def reductionPivot8421 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -3, 4], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound8421 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4739).moment H =
      Integer.Sparse.eval reductionProjection8421 (momentVector H) := by
  have heq : reductionPivot8421 = (fun u v => (normalNode4739).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4739).moment H = injectiveMoment H reductionPivot8421 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4739).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8421 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8421 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8421 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection786, oldProjection466, oldProjection784, oldProjection761] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8421 (0 : Fin 4)) = canonicalInput6270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8421 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection786 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8421 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6270 hH))).trans (oldProjectionSound786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8421 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4250 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8421 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection466 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8421 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4250 hH))).trans (oldProjectionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8421 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4266 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8421 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection784 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8421 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4266 hH))).trans (oldProjectionSound784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8421 (3 : Fin 4)) = canonicalInput9695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8421 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8421 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9695 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4739).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8421 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4739).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8421 (j : Fin 4)))
      2 1440 1440 2 ![360, 1, 3, 720] ![4, 1440, 480, 2] reductionProjection8421 ![oldProjection786, oldProjection466, oldProjection784, oldProjection761]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8422 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 100), (20, -15), (94, -45), (104, -80), (108, -320), (247, -80), (704, -80), (1251, -35)]

def reductionPivot8422 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -2, -3, 4]]

theorem reductionSound8422 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10864).moment H =
      Integer.Sparse.eval reductionProjection8422 (momentVector H) := by
  have heq : reductionPivot8422 = (fun u v => (normalNode10864).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10864).moment H = injectiveMoment H reductionPivot8422 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10864).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot8422 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8422 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 240] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8422 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection762, oldProjection761, reductionProjection6400, oldProjection150] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8422 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7584 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8422 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection762 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8422 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7584 hH))).trans (oldProjectionSound762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8422 (1 : Fin 4)) = canonicalInput31142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8422 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8422 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31142 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8422 (2 : Fin 4)) = canonicalInput31473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8422 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6400 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8422 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31473 hH))).trans (reductionSound6400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8422 (3 : Fin 4)) = canonicalInput31501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8422 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection150 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8422 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31501 hH))).trans (oldProjectionSound150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10864).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8422 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10864).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8422 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 240] ![2, 2, 2, 6] reductionProjection8422 ![oldProjection762, oldProjection761, reductionProjection6400, oldProjection150]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8423 : Integer.Sparse (Fin 1613) := [(0, -7), (3, -40), (19, -400), (20, 25), (23, -240), (45, -240), (94, 170), (104, 320), (105, 80), (108, 960), (141, 1440), (174, 720), (241, 320), (242, -480), (247, 480), (329, 720), (697, -240), (704, 80), (1018, 720), (1021, 720), (1251, 160)]

def reductionPivot8423 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, 0, -2]]

theorem reductionSound8423 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4719).moment H =
      Integer.Sparse.eval reductionProjection8423 (momentVector H) := by
  have heq : reductionPivot8423 = (fun u v => (normalNode4719).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4719).moment H = injectiveMoment H reductionPivot8423 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4719).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8423 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8423 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8423 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6177, reductionProjection8200, reductionProjection8420, reductionProjection8421, reductionProjection8422] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8423 (0 : Fin 5)) = canonicalInput5951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6177 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5951 hH))).trans (reductionSound6177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8423 (1 : Fin 5)) = canonicalInput9629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8200 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9629 hH))).trans (reductionSound8200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8423 (2 : Fin 5)) = (normalNode4732).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8420 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8420 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8423 (3 : Fin 5)) = (normalNode4739).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8421 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8423 (4 : Fin 5)) = canonicalInput9655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8422 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8423 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9655 hH))).trans (reductionSound8422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4719).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8423 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4719).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8423 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1440, 1440, 1440] ![1, 720, 1, 1, 1] reductionProjection8423 ![reductionProjection6177, reductionProjection8200, reductionProjection8420, reductionProjection8421, reductionProjection8422]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8424 : Integer.Sparse (Fin 1613) := [(94, 5), (104, -16), (105, -16), (108, 32), (1251, 1)]

def reductionPivot8424 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, -2, 3], ![0, -1, 0, 1], ![0, 2, 3, -5], ![1, 0, -1, 0]]

theorem reductionSound8424 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10550).moment H =
      Integer.Sparse.eval reductionProjection8424 (momentVector H) := by
  have heq : reductionPivot8424 = (fun u v => (normalNode10550).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10550).moment H = injectiveMoment H reductionPivot8424 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10550).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot8424 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8424 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8424 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6196, reductionProjection1933, reductionProjection7418, oldProjection123] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8424 (0 : Fin 4)) = canonicalInput14496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8424 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6196 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8424 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14496 hH))).trans (reductionSound6196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8424 (1 : Fin 4)) = canonicalInput24555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8424 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1933 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8424 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1933 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24555 hH))).trans (reductionSound1933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8424 (2 : Fin 4)) = canonicalInput24591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8424 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8424 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24591 hH))).trans (reductionSound7418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8424 (3 : Fin 4)) = canonicalInput24592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8424 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8424 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24592 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10550).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8424 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10550).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8424 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 48] ![2, 2, 2, 6] reductionProjection8424 ![reductionProjection6196, reductionProjection1933, reductionProjection7418, oldProjection123]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8425 : Integer.Sparse (Fin 1613) := [(3, 6), (19, 4), (20, -1), (93, -6), (94, 2), (108, -16), (1047, 24), (1214, 24), (1251, -1)]

def reductionPivot8425 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]

theorem reductionSound8425 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4743).moment H =
      Integer.Sparse.eval reductionProjection8425 (momentVector H) := by
  have heq : reductionPivot8425 = (fun u v => (normalNode4743).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4743).moment H = injectiveMoment H reductionPivot8425 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4743).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8425 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8425 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8425 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1178, reductionProjection511, oldProjection1187, oldProjection1182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8425 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3014 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8425 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1178 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8425 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3014 hH))).trans (oldProjectionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8425 (1 : Fin 4)) = canonicalInput9694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8425 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection511 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8425 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9694 hH))).trans (reductionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8425 (2 : Fin 4)) = canonicalInput9721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8425 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1187 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8425 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9721 hH))).trans (oldProjectionSound1187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8425 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4281 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8425 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1182 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8425 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4281 hH))).trans (oldProjectionSound1182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4743).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8425 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4743).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8425 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 144] ![1, 1, 1, 1] reductionProjection8425 ![oldProjection1178, reductionProjection511, oldProjection1187, oldProjection1182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8426 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 40), (19, 120), (20, -25), (93, -60), (94, -45), (108, -240), (241, -80), (242, 240), (247, -240), (1251, -30), (1319, 240)]

def reductionPivot8426 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound8426 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4745).moment H =
      Integer.Sparse.eval reductionProjection8426 (momentVector H) := by
  have heq : reductionPivot8426 = (fun u v => (normalNode4745).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4745).moment H = injectiveMoment H reductionPivot8426 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4745).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8426 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8426 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8426 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection914, reductionProjection6400, oldProjection918, oldProjection923] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8426 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3016 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8426 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection914 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8426 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3016 hH))).trans (oldProjectionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8426 (1 : Fin 4)) = canonicalInput9696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8426 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6400 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8426 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9696 hH))).trans (reductionSound6400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8426 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4280 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8426 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection918 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8426 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4280 hH))).trans (oldProjectionSound918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8426 (3 : Fin 4)) = canonicalInput9723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8426 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8426 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9723 hH))).trans (oldProjectionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4745).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8426 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4745).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8426 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 144, 144] ![2, 2, 10, 10] reductionProjection8426 ![oldProjection914, reductionProjection6400, oldProjection918, oldProjection923]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8427 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -80), (19, -180), (20, 20), (93, 120), (94, 5), (104, 80), (105, 80), (108, 160), (241, 80), (242, -240), (243, 160), (247, 240), (698, 80), (1021, 720), (1047, -480), (1057, -240), (1214, -480), (1222, -240), (1225, 80), (1226, 160), (1251, 35), (1319, -240)]

def reductionPivot8427 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound8427 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4720).moment H =
      Integer.Sparse.eval reductionProjection8427 (momentVector H) := by
  have heq : reductionPivot8427 = (fun u v => (normalNode4720).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4720).moment H = injectiveMoment H reductionPivot8427 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4720).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8427 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8427 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8427 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8424, reductionProjection8232, reductionProjection7418, reductionProjection8425, reductionProjection8426] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8427 (0 : Fin 5)) = canonicalInput5955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8424 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5955 hH))).trans (reductionSound8424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8427 (1 : Fin 5)) = canonicalInput9630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8232 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9630 hH))).trans (reductionSound8232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8427 (2 : Fin 5)) = canonicalInput9653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9653 hH))).trans (reductionSound7418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8427 (3 : Fin 5)) = (normalNode4743).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8425 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8427 (4 : Fin 5)) = canonicalInput9658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8426 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8427 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8426 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9658 hH))).trans (reductionSound8426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4720).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8427 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4720).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8427 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 144, 144, 1440] ![5, 5, 10, 10, 1] reductionProjection8427 ![reductionProjection8424, reductionProjection8232, reductionProjection7418, reductionProjection8425, reductionProjection8426]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8428 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 140), (20, -10), (45, 240), (94, -75), (108, -400), (247, -240), (694, 240), (1251, -85), (1319, 240)]

def reductionPivot8428 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound8428 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4744).moment H =
      Integer.Sparse.eval reductionProjection8428 (momentVector H) := by
  have heq : reductionPivot8428 = (fun u v => (normalNode4744).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4744).moment H = injectiveMoment H reductionPivot8428 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4744).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8428 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8428 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8428 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection787, oldProjection761, oldProjection788, oldProjection923] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8428 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3015 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8428 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection787 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8428 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection787 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3015 hH))).trans (oldProjectionSound787 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8428 (1 : Fin 4)) = canonicalInput9695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8428 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8428 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9695 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8428 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4279 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8428 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection788 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8428 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection788 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4279 hH))).trans (oldProjectionSound788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8428 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4282 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8428 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8428 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4282 hH))).trans (oldProjectionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4744).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8428 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4744).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8428 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 144, 144] ![4, 2, 10, 10] reductionProjection8428 ![oldProjection787, oldProjection761, oldProjection788, oldProjection923]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8429 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -140), (20, 10), (45, -240), (94, 75), (104, 80), (108, 240), (158, 360), (247, 200), (694, -240), (1018, 720), (1251, 85), (1319, -240)]

def reductionPivot8429 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]

theorem reductionSound8429 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4721).moment H =
      Integer.Sparse.eval reductionProjection8429 (momentVector H) := by
  have heq : reductionPivot8429 = (fun u v => (normalNode4721).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4721).moment H = injectiveMoment H reductionPivot8429 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4721).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8429 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8429 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 144, 72, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8429 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6186, reductionProjection8233, reductionProjection1199, reductionProjection8428, reductionProjection8428] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8429 (0 : Fin 5)) = canonicalInput5956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6186 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5956 hH))).trans (reductionSound6186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8429 (1 : Fin 5)) = canonicalInput9631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8233 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9631 hH))).trans (reductionSound8233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8429 (2 : Fin 5)) = canonicalInput9654.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1199 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9654 hH))).trans (reductionSound1199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8429 (3 : Fin 5)) = (normalNode4744).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8428 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8429 (4 : Fin 5)) = canonicalInput9659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8428 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8429 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9659 hH))).trans (reductionSound8428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4721).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8429 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4721).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8429 (j : Fin 5)))
      1 720 1440 2 ![144, 144, 72, 1440, 1440] ![10, 10, 20, 1, 1] reductionProjection8429 ![reductionProjection6186, reductionProjection8233, reductionProjection1199, reductionProjection8428, reductionProjection8428]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8430 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 60), (4, -5), (19, 80), (20, -30), (94, -55), (108, -480), (247, -160), (1251, -35)]

def reductionPivot8430 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -1, 0, 0]]

theorem reductionSound8430 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7946).moment H =
      Integer.Sparse.eval reductionProjection8430 (momentVector H) := by
  have heq : reductionPivot8430 = (fun u v => (normalNode7946).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7946).moment H = injectiveMoment H reductionPivot8430 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7946).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8430 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8430 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8430 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6240, reductionProjection1892, oldProjection1168, reductionProjection6221] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8430 (0 : Fin 4)) = canonicalInput14563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8430 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6240 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8430 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14563 hH))).trans (reductionSound6240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8430 (1 : Fin 4)) = (normalNode7940).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8430 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1892 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8430 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8430 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6244 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8430 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1168 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8430 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6244 hH))).trans (oldProjectionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8430 (3 : Fin 4)) = canonicalInput15361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8430 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6221 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8430 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15361 hH))).trans (reductionSound6221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7946).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8430 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7946).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8430 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 720, 144] ![10, 10, 2, 10] reductionProjection8430 ![reductionProjection6240, reductionProjection1892, oldProjection1168, reductionProjection6221]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8431 : Integer.Sparse (Fin 1613) := [(1214, -1), (1218, -1), (1223, -1)]

def reductionPivot8431 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![-2, -1, -1, 4], ![3, 2, -1, -4]]

theorem reductionSound8431 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode9870).moment H =
      Integer.Sparse.eval reductionProjection8431 (momentVector H) := by
  have heq : reductionPivot8431 = (fun u v => (normalNode9870).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9870).moment H = injectiveMoment H reductionPivot8431 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9870).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9870).entries)).symm
  have hshape : reductionPivot8431 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8431 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8431 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection219, reductionProjection6392, oldProjection225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8431 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6892 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8431 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8431 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6892 hH))).trans (oldProjectionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8431 (1 : Fin 3)) = canonicalInput27384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8431 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8431 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27384 hH))).trans (reductionSound6392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8431 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8893 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8431 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8431 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8893 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9870).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8431 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9870).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8431 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection8431 ![oldProjection219, reductionProjection6392, oldProjection225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8432 : Integer.Sparse (Fin 1613) := [(45, 3), (698, -1), (770, -9), (1214, 6), (1218, 3), (1219, 6), (1223, 6), (1226, -1), (1227, -1)]

def reductionPivot8432 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -3, 4], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, 1, -3]]

theorem reductionSound8432 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4768).moment H =
      Integer.Sparse.eval reductionProjection8432 (momentVector H) := by
  have heq : reductionPivot8432 = (fun u v => (normalNode4768).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4768).moment H = injectiveMoment H reductionPivot8432 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4768).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8432 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8432 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8432 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1239, reductionProjection6695, oldProjection932, reductionProjection8431] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8432 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4381 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8432 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8432 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4381 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8432 (1 : Fin 4)) = canonicalInput9700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8432 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6695 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8432 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9700 hH))).trans (reductionSound6695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8432 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4265 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8432 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection932 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8432 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection932 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4265 hH))).trans (oldProjectionSound932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8432 (3 : Fin 4)) = canonicalInput9693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8432 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8431 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8432 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9693 hH))).trans (reductionSound8431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4768).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8432 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4768).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8432 (j : Fin 4)))
      2 18 18 2 ![9, 1, 3, 3] ![2, 18, 6, 6] reductionProjection8432 ![oldProjection1239, reductionProjection6695, oldProjection932, reductionProjection8431]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8433 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 20), (19, 100), (94, -35), (104, -80), (108, -320), (241, -80), (247, -320), (1251, -25)]

def reductionPivot8433 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -2, -3, 4]]

theorem reductionSound8433 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11163).moment H =
      Integer.Sparse.eval reductionProjection8433 (momentVector H) := by
  have heq : reductionPivot8433 = (fun u v => (normalNode11163).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11163).moment H = injectiveMoment H reductionPivot8433 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11163).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot8433 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8433 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 240] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8433 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection761, oldProjection761, oldProjection904, oldProjection253] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8433 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7935 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8433 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8433 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7935 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8433 (1 : Fin 4)) = canonicalInput31142.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8433 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8433 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31142 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8433 (2 : Fin 4)) = canonicalInput31177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8433 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection904 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8433 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31177 hH))).trans (oldProjectionSound904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8433 (3 : Fin 4)) = canonicalInput31239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8433 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection253 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8433 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31239 hH))).trans (oldProjectionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11163).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8433 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11163).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8433 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 240] ![2, 2, 2, 6] reductionProjection8433 ![oldProjection761, oldProjection761, oldProjection904, oldProjection253]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8434 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -24), (4, 1), (19, -76), (20, 8), (45, -240), (94, 32), (104, 48), (108, 192), (241, 16), (247, 128), (698, 16), (704, 64), (770, 144), (1214, -192), (1218, -48), (1219, -192), (1223, -96), (1226, 16), (1227, 16), (1251, 26)]

def reductionPivot8434 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound8434 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4722).moment H =
      Integer.Sparse.eval reductionProjection8434 (momentVector H) := by
  have heq : reductionPivot8434 = (fun u v => (normalNode4722).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4722).moment H = injectiveMoment H reductionPivot8434 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4722).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8434 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8434 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 18, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8434 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8430, reductionProjection512, reductionProjection512, reductionProjection8432, reductionProjection8433] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8434 (0 : Fin 5)) = canonicalInput5978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8430 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8430 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5978 hH))).trans (reductionSound8430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8434 (1 : Fin 5)) = (normalNode4738).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8434 (2 : Fin 5)) = canonicalInput9681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9681 hH))).trans (reductionSound512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8434 (3 : Fin 5)) = (normalNode4768).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8432 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8434 (4 : Fin 5)) = canonicalInput9687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8433 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8434 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8433 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9687 hH))).trans (reductionSound8433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4722).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8434 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4722).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8434 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 18, 1440] ![1, 1, 1, 80, 1] reductionProjection8434 ![reductionProjection8430, reductionProjection512, reductionProjection512, reductionProjection8432, reductionProjection8433]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8435 : Integer.Sparse (Fin 1613) := [(0, 1), (45, 480), (137, -720), (242, 240), (697, 480), (698, -80), (1214, 240), (1219, 480), (1227, -80), (1251, 15)]

def reductionPivot8435 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -3, 4], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, 0, -2]]

theorem reductionSound8435 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4769).moment H =
      Integer.Sparse.eval reductionProjection8435 (momentVector H) := by
  have heq : reductionPivot8435 = (fun u v => (normalNode4769).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4769).moment H = injectiveMoment H reductionPivot8435 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4769).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8435 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8435 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8435 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection815, oldProjection400, oldProjection784, oldProjection932] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8435 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4382 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8435 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection815 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8435 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4382 hH))).trans (oldProjectionSound815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8435 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4271 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8435 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection400 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8435 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4271 hH))).trans (oldProjectionSound400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8435 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4266 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8435 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection784 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8435 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4266 hH))).trans (oldProjectionSound784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8435 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4265 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8435 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection932 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8435 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection932 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4265 hH))).trans (oldProjectionSound932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4769).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8435 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4769).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8435 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 3, 3] ![2, 1440, 480, 480] reductionProjection8435 ![oldProjection815, oldProjection400, oldProjection784, oldProjection932]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8436 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 36), (20, -4), (94, -17), (104, -16), (108, -64), (241, -16), (247, -64), (1251, -9)]

def reductionPivot8436 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -3, 4]]

theorem reductionSound8436 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11177).moment H =
      Integer.Sparse.eval reductionProjection8436 (momentVector H) := by
  have heq : reductionPivot8436 = (fun u v => (normalNode11177).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11177).moment H = injectiveMoment H reductionPivot8436 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11177).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8436 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8436 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8436 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6400, oldProjection764, oldProjection761, oldProjection964] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8436 (0 : Fin 4)) = canonicalInput23413.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8436 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6400 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8436 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23413 hH))).trans (reductionSound6400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8436 (1 : Fin 4)) = canonicalInput23352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8436 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection764 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8436 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23352 hH))).trans (oldProjectionSound764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8436 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7935 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8436 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8436 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7935 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8436 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7934 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8436 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection964 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8436 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7934 hH))).trans (oldProjectionSound964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11177).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8436 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11177).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8436 (j : Fin 4)))
      2 288 1440 10 ![720, 144, 720, 720] ![2, 10, 2, 2] reductionProjection8436 ![reductionProjection6400, oldProjection764, oldProjection761, oldProjection964]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8437 : Integer.Sparse (Fin 1613) := [(0, -11), (3, -80), (19, -560), (20, 40), (45, -960), (94, 270), (104, 480), (105, 160), (108, 1280), (137, 720), (241, 480), (242, -720), (247, 1280), (329, 1440), (697, -960), (698, 80), (1214, -240), (1219, -480), (1227, 80), (1251, 185)]

def reductionPivot8437 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound8437 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4723).moment H =
      Integer.Sparse.eval reductionProjection8437 (momentVector H) := by
  have heq : reductionPivot8437 = (fun u v => (normalNode4723).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4723).moment H = injectiveMoment H reductionPivot8437 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4723).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8437 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8437 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8437 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6222, reductionProjection8421, reductionProjection8421, reductionProjection8435, reductionProjection8436] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8437 (0 : Fin 5)) = canonicalInput5979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6222 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5979 hH))).trans (reductionSound6222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8437 (1 : Fin 5)) = (normalNode4739).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8421 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8437 (2 : Fin 5)) = canonicalInput9682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8421 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9682 hH))).trans (reductionSound8421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8437 (3 : Fin 5)) = (normalNode4769).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8435 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8435 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8437 (4 : Fin 5)) = canonicalInput9688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8436 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8437 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8436 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9688 hH))).trans (reductionSound8436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4723).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8437 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4723).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8437 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 288] ![1, 1, 1, 1, 5] reductionProjection8437 ![reductionProjection6222, reductionProjection8421, reductionProjection8421, reductionProjection8435, reductionProjection8436]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8438 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (45, 240), (94, -30), (108, -160), (140, -720), (247, -160), (694, 240), (1047, 240), (1055, 240), (1214, 240), (1219, 240), (1251, -35)]

def reductionPivot8438 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 1, -2]]

theorem reductionSound8438 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4777).moment H =
      Integer.Sparse.eval reductionProjection8438 (momentVector H) := by
  have heq : reductionPivot8438 = (fun u v => (normalNode4777).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4777).moment H = injectiveMoment H reductionPivot8438 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4777).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8438 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8438 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8438 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection820, oldProjection402, oldProjection788, oldProjection1187] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8438 (0 : Fin 4)) = canonicalInput9951.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8438 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection820 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8438 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9951 hH))).trans (oldProjectionSound820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8438 (1 : Fin 4)) = canonicalInput9724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8438 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection402 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8438 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9724 hH))).trans (oldProjectionSound402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8438 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4279 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8438 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection788 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8438 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection788 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4279 hH))).trans (oldProjectionSound788 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8438 (3 : Fin 4)) = canonicalInput9721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8438 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1187 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8438 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9721 hH))).trans (oldProjectionSound1187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4777).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8438 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4777).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8438 (j : Fin 4)))
      2 1440 1440 2 ![360, 1, 144, 144] ![4, 1440, 10, 10] reductionProjection8438 ![oldProjection820, oldProjection402, oldProjection788, oldProjection1187]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8439 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -5), (94, -30), (108, -160), (247, -160), (325, -360), (1251, -35), (1319, 240), (1388, 120)]

def reductionPivot8439 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, 1, -1]]

theorem reductionSound8439 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4780).moment H =
      Integer.Sparse.eval reductionProjection8439 (momentVector H) := by
  have heq : reductionPivot8439 = (fun u v => (normalNode4780).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4780).moment H = injectiveMoment H reductionPivot8439 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4780).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8439 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8439 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![180, 1, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8439 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection987, oldProjection463, oldProjection923, oldProjection923] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8439 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4425 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8439 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection987 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8439 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4425 hH))).trans (oldProjectionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8439 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4285 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8439 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection463 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8439 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection463 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4285 hH))).trans (oldProjectionSound463 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8439 (2 : Fin 4)) = canonicalInput9723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8439 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8439 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9723 hH))).trans (oldProjectionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8439 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4282 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8439 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8439 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4282 hH))).trans (oldProjectionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4780).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8439 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4780).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8439 (j : Fin 4)))
      2 720 720 2 ![180, 1, 144, 144] ![4, 720, 5, 5] reductionProjection8439 ![oldProjection987, oldProjection463, oldProjection923, oldProjection923]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8440 : Integer.Sparse (Fin 1613) := [(0, -8), (3, -40), (19, -300), (20, 25), (45, -480), (94, 155), (104, 160), (108, 880), (140, 720), (247, 560), (325, 720), (694, -480), (1047, -240), (1055, -240), (1214, -240), (1219, -240), (1251, 170), (1319, -720), (1388, -240)]

def reductionPivot8440 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound8440 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4724).moment H =
      Integer.Sparse.eval reductionProjection8440 (momentVector H) := by
  have heq : reductionPivot8440 = (fun u v => (normalNode4724).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4724).moment H = injectiveMoment H reductionPivot8440 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4724).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8440 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8440 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8440 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6225, reductionProjection8428, oldProjection761, reductionProjection8438, reductionProjection8439] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8440 (0 : Fin 5)) = canonicalInput5983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6225 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5983 hH))).trans (reductionSound6225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8440 (1 : Fin 5)) = (normalNode4744).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8428 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8440 (2 : Fin 5)) = canonicalInput9685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9685 hH))).trans (oldProjectionSound761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8440 (3 : Fin 5)) = (normalNode4777).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8438 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8438 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8438 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8440 (4 : Fin 5)) = (normalNode4780).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8439 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8440 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8439 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4724).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8440 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4724).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8440 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 720, 1440, 720] ![2, 1, 2, 1, 2] reductionProjection8440 ![reductionProjection6225, reductionProjection8428, oldProjection761, reductionProjection8438, reductionProjection8439]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8441 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (94, -35), (104, -80), (108, -160), (140, -720), (240, 240), (241, -160), (247, -80), (1251, -35)]

def reductionPivot8441 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -3, 4], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound8441 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4746).moment H =
      Integer.Sparse.eval reductionProjection8441 (momentVector H) := by
  have heq : reductionPivot8441 = (fun u v => (normalNode4746).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4746).moment H = injectiveMoment H reductionPivot8441 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4746).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8441 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8441 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8441 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection998, oldProjection994, oldProjection402, oldProjection1236] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8441 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3024 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8441 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection998 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8441 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3024 hH))).trans (oldProjectionSound998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8441 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4272 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8441 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection994 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8441 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4272 hH))).trans (oldProjectionSound994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8441 (2 : Fin 4)) = canonicalInput9724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8441 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection402 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8441 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9724 hH))).trans (oldProjectionSound402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8441 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4284 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8441 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1236 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8441 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4284 hH))).trans (oldProjectionSound1236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4746).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8441 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4746).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8441 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 144] ![2, 10, 1440, 10] reductionProjection8441 ![oldProjection998, oldProjection994, oldProjection402, oldProjection1236]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8442 : Integer.Sparse (Fin 1613) := [(1078, 1)]

theorem reductionSound8442 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1078).moment H =
      Integer.Sparse.eval reductionProjection8442 (momentVector H) := by
  have hc : coordinates (1078 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1078) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8442, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8443 : Integer.Sparse (Fin 1613) := [(140, -1), (174, -1), (1021, -1), (1078, -1)]

def reductionPivot8443 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -3, 4], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 0, 1, -2]]

theorem reductionSound8443 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4781).moment H =
      Integer.Sparse.eval reductionProjection8443 (momentVector H) := by
  have heq : reductionPivot8443 = (fun u v => (normalNode4781).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4781).moment H = injectiveMoment H reductionPivot8443 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4781).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8443 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8443 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8443 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection409, reductionProjection6298, oldProjection402, reductionProjection8442] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8443 (0 : Fin 4)) = canonicalInput9955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8443 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection409 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8443 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9955 hH))).trans (oldProjectionSound409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8443 (1 : Fin 4)) = canonicalInput9726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8443 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6298 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8443 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9726 hH))).trans (reductionSound6298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8443 (2 : Fin 4)) = canonicalInput9724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8443 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection402 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8443 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9724 hH))).trans (oldProjectionSound402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8443 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1078).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8443 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8443 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4781).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8443 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4781).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8443 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8443 ![oldProjection409, reductionProjection6298, oldProjection402, reductionProjection8442]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8444 : Integer.Sparse (Fin 1613) := [(0, -8), (3, -80), (19, -400), (20, 35), (37, -240), (94, 175), (104, 400), (105, 80), (108, 880), (140, 1440), (174, 720), (240, -480), (241, 320), (247, 640), (325, 720), (697, -240), (1021, 720), (1078, 720), (1251, 160)]

def reductionPivot8444 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound8444 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4725).moment H =
      Integer.Sparse.eval reductionProjection8444 (momentVector H) := by
  have heq : reductionPivot8444 = (fun u v => (normalNode4725).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4725).moment H = injectiveMoment H reductionPivot8444 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4725).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8444 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8444 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8444 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6232, reductionProjection8441, reductionProjection8433, reductionProjection8443, oldProjection2157] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8444 (0 : Fin 5)) = canonicalInput5987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6232 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5987 hH))).trans (reductionSound6232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8444 (1 : Fin 5)) = (normalNode4746).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8441 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8441 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8444 (2 : Fin 5)) = canonicalInput9687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8433 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8433 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9687 hH))).trans (reductionSound8433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8444 (3 : Fin 5)) = (normalNode4781).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8443 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8444 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2157⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2157 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8444 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4725).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8444 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4725).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8444 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 2, 1440] ![1, 1, 1, 720, 1] reductionProjection8444 ![reductionProjection6232, reductionProjection8441, reductionProjection8433, reductionProjection8443, oldProjection2157]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8445 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 4), (20, -2), (37, 48), (94, -1), (105, -8), (108, -8), (241, -8), (243, -24), (1214, 24), (1226, -8), (1251, -1)]

def reductionPivot8445 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -3, 4], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound8445 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4748).moment H =
      Integer.Sparse.eval reductionProjection8445 (momentVector H) := by
  have heq : reductionPivot8445 = (fun u v => (normalNode4748).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4748).moment H = injectiveMoment H reductionPivot8445 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4748).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8445 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8445 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8445 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1031, oldProjection1023, reductionProjection6424, oldProjection992] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8445 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3028 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8445 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1031 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8445 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1031 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3028 hH))).trans (oldProjectionSound1031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8445 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4277 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8445 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1023 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8445 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1023 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4277 hH))).trans (oldProjectionSound1023 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8445 (2 : Fin 4)) = canonicalInput9727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8445 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6424 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8445 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9727 hH))).trans (reductionSound6424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8445 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4286 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8445 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection992 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8445 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4286 hH))).trans (oldProjectionSound992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4748).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8445 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4748).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8445 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 144] ![1, 1, 1, 1] reductionProjection8445 ![oldProjection1031, oldProjection1023, reductionProjection6424, oldProjection992]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8446 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 80), (20, -5), (94, -35), (104, -160), (105, -80), (108, -160), (241, -240), (243, -80), (247, -80), (698, -80), (1251, -15)]

def reductionPivot8446 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, -3, 4]]

theorem reductionSound8446 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11164).moment H =
      Integer.Sparse.eval reductionProjection8446 (momentVector H) := by
  have heq : reductionPivot8446 = (fun u v => (normalNode11164).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11164).moment H = injectiveMoment H reductionPivot8446 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11164).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot8446 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8446 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8446 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection764, reductionProjection6400, oldProjection760, oldProjection254] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8446 (0 : Fin 4)) = canonicalInput23352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8446 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection764 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8446 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23352 hH))).trans (oldProjectionSound764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8446 (1 : Fin 4)) = canonicalInput31143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8446 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6400 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8446 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31143 hH))).trans (reductionSound6400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8446 (2 : Fin 4)) = canonicalInput31274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8446 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection760 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8446 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31274 hH))).trans (oldProjectionSound760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8446 (3 : Fin 4)) = canonicalInput31275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8446 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection254 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8446 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31275 hH))).trans (oldProjectionSound254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11164).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8446 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11164).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8446 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 48] ![10, 2, 10, 30] reductionProjection8446 ![oldProjection764, reductionProjection6400, oldProjection760, oldProjection254]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8447 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3), (243, 16), (1045, -48), (1218, -48), (1225, 16)]

def reductionPivot8447 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![0, -3, -1, 4], ![2, 3, -1, -4]]

theorem reductionSound8447 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9053).moment H =
      Integer.Sparse.eval reductionProjection8447 (momentVector H) := by
  have heq : reductionPivot8447 = (fun u v => (normalNode9053).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9053).moment H = injectiveMoment H reductionPivot8447 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9053).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9053).entries)).symm
  have hshape : reductionPivot8447 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8447 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8447 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection193, reductionProjection6392, oldProjection221] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8447 (0 : Fin 3)) = canonicalInput9347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8447 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection193 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8447 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9347 hH))).trans (oldProjectionSound193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8447 (1 : Fin 3)) = canonicalInput22381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8447 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8447 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22381 hH))).trans (reductionSound6392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8447 (2 : Fin 3)) = canonicalInput22388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8447 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8447 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22388 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9053).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8447 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9053).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8447 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection8447 ![oldProjection193, reductionProjection6392, oldProjection221]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

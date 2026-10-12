import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical149
import NoFourMUBs.Step2.SOS.Canonical150
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical181
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical183
import NoFourMUBs.Step2.SOS.Canonical186
import NoFourMUBs.Step2.SOS.Canonical188
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions076
import NoFourMUBs.Step2.SOS.Reductions089
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions137
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions219
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions260
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical131
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical247
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8352 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 4), (37, -48), (40, -48), (53, -48), (70, -48), (72, -48), (76, -48), (77, -48), (79, -48), (83, -48), (84, -48), (94, -5), (150, 144), (241, 16), (243, 96), (406, 144), (421, 144), (682, -48), (698, 16), (700, 32), (1040, -48), (1044, -48), (1052, -144), (1065, 144), (1067, 144), (1068, 288), (1076, 144), (1183, 144), (1197, 144), (1217, -96), (1225, 16), (1226, 48), (1251, -5)]

def reductionPivot8352 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, -3, 0, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]

theorem reductionSound8352 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4667).moment H =
      Integer.Sparse.eval reductionProjection8352 (momentVector H) := by
  have heq : reductionPivot8352 = (fun u v => (normalNode4667).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4667).moment H = injectiveMoment H reductionPivot8352 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4667).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8352 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8352 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8352 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2878, reductionProjection8347, reductionProjection8349, reductionProjection8351, reductionProjection4687] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8352 (0 : Fin 5)) = canonicalInput9348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2878 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2878 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9348 hH))).trans (reductionSound2878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8352 (1 : Fin 5)) = (normalNode4660).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8347 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8352 (2 : Fin 5)) = (normalNode4668).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8349 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8352 (3 : Fin 5)) = (normalNode4669).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8351 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8352 (4 : Fin 5)) = canonicalInput9509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4687 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8352 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9509 hH))).trans (reductionSound4687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4667).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8352 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4667).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8352 (j : Fin 5)))
      1 288 288 1 ![288, 288, 288, 2, 288] ![1, 1, 1, 144, 1] reductionProjection8352 ![reductionProjection2878, reductionProjection8347, reductionProjection8349, reductionProjection8351, reductionProjection4687]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8353 : Integer.Sparse (Fin 1613) := [(1293, 1)]

theorem reductionSound8353 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1293).moment H =
      Integer.Sparse.eval reductionProjection8353 (momentVector H) := by
  have hc : coordinates (1293 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1293) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8353, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8354 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 2), (243, 16), (1057, -48), (1251, 1), (1293, -48)]

def reductionPivot8354 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 1, -1], ![0, -4, 2, 2], ![2, 3, -3, -2]]

theorem reductionSound8354 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9123).moment H =
      Integer.Sparse.eval reductionProjection8354 (momentVector H) := by
  have heq : reductionPivot8354 = (fun u v => (normalNode9123).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9123).moment H = injectiveMoment H reductionPivot8354 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9123).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9123).entries)).symm
  have hshape : reductionPivot8354 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8354 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8354 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection211, reductionProjection8353, oldProjection247] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8354 (0 : Fin 3)) = canonicalInput10976.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8354 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8354 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10976 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8354 (1 : Fin 3)) = canonicalInput23335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8354 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection8353 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8354 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection8353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23335 hH))).trans (reductionSound8353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8354 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7918 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8354 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8354 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7918 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9123).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8354 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9123).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8354 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection8354 ![oldProjection211, reductionProjection8353, oldProjection247]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8355 : Integer.Sparse (Fin 1613) := [(88, 1), (230, -3), (231, -3), (241, 1), (243, 1)]

def reductionPivot8355 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 2, -2], ![0, 2, -4, 2], ![2, -3, 2, -1]]

theorem reductionSound8355 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9135).moment H =
      Integer.Sparse.eval reductionProjection8355 (momentVector H) := by
  have heq : reductionPivot8355 = (fun u v => (normalNode9135).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9135).moment H = injectiveMoment H reductionPivot8355 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9135).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9135).entries)).symm
  have hshape : reductionPivot8355 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8355 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8355 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection136, reductionProjection1710, oldProjection102] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8355 (0 : Fin 3)) = canonicalInput11671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8355 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8355 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11671 hH))).trans (oldProjectionSound136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8355 (1 : Fin 3)) = canonicalInput23385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8355 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1710 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8355 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23385 hH))).trans (reductionSound1710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8355 (2 : Fin 3)) = canonicalInput23418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8355 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection102 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8355 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23418 hH))).trans (oldProjectionSound102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9135).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8355 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9135).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8355 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection8355 ![oldProjection136, reductionProjection1710, oldProjection102]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8356 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (88, -8), (94, -1), (230, 24), (231, 48), (241, -8), (243, -32), (698, -8), (1057, 24), (1226, -16), (1293, 24), (1323, 48)]

def reductionPivot8356 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 3, -2], ![0, -2, -2, 4], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound8356 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5705).moment H =
      Integer.Sparse.eval reductionProjection8356 (momentVector H) := by
  have heq : reductionPivot8356 = (fun u v => (normalNode5705).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5705).moment H = injectiveMoment H reductionPivot8356 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5705).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8356 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8356 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8356 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8354, oldProjection1074, oldProjection900, reductionProjection8355] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8356 (0 : Fin 4)) = canonicalInput12272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8356 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8354 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8356 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12272 hH))).trans (reductionSound8354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8356 (1 : Fin 4)) = canonicalInput11720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8356 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1074 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8356 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11720 hH))).trans (oldProjectionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8356 (2 : Fin 4)) = canonicalInput11707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8356 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection900 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8356 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11707 hH))).trans (oldProjectionSound900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8356 (3 : Fin 4)) = canonicalInput11706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8356 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8355 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8356 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11706 hH))).trans (reductionSound8355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5705).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8356 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5705).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8356 (j : Fin 4)))
      2 144 144 2 ![144, 72, 144, 9] ![1, 2, 1, 16] reductionProjection8356 ![reductionProjection8354, oldProjection1074, oldProjection900, reductionProjection8355]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8357 : Integer.Sparse (Fin 1613) := [(82, 3), (88, -1), (241, -2), (243, -2), (295, -9), (297, -9), (302, -9), (698, -1)]

def reductionPivot8357 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 3, -1], ![0, -2, -2, 4], ![0, 2, 0, -2], ![1, 1, -1, -1]]

theorem reductionSound8357 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4672).moment H =
      Integer.Sparse.eval reductionProjection8357 (momentVector H) := by
  have heq : reductionPivot8357 = (fun u v => (normalNode4672).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4672).moment H = injectiveMoment H reductionPivot8357 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4672).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8357 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8357 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8357 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1090, reductionProjection2456, oldProjection458, oldProjection455] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8357 (0 : Fin 4)) = canonicalInput19116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8357 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1090 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8357 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1090 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19116 hH))).trans (oldProjectionSound1090 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8357 (1 : Fin 4)) = canonicalInput9603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8357 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8357 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9603 hH))).trans (reductionSound2456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8357 (2 : Fin 4)) = canonicalInput9518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8357 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection458 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8357 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection458 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9518 hH))).trans (oldProjectionSound458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8357 (3 : Fin 4)) = canonicalInput9513.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8357 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection455 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8357 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9513 hH))).trans (oldProjectionSound455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4672).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8357 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4672).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8357 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection8357 ![oldProjection1090, reductionProjection2456, oldProjection458, oldProjection455]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8358 : Integer.Sparse (Fin 1613) := [(70, -3), (77, -3), (88, 1), (91, 1), (243, 1)]

def reductionPivot8358 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 3, -2], ![-2, 4, -2, 0], ![3, -3, -1, 1]]

theorem reductionSound8358 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode9946).moment H =
      Integer.Sparse.eval reductionProjection8358 (momentVector H) := by
  have heq : reductionPivot8358 = (fun u v => (normalNode9946).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9946).moment H = injectiveMoment H reductionPivot8358 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9946).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9946).entries)).symm
  have hshape : reductionPivot8358 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8358 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8358 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection113, reductionProjection394, oldProjection104] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8358 (0 : Fin 3)) = canonicalInput19097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8358 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection113 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8358 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19097 hH))).trans (oldProjectionSound113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8358 (1 : Fin 3)) = canonicalInput27447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8358 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection394 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8358 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27447 hH))).trans (reductionSound394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8358 (2 : Fin 3)) = canonicalInput27449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8358 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection104 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8358 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27449 hH))).trans (oldProjectionSound104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9946).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8358 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9946).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8358 (j : Fin 3)))
      3 9 9 3 ![3, 1, 1] ![3, 9, 9] reductionProjection8358 ![oldProjection113, reductionProjection394, oldProjection104]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8359 : Integer.Sparse (Fin 1613) := [(70, 3), (76, 6), (77, 6), (88, -3), (90, -2), (91, -1), (230, 3), (231, 3), (241, -2), (243, -3), (698, -2), (700, -1), (1226, -1)]

def reductionPivot8359 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 3, -1], ![0, -2, -2, 4], ![1, -1, 0, 0], ![1, 2, -1, -2]]

theorem reductionSound8359 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4671).moment H =
      Integer.Sparse.eval reductionProjection8359 (momentVector H) := by
  have heq : reductionPivot8359 = (fun u v => (normalNode4671).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4671).moment H = injectiveMoment H reductionPivot8359 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4671).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8359 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8359 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8359 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8355, oldProjection990, reductionProjection2241, reductionProjection8358] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8359 (0 : Fin 4)) = canonicalInput11706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8359 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8355 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8359 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11706 hH))).trans (reductionSound8355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8359 (1 : Fin 4)) = canonicalInput9543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8359 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection990 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8359 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection990 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9543 hH))).trans (oldProjectionSound990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8359 (2 : Fin 4)) = canonicalInput9516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8359 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2241 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8359 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9516 hH))).trans (reductionSound2241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8359 (3 : Fin 4)) = canonicalInput9514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8359 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8358 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8359 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9514 hH))).trans (reductionSound8358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4671).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8359 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4671).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8359 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection8359 ![reductionProjection8355, oldProjection990, reductionProjection2241, reductionProjection8358]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8360 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -120), (20, 15), (70, -240), (76, -960), (77, -720), (82, -240), (88, 480), (90, 480), (91, 80), (94, 40), (230, -480), (231, -960), (241, 480), (243, 960), (295, 720), (297, 720), (302, 1440), (698, 800), (700, 320), (1057, -240), (1226, 640), (1251, 5), (1293, -240), (1323, -960)]

def reductionPivot8360 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 3, -1], ![0, -2, -2, 4], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound8360 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4670).moment H =
      Integer.Sparse.eval reductionProjection8360 (momentVector H) := by
  have heq : reductionPivot8360 = (fun u v => (normalNode4670).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4670).moment H = injectiveMoment H reductionPivot8360 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4670).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8360 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8360 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 18, 1440, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8360 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8356, oldProjection1946, reductionProjection8357, reductionProjection831, reductionProjection8359] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8360 (0 : Fin 5)) = (normalNode5705).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8356 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8360 (1 : Fin 5)) = canonicalInput9541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1946 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9541 hH))).trans (oldProjectionSound1946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8360 (2 : Fin 5)) = (normalNode4672).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8357 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8360 (3 : Fin 5)) = canonicalInput9512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection831 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9512 hH))).trans (reductionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8360 (4 : Fin 5)) = (normalNode4671).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8359 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8360 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4670).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8360 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4670).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8360 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 18, 1440, 18] ![10, 1, 80, 1, 80] reductionProjection8360 ![reductionProjection8356, oldProjection1946, reductionProjection8357, reductionProjection831, reductionProjection8359]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8361 : Integer.Sparse (Fin 1613) := [(1071, 1)]

theorem reductionSound8361 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1071).moment H =
      Integer.Sparse.eval reductionProjection8361 (momentVector H) := by
  have hc : coordinates (1071 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1071) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8361, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8362 : Integer.Sparse (Fin 1613) := [(20, -1), (55, 48), (70, 48), (76, 48), (79, 48), (83, 48), (84, 48), (94, 5), (243, -32), (698, -16), (1071, -144), (1225, -16), (1226, -32), (1251, 2)]

def reductionPivot8362 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 3, -1, -3]]

theorem reductionSound8362 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4673).moment H =
      Integer.Sparse.eval reductionProjection8362 (momentVector H) := by
  have heq : reductionPivot8362 = (fun u v => (normalNode4673).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4673).moment H = injectiveMoment H reductionPivot8362 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4673).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8362 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8362 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8362 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection153, reductionProjection8346, reductionProjection8361, reductionProjection306] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8362 (0 : Fin 4)) = canonicalInput5861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8362 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection153 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8362 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5861 hH))).trans (reductionSound153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8362 (1 : Fin 4)) = canonicalInput9503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8362 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8346 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8362 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9503 hH))).trans (reductionSound8346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8362 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1071).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8362 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8361 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8362 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8362 (3 : Fin 4)) = canonicalInput9524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8362 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8362 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9524 hH))).trans (reductionSound306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4673).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8362 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4673).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8362 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 144] ![2, 2, 288, 2] reductionProjection8362 ![reductionProjection153, reductionProjection8346, reductionProjection8361, reductionProjection306]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8363 : Integer.Sparse (Fin 1613) := [(406, -1), (421, -1), (767, -1), (1065, -1)]

def reductionPivot8363 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, 1, -2, 0], ![1, 2, 0, -3]]

theorem reductionSound8363 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4674).moment H =
      Integer.Sparse.eval reductionProjection8363 (momentVector H) := by
  have heq : reductionPivot8363 = (fun u v => (normalNode4674).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4674).moment H = injectiveMoment H reductionPivot8363 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4674).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8363 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8363 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8363 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4075, reductionProjection8345, reductionProjection4080, reductionProjection2259] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8363 (0 : Fin 4)) = canonicalInput5863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8363 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4075 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8363 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5863 hH))).trans (reductionSound4075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8363 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1065).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8363 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8345 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8363 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8363 (2 : Fin 4)) = canonicalInput9523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8363 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4080 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8363 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9523 hH))).trans (reductionSound4080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8363 (3 : Fin 4)) = canonicalInput9526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8363 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2259 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8363 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9526 hH))).trans (reductionSound2259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4674).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8363 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4674).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8363 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8363 ![reductionProjection4075, reductionProjection8345, reductionProjection4080, reductionProjection2259]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8364 : Integer.Sparse (Fin 1613) := [(70, 48), (77, 48), (79, 48), (84, 48), (88, -32), (90, -16), (91, -16), (94, 3), (243, -32), (1052, 48), (1071, -144), (1217, 48), (1226, -32), (1251, -1)]

def reductionPivot8364 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, -1, 0, 0], ![1, 3, -1, -3]]

theorem reductionSound8364 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4675).moment H =
      Integer.Sparse.eval reductionProjection8364 (momentVector H) := by
  have heq : reductionPivot8364 = (fun u v => (normalNode4675).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4675).moment H = injectiveMoment H reductionPivot8364 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4675).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8364 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8364 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8364 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1226, reductionProjection8358, reductionProjection8361, reductionProjection4262] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8364 (0 : Fin 4)) = canonicalInput9363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8364 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1226 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8364 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9363 hH))).trans (oldProjectionSound1226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8364 (1 : Fin 4)) = canonicalInput9514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8364 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8358 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8364 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9514 hH))).trans (reductionSound8358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8364 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1071).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8364 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8361 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8364 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8364 (3 : Fin 4)) = canonicalInput9522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8364 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4262 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8364 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9522 hH))).trans (reductionSound4262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4675).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8364 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4675).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8364 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 9] ![2, 32, 288, 32] reductionProjection8364 ![oldProjection1226, reductionProjection8358, reductionProjection8361, reductionProjection4262]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8365 : Integer.Sparse (Fin 1613) := [(76, 1), (84, 1), (421, -3), (428, -3), (682, 1), (1076, -3)]

def reductionPivot8365 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 3, -1], ![0, -2, -1, 3], ![0, 1, -2, 1], ![1, 2, 0, -3]]

theorem reductionSound8365 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4676).moment H =
      Integer.Sparse.eval reductionProjection8365 (momentVector H) := by
  have heq : reductionPivot8365 = (fun u v => (normalNode4676).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4676).moment H = injectiveMoment H reductionPivot8365 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4676).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8365 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8365 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8365 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4318, reductionProjection8348, reductionProjection4080, reductionProjection4307] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8365 (0 : Fin 4)) = canonicalInput19118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8365 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4318 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8365 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19118 hH))).trans (reductionSound4318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8365 (1 : Fin 4)) = canonicalInput9604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8365 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8348 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8365 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9604 hH))).trans (reductionSound8348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8365 (2 : Fin 4)) = canonicalInput9523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8365 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4080 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8365 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9523 hH))).trans (reductionSound4080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8365 (3 : Fin 4)) = canonicalInput9520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8365 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8365 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9520 hH))).trans (reductionSound4307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4676).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8365 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4676).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8365 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection8365 ![reductionProjection4318, reductionProjection8348, reductionProjection4080, reductionProjection4307]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8366 : Integer.Sparse (Fin 1613) := [(1260, 1)]

theorem reductionSound8366 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1260).moment H =
      Integer.Sparse.eval reductionProjection8366 (momentVector H) := by
  have hc : coordinates (1260 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1260) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8366, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8367 : Integer.Sparse (Fin 1613) := [(421, -1), (502, -1), (1071, -1), (1260, -1)]

def reductionPivot8367 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, -1, -1, 1], ![1, 2, 0, -3]]

theorem reductionSound8367 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4677).moment H =
      Integer.Sparse.eval reductionProjection8367 (momentVector H) := by
  have heq : reductionPivot8367 = (fun u v => (normalNode4677).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4677).moment H = injectiveMoment H reductionPivot8367 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4677).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8367 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8367 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8367 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8366, oldProjection494, reductionProjection4080, reductionProjection8361] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8367 (0 : Fin 4)) = canonicalInput11591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8367 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8366 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8367 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11591 hH))).trans (reductionSound8366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8367 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4222 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8367 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection494 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8367 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4222 hH))).trans (oldProjectionSound494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8367 (2 : Fin 4)) = canonicalInput9523.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8367 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4080 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8367 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9523 hH))).trans (reductionSound4080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8367 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1071).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8367 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8361 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8367 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4677).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8367 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4677).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8367 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8367 ![reductionProjection8366, oldProjection494, reductionProjection4080, reductionProjection8361]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8368 : Integer.Sparse (Fin 1613) := [(1350, 1)]

theorem reductionSound8368 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1350).moment H =
      Integer.Sparse.eval reductionProjection8368 (momentVector H) := by
  have hc : coordinates (1350 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1350) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8368, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8369 : Integer.Sparse (Fin 1613) := [(1246, 1)]

theorem reductionSound8369 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1246).moment H =
      Integer.Sparse.eval reductionProjection8369 (momentVector H) := by
  have hc : coordinates (1246 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1246) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8369, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8370 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (94, -15), (549, -720), (698, -80), (1246, -720), (1251, -20), (1323, 240), (1350, -720)]

def reductionPivot8370 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 3, -2], ![0, -2, -1, 3], ![1, -1, -1, 1], ![1, 1, -1, -1]]

theorem reductionSound8370 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5709).moment H =
      Integer.Sparse.eval reductionProjection8370 (momentVector H) := by
  have heq : reductionPivot8370 = (fun u v => (normalNode5709).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5709).moment H = injectiveMoment H reductionPivot8370 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5709).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8370 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8370 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8370 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8368, oldProjection502, oldProjection948, reductionProjection8369] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8370 (0 : Fin 4)) = canonicalInput12273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8370 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8368 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8370 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12273 hH))).trans (reductionSound8368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8370 (1 : Fin 4)) = canonicalInput11731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8370 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection502 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8370 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11731 hH))).trans (oldProjectionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8370 (2 : Fin 4)) = canonicalInput11709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8370 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8370 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11709 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8370 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1246).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8370 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8369 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8370 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5709).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8370 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5709).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8370 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection8370 ![reductionProjection8368, oldProjection502, oldProjection948, reductionProjection8369]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8371 : Integer.Sparse (Fin 1613) := [(76, 48), (79, 48), (94, -1), (565, -144), (698, -16), (1071, -144), (1226, -16), (1246, -144), (1251, 3)]

def reductionPivot8371 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 3, -1], ![0, -2, -1, 3], ![1, -1, -1, 1], ![1, 2, -1, -2]]

theorem reductionSound8371 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4679).moment H =
      Integer.Sparse.eval reductionProjection8371 (momentVector H) := by
  have heq : reductionPivot8371 = (fun u v => (normalNode4679).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4679).moment H = injectiveMoment H reductionPivot8371 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4679).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8371 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8371 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8371 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8369, oldProjection505, reductionProjection306, reductionProjection8361] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8371 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1246).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8371 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8369 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8371 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8371 (1 : Fin 4)) = canonicalInput9561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8371 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8371 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9561 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8371 (2 : Fin 4)) = canonicalInput9524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8371 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8371 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9524 hH))).trans (reductionSound306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8371 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1071).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8371 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8361 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8371 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4679).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8371 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4679).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8371 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 1] ![288, 288, 2, 288] reductionProjection8371 ![reductionProjection8369, oldProjection505, reductionProjection306, reductionProjection8361]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8372 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -960), (79, -480), (94, 110), (549, 1440), (565, 1440), (698, 720), (768, 720), (1069, -1440), (1071, 720), (1226, 320), (1227, 160), (1246, 1440), (1251, -25), (1323, -480), (1350, 720)]

def reductionPivot8372 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 3, -1], ![0, -2, -1, 3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]

theorem reductionSound8372 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4678).moment H =
      Integer.Sparse.eval reductionProjection8372 (momentVector H) := by
  have heq : reductionPivot8372 = (fun u v => (normalNode4678).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4678).moment H = injectiveMoment H reductionPivot8372 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4678).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8372 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8372 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1, 36, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8372 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8370, oldProjection1942, reductionProjection7032, reductionProjection307, reductionProjection8371] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8372 (0 : Fin 5)) = (normalNode5709).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8370 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8372 (1 : Fin 5)) = canonicalInput9557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1942 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9557 hH))).trans (oldProjectionSound1942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8372 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1069).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7032 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7032 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8372 (3 : Fin 5)) = canonicalInput9521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection307 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9521 hH))).trans (reductionSound307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8372 (4 : Fin 5)) = (normalNode4679).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8371 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8372 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8371 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8371 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4678).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8372 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4678).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8372 (j : Fin 5)))
      1 1440 1440 1 ![1440, 144, 1, 36, 288] ![1, 10, 1440, 40, 5] reductionProjection8372 ![reductionProjection8370, oldProjection1942, reductionProjection7032, reductionProjection307, reductionProjection8371]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8373 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (94, -15), (160, -720), (1125, -720), (1250, -60), (1251, 15), (1261, -720)]

def reductionPivot8373 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 2, -1, 1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, 0, 1, -2]]

theorem reductionSound8373 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5832).moment H =
      Integer.Sparse.eval reductionProjection8373 (momentVector H) := by
  have heq : reductionPivot8373 = (fun u v => (normalNode5832).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5832).moment H = injectiveMoment H reductionPivot8373 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5832).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8373 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8373 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8373 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1222, oldProjection407, reductionProjection1047, reductionProjection1030] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8373 (0 : Fin 4)) = canonicalInput22740.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8373 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8373 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22740 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8373 (1 : Fin 4)) = canonicalInput12065.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8373 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection407 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8373 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12065 hH))).trans (oldProjectionSound407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8373 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1261).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8373 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1047 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8373 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8373 (3 : Fin 4)) = canonicalInput11962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8373 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8373 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11962 hH))).trans (reductionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5832).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8373 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5832).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8373 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection8373 ![oldProjection1222, oldProjection407, reductionProjection1047, reductionProjection1030]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8374 : Integer.Sparse (Fin 1613) := [(1072, 1)]

theorem reductionSound8374 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1072).moment H =
      Integer.Sparse.eval reductionProjection8374 (momentVector H) := by
  have hc : coordinates (1072 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1072) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8374, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8375 : Integer.Sparse (Fin 1613) := [(19, 4), (94, 1), (147, -144), (151, -144), (159, -144), (1058, 48), (1223, 48), (1251, 1)]

def reductionPivot8375 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, -1, -1, 2], ![1, 3, -1, -3]]

theorem reductionSound8375 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4681).moment H =
      Integer.Sparse.eval reductionProjection8375 (momentVector H) := by
  have heq : reductionPivot8375 = (fun u v => (normalNode4681).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4681).moment H = injectiveMoment H reductionPivot8375 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4681).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8375 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8375 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8375 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1329, reductionProjection1147, reductionProjection1145, reductionProjection547] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8375 (0 : Fin 4)) = canonicalInput22392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8375 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8375 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22392 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8375 (1 : Fin 4)) = canonicalInput9612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8375 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1147 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8375 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9612 hH))).trans (reductionSound1147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8375 (2 : Fin 4)) = canonicalInput9534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8375 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1145 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8375 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9534 hH))).trans (reductionSound1145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8375 (3 : Fin 4)) = canonicalInput9529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8375 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection547 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8375 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection547 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9529 hH))).trans (reductionSound547 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4681).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8375 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4681).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8375 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection8375 ![oldProjection1329, reductionProjection1147, reductionProjection1145, reductionProjection547]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8376 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -60), (94, 25), (147, 720), (151, 720), (159, 720), (160, 720), (162, 720), (163, 720), (241, 80), (247, 80), (436, 720), (458, 720), (503, 1440), (698, 80), (1050, -240), (1052, -240), (1055, -240), (1058, -240), (1072, -1440), (1125, 720), (1219, -240), (1223, -240), (1250, 60), (1251, -15), (1261, 720)]

def reductionPivot8376 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 2, 0, -3]]

theorem reductionSound8376 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4680).moment H =
      Integer.Sparse.eval reductionProjection8376 (momentVector H) := by
  have heq : reductionPivot8376 = (fun u v => (normalNode4680).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4680).moment H = injectiveMoment H reductionPivot8376 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4680).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot8376 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8376 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 288, 1, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8376 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8373, reductionProjection4401, reductionProjection4362, reductionProjection8374, reductionProjection8375] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8376 (0 : Fin 5)) = canonicalInput11596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8373 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11596 hH))).trans (reductionSound8373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8376 (1 : Fin 5)) = canonicalInput9547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4401 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9547 hH))).trans (reductionSound4401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8376 (2 : Fin 5)) = canonicalInput9530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4362 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4362 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9530 hH))).trans (reductionSound4362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8376 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1072).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8374 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8376 (4 : Fin 5)) = (normalNode4681).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8375 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8376 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4680).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8376 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4680).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8376 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 288, 1, 288] ![1, 2, 5, 1440, 5] reductionProjection8376 ![reductionProjection8373, reductionProjection4401, reductionProjection4362, reductionProjection8374, reductionProjection8375]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8377 : Integer.Sparse (Fin 1613) := [(147, -1), (421, -1), (555, -1), (1067, -1)]

def reductionPivot8377 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 3, -1, -3]]

theorem reductionSound8377 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4682).moment H =
      Integer.Sparse.eval reductionProjection8377 (momentVector H) := by
  have heq : reductionPivot8377 = (fun u v => (normalNode4682).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4682).moment H = injectiveMoment H reductionPivot8377 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4682).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8377 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8377 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8377 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4080, reductionProjection8350, reductionProjection1145, reductionProjection1451] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8377 (0 : Fin 4)) = canonicalInput5864.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8377 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4080 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8377 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4080 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5864 hH))).trans (reductionSound4080 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8377 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1067).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8377 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8350 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8377 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8377 (2 : Fin 4)) = canonicalInput9534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8377 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1145 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8377 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9534 hH))).trans (reductionSound1145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8377 (3 : Fin 4)) = canonicalInput9537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8377 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8377 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9537 hH))).trans (reductionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4682).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8377 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4682).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8377 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8377 ![reductionProjection4080, reductionProjection8350, reductionProjection1145, reductionProjection1451]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8378 : Integer.Sparse (Fin 1613) := [(395, -1), (436, -1), (761, -1), (1068, -1)]

def reductionPivot8378 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 3, -1], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 2, 0, -3]]

theorem reductionSound8378 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4683).moment H =
      Integer.Sparse.eval reductionProjection8378 (momentVector H) := by
  have heq : reductionPivot8378 = (fun u v => (normalNode4683).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4683).moment H = injectiveMoment H reductionPivot8378 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4683).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8378 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8378 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8378 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4078, reductionProjection189, reductionProjection1062, reductionProjection178] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8378 (0 : Fin 4)) = canonicalInput5865.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8378 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8378 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5865 hH))).trans (reductionSound4078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8378 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1068).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8378 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection189 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8378 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8378 (2 : Fin 4)) = canonicalInput9536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8378 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1062 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8378 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9536 hH))).trans (reductionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8378 (3 : Fin 4)) = canonicalInput9538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8378 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8378 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9538 hH))).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4683).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8378 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4683).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8378 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8378 ![reductionProjection4078, reductionProjection189, reductionProjection1062, reductionProjection178]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8379 : Integer.Sparse (Fin 1613) := [(77, 1), (79, 1), (147, -3), (150, -3), (162, -3), (1052, 1)]

def reductionPivot8379 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, 0, -2, 2], ![1, 3, -1, -3]]

theorem reductionSound8379 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4684).moment H =
      Integer.Sparse.eval reductionProjection8379 (momentVector H) := by
  have heq : reductionPivot8379 = (fun u v => (normalNode4684).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4684).moment H = injectiveMoment H reductionPivot8379 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4684).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8379 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8379 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8379 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1041, reductionProjection1039, reductionProjection1145, reductionProjection1038] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8379 (0 : Fin 4)) = canonicalInput19119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8379 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1041 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8379 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19119 hH))).trans (reductionSound1041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8379 (1 : Fin 4)) = canonicalInput9608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8379 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1039 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8379 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1039 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9608 hH))).trans (reductionSound1039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8379 (2 : Fin 4)) = canonicalInput9534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8379 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1145 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8379 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9534 hH))).trans (reductionSound1145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8379 (3 : Fin 4)) = canonicalInput9531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8379 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1038 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8379 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1038 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9531 hH))).trans (reductionSound1038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4684).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8379 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4684).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8379 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection8379 ![reductionProjection1041, reductionProjection1039, reductionProjection1145, reductionProjection1038]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8380 : Integer.Sparse (Fin 1613) := [(1073, 1)]

theorem reductionSound8380 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1073).moment H =
      Integer.Sparse.eval reductionProjection8380 (momentVector H) := by
  have hc : coordinates (1073 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1073) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8380, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8381 : Integer.Sparse (Fin 1613) := [(147, -1), (436, -1), (503, -1), (1125, -1)]

def reductionPivot8381 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 3, -1], ![0, -2, 0, 2], ![1, -1, -2, 2], ![1, 2, 0, -3]]

theorem reductionSound8381 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4688).moment H =
      Integer.Sparse.eval reductionProjection8381 (momentVector H) := by
  have heq : reductionPivot8381 = (fun u v => (normalNode4688).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4688).moment H = injectiveMoment H reductionPivot8381 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4688).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8381 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8381 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8381 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1030, reductionProjection1078, reductionProjection1062, reductionProjection1145] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8381 (0 : Fin 4)) = canonicalInput11601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8381 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8381 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11601 hH))).trans (reductionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8381 (1 : Fin 4)) = canonicalInput9560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8381 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1078 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8381 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9560 hH))).trans (reductionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8381 (2 : Fin 4)) = canonicalInput9536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8381 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1062 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8381 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9536 hH))).trans (reductionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8381 (3 : Fin 4)) = canonicalInput9534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8381 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1145 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8381 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9534 hH))).trans (reductionSound1145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4688).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8381 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4688).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8381 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8381 ![reductionProjection1030, reductionProjection1078, reductionProjection1062, reductionProjection1145]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8382 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -5), (147, 720), (418, 720), (421, 720), (423, 720), (433, 720), (435, 720), (436, 720), (502, 720), (503, 720), (553, 720), (555, 720), (565, 720), (698, 80), (1058, -240), (1071, 720), (1073, -1440), (1125, 720), (1226, 80), (1251, -40), (1260, 720)]

def reductionPivot8382 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 0, -3]]

theorem reductionSound8382 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4685).moment H =
      Integer.Sparse.eval reductionProjection8382 (momentVector H) := by
  have heq : reductionPivot8382 = (fun u v => (normalNode4685).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4685).moment H = injectiveMoment H reductionPivot8382 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4685).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8382 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8382 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8382 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7345, reductionProjection8367, reductionProjection8380, reductionProjection8381, reductionProjection4686] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8382 (0 : Fin 5)) = canonicalInput9366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7345 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9366 hH))).trans (reductionSound7345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8382 (1 : Fin 5)) = (normalNode4677).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8367 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8382 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1073).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8380 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8382 (3 : Fin 5)) = (normalNode4688).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8381 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8382 (4 : Fin 5)) = canonicalInput9533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4686 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8382 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9533 hH))).trans (reductionSound4686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4685).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8382 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4685).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8382 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 1, 2, 2] ![1, 720, 1440, 720, 720] reductionProjection8382 ![reductionProjection7345, reductionProjection8367, reductionProjection8380, reductionProjection8381, reductionProjection4686]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8383 : Integer.Sparse (Fin 1613) := [(147, -1), (418, -1), (435, -1), (1071, -1)]

def reductionPivot8383 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 3, -1], ![0, -2, 0, 2], ![1, -1, -1, 1], ![1, 3, -1, -3]]

theorem reductionSound8383 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4686).moment H =
      Integer.Sparse.eval reductionProjection8383 (momentVector H) := by
  have heq : reductionPivot8383 = (fun u v => (normalNode4686).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4686).moment H = injectiveMoment H reductionPivot8383 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4686).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8383 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8383 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8383 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection471, reductionProjection8361, reductionProjection1145, reductionProjection4110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8383 (0 : Fin 4)) = canonicalInput9370.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8383 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection471 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8383 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection471 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9370 hH))).trans (oldProjectionSound471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8383 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1071).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8383 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8361 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8383 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8383 (2 : Fin 4)) = canonicalInput9534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8383 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1145 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8383 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9534 hH))).trans (reductionSound1145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8383 (3 : Fin 4)) = canonicalInput9535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8383 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8383 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9535 hH))).trans (reductionSound4110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4686).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8383 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4686).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8383 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8383 ![oldProjection471, reductionProjection8361, reductionProjection1145, reductionProjection4110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

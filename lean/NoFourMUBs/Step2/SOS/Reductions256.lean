import NoFourMUBs.Step2.SOS.Canonical136
import NoFourMUBs.Step2.SOS.Canonical137
import NoFourMUBs.Step2.SOS.Canonical138
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical167
import NoFourMUBs.Step2.SOS.Canonical168
import NoFourMUBs.Step2.SOS.Canonical173
import NoFourMUBs.Step2.SOS.Canonical174
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions028
import NoFourMUBs.Step2.SOS.Reductions029
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions063
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions098
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions157
import NoFourMUBs.Step2.SOS.Reductions158
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions196
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions215
import NoFourMUBs.Step2.SOS.Reductions226
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions244
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions252
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions255
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical118
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical119
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical151
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8192 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 45), (610, 720), (666, 720), (668, 720), (697, -240), (698, 560), (704, 80), (890, 720), (919, 1440), (1005, 720), (1007, -1440), (1014, 720), (1015, 720), (1016, 720), (1059, 80), (1226, 240), (1227, 320), (1251, -70), (1389, -240)]

def reductionPivot8192 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -2, -1, 2], ![1, 0, 0, -1]]

theorem reductionSound8192 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4496).moment H =
      Integer.Sparse.eval reductionProjection8192 (momentVector H) := by
  have heq : reductionPivot8192 = (fun u v => (normalNode4496).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4496).moment H = injectiveMoment H reductionPivot8192 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4496).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8192 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8192 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 1440, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8192 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2044, oldProjection1784, reductionProjection7973, reductionProjection930, reductionProjection904] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8192 (0 : Fin 5)) = canonicalInput9439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2044 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2044 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9439 hH))).trans (oldProjectionSound2044 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8192 (1 : Fin 5)) = canonicalInput8811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1784 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8811 hH))).trans (oldProjectionSound1784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8192 (2 : Fin 5)) = (normalNode4537).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7973 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8192 (3 : Fin 5)) = canonicalInput8765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection930 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8765 hH))).trans (reductionSound930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8192 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1007).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection904 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8192 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4496).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8192 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4496).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8192 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 1440, 1440, 1] ![1, 20, 1, 1, 1440] reductionProjection8192 ![oldProjection2044, oldProjection1784, reductionProjection7973, reductionProjection930, reductionProjection904]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8193 : Integer.Sparse (Fin 1613) := [(94, -1), (698, -48), (919, -144), (1014, -144), (1015, -144), (1226, -48), (1227, -32), (1251, 3)]

def reductionPivot8193 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, -2, -1, 2], ![1, 1, 1, -3]]

theorem reductionSound8193 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4497).moment H =
      Integer.Sparse.eval reductionProjection8193 (momentVector H) := by
  have heq : reductionPivot8193 = (fun u v => (normalNode4497).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4497).moment H = injectiveMoment H reductionPivot8193 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4497).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8193 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8193 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8193 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection612, oldProjection1249, oldProjection619, oldProjection618] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8193 (0 : Fin 4)) = canonicalInput9441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8193 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection612 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8193 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9441 hH))).trans (oldProjectionSound612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8193 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3827 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8193 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1249 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8193 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3827 hH))).trans (oldProjectionSound1249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8193 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node619⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8193 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection619 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8193 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8193 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8193 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection618 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8193 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4497).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8193 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4497).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8193 (j : Fin 4)))
      2 288 288 2 ![1, 144, 1, 1] ![288, 2, 288, 288] reductionProjection8193 ![oldProjection612, oldProjection1249, oldProjection619, oldProjection618]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8194 : Integer.Sparse (Fin 1613) := [(1020, 1)]

theorem reductionSound8194 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1020).moment H =
      Integer.Sparse.eval reductionProjection8194 (momentVector H) := by
  have hc : coordinates (1020 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1020) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8194, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8195 : Integer.Sparse (Fin 1613) := [(809, -1), (1020, -1), (1022, -1), (1206, -1)]

def reductionPivot8195 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -3, -1, 3], ![1, 1, -1, -1]]

theorem reductionSound8195 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4552).moment H =
      Integer.Sparse.eval reductionProjection8195 (momentVector H) := by
  have heq : reductionPivot8195 = (fun u v => (normalNode4552).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4552).moment H = injectiveMoment H reductionPivot8195 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4552).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8195 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8195 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8195 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection604, reductionProjection1964, reductionProjection925, reductionProjection8194] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8195 (0 : Fin 4)) = canonicalInput10803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8195 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection604 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8195 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection604 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10803 hH))).trans (oldProjectionSound604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8195 (1 : Fin 4)) = canonicalInput8919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8195 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1964 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8195 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8919 hH))).trans (reductionSound1964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8195 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1022).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8195 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection925 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8195 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8195 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1020).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8195 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8194 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8195 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4552).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8195 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4552).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8195 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8195 ![oldProjection604, reductionProjection1964, reductionProjection925, reductionProjection8194]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8196 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, -5), (174, 720), (418, 720), (483, 1440), (484, 720), (610, 1440), (660, 720), (698, 400), (809, 720), (1005, 720), (1020, 720), (1022, 2160), (1058, -480), (1206, 1440), (1219, -240), (1223, -480), (1226, 400), (1227, 240), (1251, -60)]

def reductionPivot8196 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -3, -1, 3], ![1, 1, -1, -1]]

theorem reductionSound8196 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4499).moment H =
      Integer.Sparse.eval reductionProjection8196 (momentVector H) := by
  have heq : reductionPivot8196 = (fun u v => (normalNode4499).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4499).moment H = injectiveMoment H reductionPivot8196 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4499).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8196 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8196 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 2, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8196 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7356, reductionProjection1965, reductionProjection8195, reductionProjection8079, reductionProjection8103] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8196 (0 : Fin 5)) = canonicalInput9443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7356 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9443 hH))).trans (reductionSound7356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8196 (1 : Fin 5)) = canonicalInput8839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1965 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8839 hH))).trans (reductionSound1965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8196 (2 : Fin 5)) = (normalNode4552).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8195 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8196 (3 : Fin 5)) = canonicalInput8809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8079 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8079 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8809 hH))).trans (reductionSound8079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8196 (4 : Fin 5)) = canonicalInput8808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8103 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8196 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8808 hH))).trans (reductionSound8103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4499).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8196 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4499).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8196 (j : Fin 5)))
      1 1440 1440 1 ![2, 2, 2, 1440, 288] ![720, 720, 720, 1, 5] reductionProjection8196 ![reductionProjection7356, reductionProjection1965, reductionProjection8195, reductionProjection8079, reductionProjection8103]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8197 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (94, 7), (243, -32), (698, -16), (1022, -144), (1058, 96), (1223, 96), (1225, -16), (1226, -32), (1251, 4)]

def reductionPivot8197 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -2, -2, 3], ![1, 0, 0, -1]]

theorem reductionSound8197 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4553).moment H =
      Integer.Sparse.eval reductionProjection8197 (momentVector H) := by
  have heq : reductionPivot8197 = (fun u v => (normalNode4553).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4553).moment H = injectiveMoment H reductionPivot8197 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4553).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8197 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8197 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8197 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1329, oldProjection1329, oldProjection1200, reductionProjection925] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8197 (0 : Fin 4)) = canonicalInput10805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8197 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8197 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10805 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8197 (1 : Fin 4)) = canonicalInput8922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8197 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8197 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8922 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8197 (2 : Fin 4)) = canonicalInput8877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8197 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1200 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8197 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8877 hH))).trans (oldProjectionSound1200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8197 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1022).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8197 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection925 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8197 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4553).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8197 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4553).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8197 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection8197 ![oldProjection1329, oldProjection1329, oldProjection1200, reductionProjection925]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8198 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -80), (20, 5), (94, 35), (169, 720), (174, 2160), (241, 160), (243, 240), (247, 160), (484, 720), (610, 720), (698, 1040), (700, 80), (1022, 720), (1050, -240), (1052, -240), (1055, -480), (1058, -720), (1059, 80), (1219, -720), (1223, -960), (1225, 80), (1226, 560), (1227, 560), (1251, -90)]

def reductionPivot8198 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 0, 0, -1]]

theorem reductionSound8198 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4500).moment H =
      Integer.Sparse.eval reductionProjection8198 (momentVector H) := by
  have heq : reductionPivot8198 = (fun u v => (normalNode4500).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4500).moment H = injectiveMoment H reductionPivot8198 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4500).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8198 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8198 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 72, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8198 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2043, oldProjection1502, reductionProjection8197, oldProjection1784, reductionProjection892] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8198 (0 : Fin 5)) = canonicalInput9444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2043 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2043 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9444 hH))).trans (oldProjectionSound2043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8198 (1 : Fin 5)) = canonicalInput8840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1502 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8840 hH))).trans (oldProjectionSound1502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8198 (2 : Fin 5)) = (normalNode4553).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8197 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8198 (3 : Fin 5)) = canonicalInput8811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1784 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8811 hH))).trans (oldProjectionSound1784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8198 (4 : Fin 5)) = (normalNode4551).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection892 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8198 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4500).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8198 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4500).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8198 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 72, 18] ![1, 1, 5, 20, 80] reductionProjection8198 ![oldProjection2043, oldProjection1502, reductionProjection8197, oldProjection1784, reductionProjection892]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8199 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (158, -720), (241, -80), (243, -80), (691, 240), (694, 240), (698, -240), (1047, 240), (1055, 240), (1057, 240), (1058, 240), (1226, -80), (1227, -80), (1251, 30)]

def reductionPivot8199 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, -3, 3]]

theorem reductionSound8199 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4502).moment H =
      Integer.Sparse.eval reductionProjection8199 (momentVector H) := by
  have heq : reductionPivot8199 = (fun u v => (normalNode4502).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4502).moment H = injectiveMoment H reductionPivot8199 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4502).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8199 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8199 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8199 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection791, reductionProjection1170, reductionProjection7610, oldProjection828] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8199 (0 : Fin 4)) = canonicalInput9447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8199 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection791 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8199 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9447 hH))).trans (oldProjectionSound791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8199 (1 : Fin 4)) = canonicalInput8855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8199 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1170 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8199 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8855 hH))).trans (reductionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8199 (2 : Fin 4)) = canonicalInput8842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8199 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7610 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8199 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7610 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8842 hH))).trans (reductionSound7610 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8199 (3 : Fin 4)) = canonicalInput8841.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8199 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection828 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8199 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection828 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8841 hH))).trans (oldProjectionSound828 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4502).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8199 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4502).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8199 (j : Fin 4)))
      2 1440 1440 2 ![144, 1, 9, 720] ![10, 1440, 160, 2] reductionProjection8199 ![oldProjection791, reductionProjection1170, reductionProjection7610, oldProjection828]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8200 : Integer.Sparse (Fin 1613) := [(141, -1), (174, -1), (1018, -1), (1021, -1)]

def reductionPivot8200 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -2, -3, 4], ![1, 1, 0, -2]]

theorem reductionSound8200 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4503).moment H =
      Integer.Sparse.eval reductionProjection8200 (momentVector H) := by
  have heq : reductionPivot8200 = (fun u v => (normalNode4503).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4503).moment H = injectiveMoment H reductionPivot8200 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4503).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8200 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8200 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8200 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection403, reductionProjection6298, oldProjection409, reductionProjection7887] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8200 (0 : Fin 4)) = canonicalInput9451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8200 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection403 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8200 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9451 hH))).trans (oldProjectionSound403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8200 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1021).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8200 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6298 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8200 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8200 (2 : Fin 4)) = canonicalInput8860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8200 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection409 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8200 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8860 hH))).trans (oldProjectionSound409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8200 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1018).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8200 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7887 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8200 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4503).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8200 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4503).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8200 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8200 ![oldProjection403, reductionProjection6298, oldProjection409, reductionProjection7887]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8201 : Integer.Sparse (Fin 1613) := [(586, -1), (592, -1), (659, -1), (1020, -1)]

def reductionPivot8201 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 0, 2, -2], ![1, -3, -1, 3], ![1, 2, -2, -1]]

theorem reductionSound8201 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4508).moment H =
      Integer.Sparse.eval reductionProjection8201 (momentVector H) := by
  have heq : reductionPivot8201 = (fun u v => (normalNode4508).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4508).moment H = injectiveMoment H reductionPivot8201 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4508).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8201 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8201 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8201 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4777, reductionProjection8194, oldProjection507, reductionProjection5849] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8201 (0 : Fin 4)) = canonicalInput11111.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8201 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4777 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8201 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11111 hH))).trans (reductionSound4777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8201 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1020).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8201 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8194 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8201 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8201 (2 : Fin 4)) = canonicalInput8720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8201 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection507 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8201 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8720 hH))).trans (oldProjectionSound507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8201 (3 : Fin 4)) = canonicalInput8718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8201 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5849 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8201 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5849 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8718 hH))).trans (reductionSound5849 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4508).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8201 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4508).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8201 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8201 ![reductionProjection4777, reductionProjection8194, oldProjection507, reductionProjection5849]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8202 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (478, 720), (479, 720), (483, 720), (577, 720), (586, 720), (592, 720), (602, 720), (610, 720), (659, 720), (698, 160), (809, 720), (924, 720), (991, -1440), (1020, 720), (1022, 1440), (1206, 720), (1221, -240), (1226, 80), (1227, 80), (1251, -30)]

def reductionPivot8202 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -3, -1, 3], ![1, 1, -1, -1]]

theorem reductionSound8202 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4506).moment H =
      Integer.Sparse.eval reductionProjection8202 (momentVector H) := by
  have heq : reductionPivot8202 = (fun u v => (normalNode4506).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4506).moment H = injectiveMoment H reductionPivot8202 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4506).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8202 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8202 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 1, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8202 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2118, reductionProjection1965, reductionProjection5068, reductionProjection1973, reductionProjection8201] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8202 (0 : Fin 5)) = canonicalInput10729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2118 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10729 hH))).trans (reductionSound2118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8202 (1 : Fin 5)) = canonicalInput8854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1965 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8854 hH))).trans (reductionSound1965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8202 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code991).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5068 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5068 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5068 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8202 (3 : Fin 5)) = (normalNode4509).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1973 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8202 (4 : Fin 5)) = (normalNode4508).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8201 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8202 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4506).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8202 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4506).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8202 (j : Fin 5)))
      1 1440 1440 1 ![2, 2, 1, 1440, 2] ![720, 720, 1440, 1, 720] reductionProjection8202 ![reductionProjection2118, reductionProjection1965, reductionProjection5068, reductionProjection1973, reductionProjection8201]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8203 : Integer.Sparse (Fin 1613) := [(19, -1), (106, -4), (243, -8), (704, -4), (996, -36), (1057, 12), (1060, 12), (1223, 24), (1225, -8), (1226, -4), (1251, -1)]

def reductionPivot8203 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 1, -4, 3], ![1, -2, 3, -2], ![1, 0, 0, -1]]

theorem reductionSound8203 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode4510).moment H =
      Integer.Sparse.eval reductionProjection8203 (momentVector H) := by
  have heq : reductionPivot8203 = (fun u v => (normalNode4510).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4510).moment H = injectiveMoment H reductionPivot8203 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4510).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8203 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8203 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8203 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1230, reductionProjection701, reductionProjection7897, reductionProjection6653] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8203 (0 : Fin 4)) = canonicalInput11114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8203 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1230 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8203 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1230 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11114 hH))).trans (oldProjectionSound1230 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8203 (1 : Fin 4)) = canonicalInput8889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8203 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection701 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8203 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection701 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8889 hH))).trans (reductionSound701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8203 (2 : Fin 4)) = canonicalInput8730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8203 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7897 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8203 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8730 hH))).trans (reductionSound7897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8203 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code996).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8203 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6653 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8203 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4510).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8203 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4510).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8203 (j : Fin 4)))
      2 72 144 4 ![144, 72, 144, 1] ![1, 2, 1, 144] reductionProjection8203 ![oldProjection1230, reductionProjection701, reductionProjection7897, reductionProjection6653]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8204 : Integer.Sparse (Fin 1613) := [(19, 4), (94, -3), (243, -16), (698, -16), (704, 16), (920, -144), (995, -144), (1014, -144), (1251, -3)]

def reductionPivot8204 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, 1, -4, 3], ![0, 1, 1, -2], ![1, -2, 2, -1]]

theorem reductionSound8204 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4511).moment H =
      Integer.Sparse.eval reductionProjection8204 (momentVector H) := by
  have heq : reductionPivot8204 = (fun u v => (normalNode4511).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4511).moment H = injectiveMoment H reductionPivot8204 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4511).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot8204 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8204 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8204 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection897, oldProjection618, reductionProjection8002, reductionProjection7612] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8204 (0 : Fin 4)) = canonicalInput21784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8204 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection897 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8204 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21784 hH))).trans (oldProjectionSound897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8204 (1 : Fin 4)) = canonicalInput8992.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8204 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection618 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8204 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8992 hH))).trans (oldProjectionSound618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8204 (2 : Fin 4)) = canonicalInput8733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8204 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8002 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8204 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8733 hH))).trans (reductionSound8002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8204 (3 : Fin 4)) = canonicalInput8728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8204 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7612 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8204 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8728 hH))).trans (reductionSound7612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4511).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8204 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4511).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8204 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection8204 ![oldProjection897, oldProjection618, reductionProjection8002, reductionProjection7612]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8205 : Integer.Sparse (Fin 1613) := [(992, 1)]

theorem reductionSound8205 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code992).moment H =
      Integer.Sparse.eval reductionProjection8205 (momentVector H) := by
  have hc : coordinates (992 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code992) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8205, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8206 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -3), (94, 10), (243, -112), (992, -144), (1214, 48), (1223, 48), (1225, -64), (1226, -64), (1251, -3)]

def reductionPivot8206 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, -4, 3], ![0, 1, 2, -3], ![1, -1, 1, -1]]

theorem reductionSound8206 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4512).moment H =
      Integer.Sparse.eval reductionProjection8206 (momentVector H) := by
  have heq : reductionPivot8206 = (fun u v => (normalNode4512).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4512).moment H = injectiveMoment H reductionPivot8206 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4512).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8206 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8206 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8206 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1121, reductionProjection6909, reductionProjection6563, reductionProjection8205] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8206 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1121⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8206 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1121 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8206 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8206 (1 : Fin 4)) = canonicalInput8985.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8206 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6909 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8206 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8985 hH))).trans (reductionSound6909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8206 (2 : Fin 4)) = canonicalInput8731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8206 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6563 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8206 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8731 hH))).trans (reductionSound6563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8206 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code992).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8206 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8205 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8206 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8205 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4512).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8206 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4512).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8206 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 1] ![4, 2, 2, 288] reductionProjection8206 ![oldProjection1121, reductionProjection6909, reductionProjection6563, reductionProjection8205]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8207 : Integer.Sparse (Fin 1613) := [(1002, 1)]

theorem reductionSound8207 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1002).moment H =
      Integer.Sparse.eval reductionProjection8207 (momentVector H) := by
  have hc : coordinates (1002 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1002) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8207, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8208 : Integer.Sparse (Fin 1613) := [(90, -1), (698, -2), (700, 1), (782, -9), (783, -9), (1002, -9), (1059, -1)]

def reductionPivot8208 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 2, 0, -2], ![1, -3, 2, 0]]

theorem reductionSound8208 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4524).moment H =
      Integer.Sparse.eval reductionProjection8208 (momentVector H) := by
  have heq : reductionPivot8208 = (fun u v => (normalNode4524).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4524).moment H = injectiveMoment H reductionPivot8208 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4524).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot8208 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8208 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8208 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1193, oldProjection590, reductionProjection8207, reductionProjection1307] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8208 (0 : Fin 4)) = canonicalInput21789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8208 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1193 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8208 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21789 hH))).trans (oldProjectionSound1193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8208 (1 : Fin 4)) = canonicalInput8994.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8208 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8208 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8994 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8208 (2 : Fin 4)) = canonicalInput8746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8208 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8207 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8208 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8746 hH))).trans (reductionSound8207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8208 (3 : Fin 4)) = canonicalInput8737.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8208 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8208 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8737 hH))).trans (reductionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4524).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8208 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4524).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8208 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection8208 ![oldProjection1193, oldProjection590, reductionProjection8207, reductionProjection1307]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8209 : Integer.Sparse (Fin 1613) := [(782, -1), (1002, -1), (1005, -1), (1205, -1)]

def reductionPivot8209 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, -3, 2, 0], ![1, 1, 0, -2]]

theorem reductionSound8209 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4516).moment H =
      Integer.Sparse.eval reductionProjection8209 (momentVector H) := by
  have heq : reductionPivot8209 = (fun u v => (normalNode4516).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4516).moment H = injectiveMoment H reductionPivot8209 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4516).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8209 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8209 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8209 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection590, reductionProjection282, oldProjection617, reductionProjection8207] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8209 (0 : Fin 4)) = canonicalInput11118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8209 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8209 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11118 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8209 (1 : Fin 4)) = canonicalInput8893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8209 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection282 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8209 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8893 hH))).trans (reductionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8209 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8209 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection617 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8209 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection617 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8209 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1002).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8209 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8207 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8209 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4516).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8209 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4516).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8209 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8209 ![oldProjection590, reductionProjection282, oldProjection617, reductionProjection8207]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8210 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -48), (90, 48), (94, 1), (243, 80), (698, 224), (700, 16), (782, 432), (783, 144), (1002, 288), (1005, 288), (1058, -192), (1059, 16), (1205, 288), (1226, 96), (1227, 48), (1251, -18)]

def reductionPivot8210 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -3, 2, 0], ![1, 0, 0, -1]]

theorem reductionSound8210 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4514).moment H =
      Integer.Sparse.eval reductionProjection8210 (momentVector H) := by
  have heq : reductionPivot8210 = (fun u v => (normalNode4514).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4514).moment H = injectiveMoment H reductionPivot8210 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4514).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8210 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8210 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 1440, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8210 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1951, reductionProjection2752, reductionProjection8208, oldProjection2086, reductionProjection8209] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8210 (0 : Fin 5)) = canonicalInput11116.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1951 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11116 hH))).trans (oldProjectionSound1951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8210 (1 : Fin 5)) = canonicalInput8890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2752 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8890 hH))).trans (reductionSound2752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8210 (2 : Fin 5)) = (normalNode4524).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8208 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8210 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2086⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2086 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2086 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2086 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8210 (4 : Fin 5)) = (normalNode4516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8209 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8210 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4514).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8210 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4514).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8210 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 18, 1440, 2] ![1, 1, 80, 1, 720] reductionProjection8210 ![oldProjection1951, reductionProjection2752, reductionProjection8208, oldProjection2086, reductionProjection8209]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8211 : Integer.Sparse (Fin 1613) := [(94, 1), (243, -8), (698, -8), (782, -72), (1003, -72), (1205, -72), (1226, 8), (1251, 1)]

def reductionPivot8211 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 0, 2, -3]]

theorem reductionSound8211 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4517).moment H =
      Integer.Sparse.eval reductionProjection8211 (momentVector H) := by
  have heq : reductionPivot8211 = (fun u v => (normalNode4517).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4517).moment H = injectiveMoment H reductionPivot8211 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4517).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8211 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8211 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 72, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8211 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection282, oldProjection590, oldProjection1214, oldProjection615] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8211 (0 : Fin 4)) = canonicalInput11119.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8211 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection282 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8211 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11119 hH))).trans (reductionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8211 (1 : Fin 4)) = canonicalInput8895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8211 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection590 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8211 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection590 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8895 hH))).trans (oldProjectionSound590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8211 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3792 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8211 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8211 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3792 hH))).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8211 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8211 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection615 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8211 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection615 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound615 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4517).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8211 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4517).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8211 (j : Fin 4)))
      2 144 144 2 ![1, 1, 72, 1] ![144, 144, 2, 144] reductionProjection8211 ![reductionProjection282, oldProjection590, oldProjection1214, oldProjection615]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8212 : Integer.Sparse (Fin 1613) := [(90, 16), (94, 1), (426, 288), (461, 144), (698, 64), (782, 144), (890, 144), (955, 144), (1004, 288), (1006, -288), (1015, 288), (1016, 144), (1024, 144), (1226, 32), (1251, -11)]

def reductionPivot8212 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -3, 1, 1], ![1, 0, 0, -1]]

theorem reductionSound8212 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4527).moment H =
      Integer.Sparse.eval reductionProjection8212 (momentVector H) := by
  have heq : reductionPivot8212 = (fun u v => (normalNode4527).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4527).moment H = injectiveMoment H reductionPivot8212 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4527).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8212 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8212 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 18, 1440, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8212 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection346, reductionProjection7823, reductionProjection7238, reductionProjection930, reductionProjection5033] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8212 (0 : Fin 5)) = canonicalInput10777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection346 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10777 hH))).trans (reductionSound346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8212 (1 : Fin 5)) = canonicalInput8891.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7823 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8891 hH))).trans (reductionSound7823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8212 (2 : Fin 5)) = canonicalInput8771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7238 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7238 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8771 hH))).trans (reductionSound7238 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8212 (3 : Fin 5)) = canonicalInput8765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection930 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8765 hH))).trans (reductionSound930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8212 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1006).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5033 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8212 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5033 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5033 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4527).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8212 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4527).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8212 (j : Fin 5)))
      1 288 1440 5 ![18, 18, 1440, 1440, 1] ![80, 80, 1, 1, 1440] reductionProjection8212 ![reductionProjection346, reductionProjection7823, reductionProjection7238, reductionProjection930, reductionProjection5033]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8213 : Integer.Sparse (Fin 1613) := [(42, -1), (90, 1), (441, -9), (698, -1), (700, -2), (1002, -9), (1023, -9)]

def reductionPivot8213 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, 1, 2, -3], ![0, 2, -3, 1], ![1, -3, 0, 2]]

theorem reductionSound8213 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4571).moment H =
      Integer.Sparse.eval reductionProjection8213 (momentVector H) := by
  have heq : reductionPivot8213 = (fun u v => (normalNode4571).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4571).moment H = injectiveMoment H reductionPivot8213 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4571).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot8213 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8213 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8213 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4446, reductionProjection8160, reductionProjection8207, reductionProjection310] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8213 (0 : Fin 4)) = canonicalInput21805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8213 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4446 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8213 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21805 hH))).trans (reductionSound4446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8213 (1 : Fin 4)) = canonicalInput9000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8213 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8160 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8213 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9000 hH))).trans (reductionSound8160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8213 (2 : Fin 4)) = canonicalInput8882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8213 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8207 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8213 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8882 hH))).trans (reductionSound8207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8213 (3 : Fin 4)) = canonicalInput8869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8213 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection310 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8213 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8869 hH))).trans (reductionSound310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4571).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8213 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4571).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8213 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection8213 ![reductionProjection4446, reductionProjection8160, reductionProjection8207, reductionProjection310]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8214 : Integer.Sparse (Fin 1613) := [(1010, 1)]

theorem reductionSound8214 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1010).moment H =
      Integer.Sparse.eval reductionProjection8214 (momentVector H) := by
  have hc : coordinates (1010 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1010) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8214, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8215 : Integer.Sparse (Fin 1613) := [(0, -1), (42, 80), (94, 15), (243, 160), (298, 720), (441, 720), (700, 240), (704, 80), (763, 720), (782, 1440), (919, 720), (1002, 720), (1003, 720), (1005, 720), (1010, -1440), (1014, 720), (1023, 720), (1205, 720), (1251, 20)]

def reductionPivot8215 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 0, 0, -1]]

theorem reductionSound8215 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4528).moment H =
      Integer.Sparse.eval reductionProjection8215 (momentVector H) := by
  have heq : reductionPivot8215 = (fun u v => (normalNode4528).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4528).moment H = injectiveMoment H reductionPivot8215 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4528).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8215 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8215 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 18, 144, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8215 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6744, reductionProjection8213, reductionProjection8211, reductionProjection7973, reductionProjection8214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8215 (0 : Fin 5)) = canonicalInput10778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6744 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10778 hH))).trans (reductionSound6744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8215 (1 : Fin 5)) = canonicalInput8892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8213 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8892 hH))).trans (reductionSound8213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8215 (2 : Fin 5)) = canonicalInput8774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8211 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8774 hH))).trans (reductionSound8211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8215 (3 : Fin 5)) = (normalNode4537).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7973 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8215 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1010).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8214 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8215 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4528).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8215 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4528).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8215 (j : Fin 5)))
      1 1440 1440 1 ![18, 18, 144, 1440, 1] ![80, 80, 10, 1, 1440] reductionProjection8215 ![reductionProjection6744, reductionProjection8213, reductionProjection8211, reductionProjection7973, reductionProjection8214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8216 : Integer.Sparse (Fin 1613) := [(243, -1), (757, -9), (785, -9), (1014, -9), (1223, 6), (1225, -1), (1226, -1)]

def reductionPivot8216 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, -2, -1, 2], ![1, 0, 3, -4]]

theorem reductionSound8216 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode4531).moment H =
      Integer.Sparse.eval reductionProjection8216 (momentVector H) := by
  have heq : reductionPivot8216 = (fun u v => (normalNode4531).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4531).moment H = injectiveMoment H reductionPivot8216 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4531).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8216 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8216 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 9, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8216 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection586, reductionProjection6910, oldProjection1251, oldProjection618] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8216 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4834 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8216 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection586 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8216 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4834 hH))).trans (oldProjectionSound586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8216 (1 : Fin 4)) = canonicalInput8894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8216 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6910 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8216 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8894 hH))).trans (reductionSound6910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8216 (2 : Fin 4)) = canonicalInput8780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8216 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1251 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8216 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8780 hH))).trans (oldProjectionSound1251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8216 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8216 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection618 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8216 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4531).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8216 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4531).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8216 (j : Fin 4)))
      2 18 18 2 ![1, 1, 9, 1] ![18, 18, 2, 18] reductionProjection8216 ![oldProjection586, reductionProjection6910, oldProjection1251, oldProjection618]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8217 : Integer.Sparse (Fin 1613) := [(0, -1), (88, 80), (90, 160), (94, 5), (241, 80), (698, 80), (782, 720), (783, 720), (913, 720), (919, 720), (921, 720), (934, 720), (1002, 720), (1003, 720), (1004, 1440), (1010, -1440), (1015, 720), (1028, 720), (1059, 80), (1226, 240), (1227, 80), (1251, -30)]

def reductionPivot8217 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 0, -1, 0]]

theorem reductionSound8217 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4533).moment H =
      Integer.Sparse.eval reductionProjection8217 (momentVector H) := by
  have heq : reductionPivot8217 = (fun u v => (normalNode4533).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4533).moment H = injectiveMoment H reductionPivot8217 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4533).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8217 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8217 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![18, 18, 18, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8217 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7832, reductionProjection8208, reductionProjection8181, reductionProjection3140, reductionProjection8214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8217 (0 : Fin 5)) = canonicalInput11124.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7832 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7832 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11124 hH))).trans (reductionSound7832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8217 (1 : Fin 5)) = canonicalInput8900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8208 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8900 hH))).trans (reductionSound8208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8217 (2 : Fin 5)) = (normalNode4539).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8181 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8217 (3 : Fin 5)) = canonicalInput8768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3140 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8768 hH))).trans (reductionSound3140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8217 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1010).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8214 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8217 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4533).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8217 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4533).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8217 (j : Fin 5)))
      1 1440 1440 1 ![18, 18, 18, 1440, 1] ![80, 80, 80, 1, 1440] reductionProjection8217 ![reductionProjection7832, reductionProjection8208, reductionProjection8181, reductionProjection3140, reductionProjection8214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8218 : Integer.Sparse (Fin 1613) := [(94, -1), (701, -8), (704, -8), (783, -72), (785, -72), (1020, -72), (1251, -1)]

def reductionPivot8218 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, 1, 2, -3], ![0, 2, -2, 0], ![1, -3, -1, 3]]

theorem reductionSound8218 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4572).moment H =
      Integer.Sparse.eval reductionProjection8218 (momentVector H) := by
  have heq : reductionPivot8218 = (fun u v => (normalNode4572).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4572).moment H = injectiveMoment H reductionPivot8218 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4572).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot8218 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8218 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8218 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1312, reductionProjection6910, reductionProjection8194, reductionProjection1307] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8218 (0 : Fin 4)) = canonicalInput21806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8218 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1312 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8218 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21806 hH))).trans (reductionSound1312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8218 (1 : Fin 4)) = canonicalInput9001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8218 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6910 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8218 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9001 hH))).trans (reductionSound6910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8218 (2 : Fin 4)) = canonicalInput8883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8218 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8194 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8218 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8883 hH))).trans (reductionSound8194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8218 (3 : Fin 4)) = canonicalInput8872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8218 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1307 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8218 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8872 hH))).trans (reductionSound1307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4572).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8218 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4572).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8218 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection8218 ![reductionProjection1312, reductionProjection6910, reductionProjection8194, reductionProjection1307]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8219 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -3), (94, 2), (243, -64), (698, -16), (700, -16), (1058, 48), (1206, -144), (1223, 48), (1225, -32), (1226, -32), (1251, 1)]

def reductionPivot8219 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, 0, 1], ![0, 1, 2, -3], ![1, -1, -3, 3], ![1, 0, 0, -1]]

theorem reductionSound8219 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5410).moment H =
      Integer.Sparse.eval reductionProjection8219 (momentVector H) := by
  have heq : reductionPivot8219 = (fun u v => (normalNode5410).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5410).moment H = injectiveMoment H reductionPivot8219 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5410).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8219 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8219 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8219 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1200, reductionProjection7907, oldProjection1329, reductionProjection1964] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8219 (0 : Fin 4)) = canonicalInput8877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8219 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1200 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8219 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8877 hH))).trans (oldProjectionSound1200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8219 (1 : Fin 4)) = canonicalInput10747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8219 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7907 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8219 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10747 hH))).trans (reductionSound7907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8219 (2 : Fin 4)) = canonicalInput10805.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8219 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8219 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10805 hH))).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8219 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1206).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8219 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1964 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8219 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1964 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1964 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5410).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8219 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5410).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8219 (j : Fin 4)))
      2 288 288 2 ![144, 72, 144, 1] ![2, 4, 2, 288] reductionProjection8219 ![oldProjection1200, reductionProjection7907, oldProjection1329, reductionProjection1964]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8220 : Integer.Sparse (Fin 1613) := [(19, -16), (20, 5), (76, -48), (94, -11), (243, 128), (686, -48), (698, 48), (700, 32), (701, 16), (704, 32), (783, 144), (785, 144), (809, 288), (1020, 288), (1022, 288), (1058, -192), (1206, 288), (1223, -192), (1225, 64), (1226, 96), (1251, -4)]

def reductionPivot8220 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -3, -1, 3], ![1, 0, 0, -1]]

theorem reductionSound8220 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode4540).moment H =
      Integer.Sparse.eval reductionProjection8220 (momentVector H) := by
  have heq : reductionPivot8220 = (fun u v => (normalNode4540).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4540).moment H = injectiveMoment H reductionPivot8220 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4540).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8220 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8220 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8220 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6773, reductionProjection8218, reductionProjection8219, reductionProjection8197, reductionProjection8195] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8220 (0 : Fin 5)) = canonicalInput10783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6773 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10783 hH))).trans (reductionSound6773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8220 (1 : Fin 5)) = canonicalInput8899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8218 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8899 hH))).trans (reductionSound8218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8220 (2 : Fin 5)) = canonicalInput8824.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8219 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8824 hH))).trans (reductionSound8219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8220 (3 : Fin 5)) = (normalNode4553).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8197 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8220 (4 : Fin 5)) = (normalNode4552).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8195 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8220 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4540).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8220 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4540).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8220 (j : Fin 5)))
      1 288 288 1 ![288, 144, 288, 288, 2] ![1, 2, 1, 1, 144] reductionProjection8220 ![reductionProjection6773, reductionProjection8218, reductionProjection8219, reductionProjection8197, reductionProjection8195]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8221 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 3), (243, -32), (897, -72), (1040, 24), (1223, 72), (1225, -8), (1226, -16)]

def reductionPivot8221 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 0, 3, -4]]

theorem reductionSound8221 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode4542).moment H =
      Integer.Sparse.eval reductionProjection8221 (momentVector H) := by
  have heq : reductionPivot8221 = (fun u v => (normalNode4542).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4542).moment H = injectiveMoment H reductionPivot8221 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4542).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8221 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8221 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8221 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1020, reductionProjection7662, reductionProjection8167, oldProjection1251] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8221 (0 : Fin 4)) = canonicalInput10785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8221 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1020 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8221 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10785 hH))).trans (oldProjectionSound1020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8221 (1 : Fin 4)) = canonicalInput8904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8221 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7662 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8221 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7662 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8904 hH))).trans (reductionSound7662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8221 (2 : Fin 4)) = canonicalInput8829.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8221 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8167 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8221 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8829 hH))).trans (reductionSound8167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8221 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3826 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8221 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1251 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8221 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3826 hH))).trans (oldProjectionSound1251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4542).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8221 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4542).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8221 (j : Fin 4)))
      2 144 144 2 ![144, 1, 144, 9] ![1, 144, 1, 16] reductionProjection8221 ![oldProjection1020, reductionProjection7662, reductionProjection8167, oldProjection1251]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8222 : Integer.Sparse (Fin 1613) := [(1030, 1)]

theorem reductionSound8222 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1030).moment H =
      Integer.Sparse.eval reductionProjection8222 (momentVector H) := by
  have hc : coordinates (1030 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1030) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8222, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8223 : Integer.Sparse (Fin 1613) := [(634, -1), (924, -1), (1026, -1), (1030, -1)]

def reductionPivot8223 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -2, -2, 3], ![1, -1, 2, -2]]

theorem reductionSound8223 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4568).moment H =
      Integer.Sparse.eval reductionProjection8223 (momentVector H) := by
  have heq : reductionPivot8223 = (fun u v => (normalNode4568).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4568).moment H = injectiveMoment H reductionPivot8223 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4568).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8223 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8223 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8223 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3180, reductionProjection8222, reductionProjection1419, reductionProjection2042] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8223 (0 : Fin 4)) = canonicalInput11143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8223 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3180 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8223 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11143 hH))).trans (reductionSound3180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8223 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1030).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8223 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8222 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8223 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8223 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1026).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8223 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1419 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8223 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8223 (3 : Fin 4)) = canonicalInput8912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8223 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2042 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8223 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2042 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8912 hH))).trans (reductionSound2042 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4568).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8223 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4568).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8223 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8223 ![reductionProjection3180, reductionProjection8222, reductionProjection1419, reductionProjection2042]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization

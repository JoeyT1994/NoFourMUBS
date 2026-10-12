import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical059
import NoFourMUBs.Step2.SOS.Canonical060
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical073
import NoFourMUBs.Step2.SOS.Canonical074
import NoFourMUBs.Step2.SOS.Canonical075
import NoFourMUBs.Step2.SOS.Canonical076
import NoFourMUBs.Step2.SOS.Canonical077
import NoFourMUBs.Step2.SOS.Canonical083
import NoFourMUBs.Step2.SOS.Canonical086
import NoFourMUBs.Step2.SOS.Canonical087
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical114
import NoFourMUBs.Step2.SOS.Canonical115
import NoFourMUBs.Step2.SOS.Canonical130
import NoFourMUBs.Step2.SOS.Canonical156
import NoFourMUBs.Step2.SOS.Canonical157
import NoFourMUBs.Step2.SOS.Canonical159
import NoFourMUBs.Step2.SOS.Canonical266
import NoFourMUBs.Step2.SOS.Canonical283
import NoFourMUBs.Step2.SOS.Canonical520
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions144
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions164
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical105
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical114
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical115
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical139
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical140
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical144
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical165
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical166
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical206
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical67
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical69
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection5280 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (23, 24), (26, -8), (88, -8), (94, 2), (104, -8), (105, -16), (228, 24), (241, -16), (243, -32), (539, -72), (698, -8), (704, -8), (1226, -8), (1251, -1)]

def reductionPivot5280 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, -2, 3], ![1, 0, 0, -1], ![1, 1, 2, -4]]

theorem reductionSound5280 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2279).moment H =
      Integer.Sparse.eval reductionProjection5280 (momentVector H) := by
  have heq : reductionPivot5280 = (fun u v => (normalNode2279).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2279).moment H = injectiveMoment H reductionPivot5280 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2279).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5280 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5280 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5280 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection760, reductionProjection5277, reductionProjection5278, reductionProjection5279] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5280 (0 : Fin 4)) = canonicalInput7358.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5280 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection760 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5280 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection760 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7358 hH))).trans (oldProjectionSound760 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5280 (1 : Fin 4)) = canonicalInput4916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5280 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5277 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5280 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4916 hH))).trans (reductionSound5277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5280 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code539).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5280 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5278 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5280 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5280 (3 : Fin 4)) = canonicalInput4749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5280 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5279 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5280 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4749 hH))).trans (reductionSound5279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2279).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5280 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2279).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5280 (j : Fin 4)))
      2 144 144 2 ![144, 144, 1, 144] ![1, 1, 144, 1] reductionProjection5280 ![oldProjection760, reductionProjection5277, reductionProjection5278, reductionProjection5279]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5281 : Integer.Sparse (Fin 1613) := [(19, -4), (23, -48), (94, 1), (101, -48), (104, 16), (108, 16), (1251, 1)]

def reductionPivot5281 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 3, 0], ![1, -1, 2, -2], ![2, 2, -5, 1]]

theorem reductionSound5281 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6932).moment H =
      Integer.Sparse.eval reductionProjection5281 (momentVector H) := by
  have heq : reductionPivot5281 = (fun u v => (normalNode6932).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6932).moment H = injectiveMoment H reductionPivot5281 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6932).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6932).entries)).symm
  have hshape : reductionPivot5281 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5281 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5281 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection575, oldProjection127, oldProjection74] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5281 (0 : Fin 3)) = canonicalInput360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5281 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5281 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound360 hH))).trans (reductionSound575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5281 (1 : Fin 3)) = canonicalInput5893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5281 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection127 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5281 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5893 hH))).trans (oldProjectionSound127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5281 (2 : Fin 3)) = canonicalInput5916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5281 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection74 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5281 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection74 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5916 hH))).trans (oldProjectionSound74 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6932).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5281 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6932).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5281 (j : Fin 3)))
      3 144 144 3 ![1, 48, 1] ![144, 3, 144] reductionProjection5281 ![reductionProjection575, oldProjection127, oldProjection74]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5282 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -1), (23, 48), (88, -16), (94, -2), (101, 48), (104, -16), (108, -16), (241, -32), (243, -64), (539, -144), (698, -32), (704, -16), (1225, -16), (1226, -32), (1251, 3)]

def reductionPivot5282 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound5282 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2280).moment H =
      Integer.Sparse.eval reductionProjection5282 (momentVector H) := by
  have heq : reductionPivot5282 = (fun u v => (normalNode2280).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2280).moment H = injectiveMoment H reductionPivot5282 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2280).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5282 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5282 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5282 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection892, oldProjection826, reductionProjection5278, reductionProjection5281] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5282 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3679 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5282 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection892 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5282 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3679 hH))).trans (oldProjectionSound892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5282 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2229 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5282 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection826 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5282 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2229 hH))).trans (oldProjectionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5282 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code539).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5282 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5278 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5282 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5282 (3 : Fin 4)) = canonicalInput4748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5282 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5281 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5282 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4748 hH))).trans (reductionSound5281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2280).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5282 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2280).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5282 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 144] ![2, 4, 288, 2] reductionProjection5282 ![oldProjection892, oldProjection826, reductionProjection5278, reductionProjection5281]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5283 : Integer.Sparse (Fin 1613) := [(19, -8), (20, 1), (94, 2), (101, -48), (231, -48), (243, 16), (1251, 1)]

def reductionPivot5283 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![2, -1, 1, -2], ![-4, 2, 2, 0], ![3, -1, -3, 1]]

theorem reductionSound5283 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11197).moment H =
      Integer.Sparse.eval reductionProjection5283 (momentVector H) := by
  have heq : reductionPivot5283 = (fun u v => (normalNode11197).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11197).moment H = injectiveMoment H reductionPivot5283 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11197).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11197).entries)).symm
  have hshape : reductionPivot5283 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot5283 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5283 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection247, reductionProjection575, oldProjection136] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5283 (0 : Fin 3)) = canonicalInput33334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5283 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5283 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33334 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5283 (1 : Fin 3)) = canonicalInput34245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5283 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection575 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5283 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34245 hH))).trans (reductionSound575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5283 (2 : Fin 3)) = canonicalInput34250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5283 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5283 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound34250 hH))).trans (oldProjectionSound136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11197).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5283 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11197).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot5283 (j : Fin 3)))
      3 144 144 3 ![48, 1, 1] ![3, 144, 144] reductionProjection5283 ![oldProjection247, reductionProjection575, oldProjection136]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5284 : Integer.Sparse (Fin 1613) := [(538, 1)]

theorem reductionSound5284 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code538).moment H =
      Integer.Sparse.eval reductionProjection5284 (momentVector H) := by
  have hc : coordinates (538 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code538) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5284, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5285 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (23, 48), (94, -4), (101, 48), (104, -16), (108, -16), (228, 48), (231, 48), (241, -16), (243, -16), (247, -16), (538, -144), (704, -16), (1251, -3)]

def reductionPivot5285 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -1, -2, 3], ![0, 2, 2, -4], ![1, 0, 0, -1]]

theorem reductionSound5285 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2281).moment H =
      Integer.Sparse.eval reductionProjection5285 (momentVector H) := by
  have heq : reductionPivot5285 = (fun u v => (normalNode2281).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2281).moment H = injectiveMoment H reductionPivot5285 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2281).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5285 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5285 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5285 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection994, reductionProjection5283, reductionProjection5279, reductionProjection5284] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5285 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node994⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5285 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection994 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5285 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5285 (1 : Fin 4)) = canonicalInput5334.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5285 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5283 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5285 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5334 hH))).trans (reductionSound5283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5285 (2 : Fin 4)) = canonicalInput4750.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5285 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5279 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5285 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5279 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4750 hH))).trans (reductionSound5279 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5285 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code538).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5285 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5284 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5285 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2281).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5285 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2281).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5285 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection5285 ![oldProjection994, reductionProjection5283, reductionProjection5279, reductionProjection5284]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5286 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (94, -20), (104, -160), (241, -160), (243, -80), (682, 240), (690, 240), (694, 240), (698, -160), (704, -240), (1251, 15)]

def reductionPivot5286 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound5286 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5175).moment H =
      Integer.Sparse.eval reductionProjection5286 (momentVector H) := by
  have heq : reductionPivot5286 = (fun u v => (normalNode5175).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5175).moment H = injectiveMoment H reductionPivot5286 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5175).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5286 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5286 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5286 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1303, oldProjection1308, oldProjection1317, oldProjection1295] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5286 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5330 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5286 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1303 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5286 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5330 hH))).trans (oldProjectionSound1303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5286 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4610 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5286 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1308 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5286 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4610 hH))).trans (oldProjectionSound1308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5286 (2 : Fin 4)) = canonicalInput10198.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5286 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1317 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5286 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10198 hH))).trans (oldProjectionSound1317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5286 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4502 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5286 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1295 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5286 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4502 hH))).trans (oldProjectionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5175).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5286 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5175).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5286 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 144, 144] ![20, 2, 10, 10] reductionProjection5286 ![oldProjection1303, oldProjection1308, oldProjection1317, oldProjection1295]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5287 : Integer.Sparse (Fin 1613) := [(562, 1)]

theorem reductionSound5287 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code562).moment H =
      Integer.Sparse.eval reductionProjection5287 (momentVector H) := by
  have hc : coordinates (562 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code562) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5287, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5288 : Integer.Sparse (Fin 1613) := [(1092, 1)]

theorem reductionSound5288 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1092).moment H =
      Integer.Sparse.eval reductionProjection5288 (momentVector H) := by
  have hc : coordinates (1092 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1092) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5288, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection5289 : Integer.Sparse (Fin 1613) := [(562, -9), (698, -1), (1086, -9), (1092, -9), (1219, 3), (1223, 3), (1226, -1), (1227, -1)]

def reductionPivot5289 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 3, -1, -3]]

theorem reductionSound5289 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode2287).moment H =
      Integer.Sparse.eval reductionProjection5289 (momentVector H) := by
  have heq : reductionPivot5289 = (fun u v => (normalNode2287).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2287).moment H = injectiveMoment H reductionPivot5289 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2287).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5289 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5289 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5289 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1239, reductionProjection5287, oldProjection673, reductionProjection5288] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5289 (0 : Fin 4)) = canonicalInput17080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5289 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1239 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5289 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1239 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17080 hH))).trans (oldProjectionSound1239 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5289 (1 : Fin 4)) = canonicalInput5335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5289 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5287 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5289 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5335 hH))).trans (reductionSound5287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5289 (2 : Fin 4)) = canonicalInput4773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5289 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection673 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5289 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4773 hH))).trans (oldProjectionSound673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5289 (3 : Fin 4)) = canonicalInput4751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5289 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5288 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5289 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4751 hH))).trans (reductionSound5288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2287).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5289 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2287).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5289 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection5289 ![oldProjection1239, reductionProjection5287, oldProjection673, reductionProjection5288]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5290 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 50), (20, -5), (94, -30), (241, -40), (243, -40), (247, -40), (682, 120), (697, 120), (698, -80), (704, -120), (1086, -360), (1251, -20)]

def reductionPivot5290 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -1, -1, 2], ![1, -1, 3, -3], ![1, 0, -1, 0]]

theorem reductionSound5290 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5028).moment H =
      Integer.Sparse.eval reductionProjection5290 (momentVector H) := by
  have heq : reductionPivot5290 = (fun u v => (normalNode5028).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5028).moment H = injectiveMoment H reductionPivot5290 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5028).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5290 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5290 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5290 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection947, oldProjection968, oldProjection940, oldProjection673] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5290 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5311 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5290 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5290 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5311 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5290 (1 : Fin 4)) = canonicalInput10238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5290 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection968 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5290 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10238 hH))).trans (oldProjectionSound968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5290 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4453 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5290 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection940 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5290 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4453 hH))).trans (oldProjectionSound940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5290 (3 : Fin 4)) = canonicalInput10075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5290 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection673 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5290 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10075 hH))).trans (oldProjectionSound673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5028).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5290 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5028).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5290 (j : Fin 4)))
      2 720 720 2 ![72, 720, 144, 1] ![10, 1, 5, 720] reductionProjection5290 ![oldProjection947, oldProjection968, oldProjection940, oldProjection673]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5291 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -280), (20, 20), (81, -240), (93, 60), (94, 195), (104, 160), (228, -240), (229, -240), (240, -480), (241, 400), (243, 160), (247, 320), (562, 720), (682, -480), (683, -240), (690, -240), (694, -240), (696, -240), (697, -480), (698, 720), (704, 640), (1086, 1440), (1092, 720), (1219, -240), (1223, -240), (1226, 80), (1227, 80), (1250, 60), (1251, 100), (1321, -480)]

def reductionPivot5291 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 3, -1, -3]]

theorem reductionSound5291 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2282).moment H =
      Integer.Sparse.eval reductionProjection5291 (momentVector H) := by
  have heq : reductionPivot5291 = (fun u v => (normalNode2282).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2282).moment H = injectiveMoment H reductionPivot5291 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2282).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5291 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5291 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 18, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5291 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1435, reductionProjection5286, reductionProjection5289, reductionProjection5290, reductionProjection4297] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5291 (0 : Fin 5)) = (normalNode747).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1435 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1435 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1435 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5291 (1 : Fin 5)) = canonicalInput4667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5286 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4667 hH))).trans (reductionSound5286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5291 (2 : Fin 5)) = (normalNode2287).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5289 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5291 (3 : Fin 5)) = canonicalInput4753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5290 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4753 hH))).trans (reductionSound5290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5291 (4 : Fin 5)) = canonicalInput4754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4297 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5291 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4297 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4754 hH))).trans (reductionSound4297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2282).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5291 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2282).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5291 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 18, 720, 288] ![1, 1, 80, 2, 5] reductionProjection5291 ![reductionProjection1435, reductionProjection5286, reductionProjection5289, reductionProjection5290, reductionProjection4297]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5292 : Integer.Sparse (Fin 1613) := [(219, -9), (228, 3), (698, -2), (1092, -9), (1115, -9), (1226, -2), (1227, -2)]

def reductionPivot5292 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 3, -2, -2]]

theorem reductionSound5292 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode2288).moment H =
      Integer.Sparse.eval reductionProjection5292 (momentVector H) := by
  have heq : reductionPivot5292 = (fun u v => (normalNode2288).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2288).moment H = injectiveMoment H reductionPivot5292 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2288).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5292 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5292 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5292 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection730, oldProjection679, reductionProjection1634, reductionProjection5288] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5292 (0 : Fin 4)) = canonicalInput18174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5292 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection730 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5292 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18174 hH))).trans (oldProjectionSound730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5292 (1 : Fin 4)) = canonicalInput5343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5292 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5292 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5343 hH))).trans (oldProjectionSound679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5292 (2 : Fin 4)) = canonicalInput4774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5292 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1634 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5292 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4774 hH))).trans (reductionSound1634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5292 (3 : Fin 4)) = canonicalInput4751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5292 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5288 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5292 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4751 hH))).trans (reductionSound5288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2288).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5292 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2288).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5292 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection5292 ![oldProjection730, oldProjection679, reductionProjection1634, reductionProjection5288]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5293 : Integer.Sparse (Fin 1613) := [(219, -3), (697, 1), (1086, -3), (1115, -3), (1323, 1), (1389, 1)]

def reductionPivot5293 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 3, -2, -2]]

theorem reductionSound5293 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode2304).moment H =
      Integer.Sparse.eval reductionProjection5293 (momentVector H) := by
  have heq : reductionPivot5293 = (fun u v => (normalNode2304).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2304).moment H = injectiveMoment H reductionPivot5293 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2304).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5293 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5293 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5293 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection679, oldProjection983, reductionProjection1634, oldProjection673] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5293 (0 : Fin 4)) = canonicalInput5583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5293 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5293 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5583 hH))).trans (oldProjectionSound679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5293 (1 : Fin 4)) = canonicalInput4801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5293 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection983 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5293 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4801 hH))).trans (oldProjectionSound983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5293 (2 : Fin 4)) = canonicalInput4774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5293 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1634 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5293 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4774 hH))).trans (reductionSound1634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5293 (3 : Fin 4)) = canonicalInput4773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5293 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection673 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5293 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4773 hH))).trans (oldProjectionSound673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2304).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5293 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2304).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5293 (j : Fin 4)))
      2 6 6 2 ![1, 3, 1, 1] ![6, 2, 6, 6] reductionProjection5293 ![oldProjection679, oldProjection983, reductionProjection1634, oldProjection673]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5294 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -30), (93, 15), (94, 30), (104, 20), (219, 360), (228, -60), (240, -60), (241, 60), (243, 20), (247, 40), (546, 180), (690, -60), (694, -60), (696, -60), (697, -240), (698, 160), (704, 40), (794, 180), (1086, 180), (1092, 180), (1115, 360), (1226, 60), (1227, 60), (1250, 30), (1253, 180), (1321, -60), (1323, -120), (1389, -120)]

def reductionPivot5294 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 3, -2, -2]]

theorem reductionSound5294 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode2283).moment H =
      Integer.Sparse.eval reductionProjection5294 (momentVector H) := by
  have heq : reductionPivot5294 = (fun u v => (normalNode2283).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2283).moment H = injectiveMoment H reductionPivot5294 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2283).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5294 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5294 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 18, 6, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5294 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1436, oldProjection2216, reductionProjection5292, reductionProjection5293, reductionProjection4827] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5294 (0 : Fin 5)) = (normalNode748).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1436 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1436 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5294 (1 : Fin 5)) = canonicalInput4668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2216 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4668 hH))).trans (oldProjectionSound2216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5294 (2 : Fin 5)) = (normalNode2288).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5292 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5294 (3 : Fin 5)) = (normalNode2304).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5293 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5294 (4 : Fin 5)) = (normalNode2305).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4827 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5294 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2283).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5294 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2283).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5294 (j : Fin 5)))
      1 360 1440 4 ![1440, 720, 18, 6, 1440] ![1, 2, 80, 240, 1] reductionProjection5294 ![reductionProjection1436, oldProjection2216, reductionProjection5292, reductionProjection5293, reductionProjection4827]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5295 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 160), (20, -5), (94, -65), (228, 480), (241, -480), (243, -320), (247, -320), (698, -240), (704, -80), (1251, -50)]

def reductionPivot5295 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 1, -1, 2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound5295 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5007).moment H =
      Integer.Sparse.eval reductionProjection5295 (momentVector H) := by
  have heq : reductionPivot5295 = (fun u v => (normalNode5007).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5007).moment H = injectiveMoment H reductionPivot5295 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5007).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5295 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5295 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5295 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection771, oldProjection1234, oldProjection1100, oldProjection940] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5295 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3363 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5295 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection771 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5295 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3363 hH))).trans (oldProjectionSound771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5295 (1 : Fin 4)) = canonicalInput9997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5295 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1234 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5295 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9997 hH))).trans (oldProjectionSound1234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5295 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4451 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5295 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5295 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4451 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5295 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4452 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5295 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection940 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5295 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4452 hH))).trans (oldProjectionSound940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5007).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5295 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5007).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5295 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 720, 144] ![2, 160, 2, 10] reductionProjection5295 ![oldProjection771, oldProjection1234, oldProjection1100, oldProjection940]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5296 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -300), (20, 10), (82, -240), (88, 80), (94, 135), (104, 80), (228, -720), (229, -240), (238, -240), (240, -240), (241, 960), (243, 800), (247, 560), (548, 720), (628, 720), (698, 560), (704, 160), (729, 720), (1226, 80), (1251, 65)]

def reductionPivot5296 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]

theorem reductionSound5296 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2284).moment H =
      Integer.Sparse.eval reductionProjection5296 (momentVector H) := by
  have heq : reductionPivot5296 = (fun u v => (normalNode2284).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2284).moment H = injectiveMoment H reductionPivot5296 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2284).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5296 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5296 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5296 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1443, reductionProjection5207, oldProjection1100, reductionProjection5295, oldProjection1727] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5296 (0 : Fin 5)) = (normalNode751).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1443 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5296 (1 : Fin 5)) = canonicalInput4669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5207 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4669 hH))).trans (reductionSound5207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5296 (2 : Fin 5)) = canonicalInput4752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4752 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5296 (3 : Fin 5)) = canonicalInput4758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5295 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5295 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4758 hH))).trans (reductionSound5295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5296 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1727⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1727 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5296 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2284).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5296 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2284).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5296 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 1440] ![1, 1, 2, 1, 1] reductionProjection5296 ![reductionProjection1443, reductionProjection5207, oldProjection1100, reductionProjection5295, oldProjection1727]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5297 : Integer.Sparse (Fin 1613) := [(0, -1), (11, -60), (19, -80), (20, 10), (94, 45), (104, 20), (228, -240), (229, -300), (231, -60), (240, -60), (241, 120), (243, 160), (247, 120), (545, 180), (567, 180), (704, 160), (716, 180), (720, 360), (1251, 40)]

def reductionPivot5297 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound5297 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode2285).moment H =
      Integer.Sparse.eval reductionProjection5297 (momentVector H) := by
  have heq : reductionPivot5297 = (fun u v => (normalNode2285).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2285).moment H = injectiveMoment H reductionPivot5297 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2285).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5297 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5297 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5297 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1455, oldProjection2218, oldProjection1735, oldProjection2203, oldProjection2203] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5297 (0 : Fin 5)) = (normalNode761).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1455 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5297 (1 : Fin 5)) = canonicalInput4671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2218 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4671 hH))).trans (oldProjectionSound2218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5297 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1735⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1735 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5297 (3 : Fin 5)) = canonicalInput4771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2203 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2203 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4771 hH))).trans (oldProjectionSound2203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5297 (4 : Fin 5)) = canonicalInput4772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2203 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5297 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2203 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4772 hH))).trans (oldProjectionSound2203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2285).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5297 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2285).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5297 (j : Fin 5)))
      1 360 1440 4 ![288, 144, 1440, 1440, 1440] ![5, 10, 1, 1, 1] reductionProjection5297 ![reductionProjection1455, oldProjection2218, oldProjection1735, oldProjection2203, oldProjection2203]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5298 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -15), (228, 240), (241, -80), (247, -160), (548, -720), (628, -720), (729, -720), (1251, -20)]

def reductionPivot5298 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, 2, 1, -4]]

theorem reductionSound5298 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2286).moment H =
      Integer.Sparse.eval reductionProjection5298 (momentVector H) := by
  have heq : reductionPivot5298 = (fun u v => (normalNode2286).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2286).moment H = injectiveMoment H reductionPivot5298 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2286).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5298 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5298 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5298 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1442, oldProjection579, oldProjection1100, oldProjection501] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5298 (0 : Fin 4)) = canonicalInput1839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5298 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1442 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5298 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1839 hH))).trans (reductionSound1442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5298 (1 : Fin 4)) = canonicalInput4672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5298 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection579 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5298 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4672 hH))).trans (oldProjectionSound579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5298 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2172 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5298 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5298 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2172 hH))).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5298 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5298 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5298 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2286).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5298 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2286).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5298 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection5298 ![reductionProjection1442, oldProjection579, oldProjection1100, oldProjection501]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5299 : Integer.Sparse (Fin 1613) := [(19, 2), (88, -8), (94, -1), (228, 24), (241, -32), (243, -32), (248, -72), (543, -72), (698, -24), (1226, -8), (1251, 1)]

def reductionPivot5299 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -2, 1], ![2, 0, 2, -4]]

theorem reductionSound5299 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode2311).moment H =
      Integer.Sparse.eval reductionProjection5299 (momentVector H) := by
  have heq : reductionPivot5299 = (fun u v => (normalNode2311).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2311).moment H = injectiveMoment H reductionPivot5299 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2311).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5299 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5299 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5299 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1234, oldProjection826, oldProjection498, reductionProjection1750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5299 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3682 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5299 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1234 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5299 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3682 hH))).trans (oldProjectionSound1234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5299 (1 : Fin 4)) = canonicalInput4984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5299 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection826 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5299 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4984 hH))).trans (oldProjectionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5299 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node498⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5299 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection498 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5299 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5299 (3 : Fin 4)) = canonicalInput4756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5299 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5299 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4756 hH))).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2311).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5299 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2311).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5299 (j : Fin 4)))
      2 144 144 2 ![9, 72, 1, 1] ![16, 2, 144, 144] reductionProjection5299 ![oldProjection1234, oldProjection826, oldProjection498, reductionProjection1750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5300 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -220), (20, 5), (23, -240), (26, 80), (88, 240), (94, 70), (104, 320), (105, 240), (108, 160), (137, 720), (228, -240), (241, 800), (243, 880), (247, 320), (248, 720), (478, 720), (537, 720), (543, 1440), (698, 640), (704, 80), (1226, 160), (1251, -40)]

def reductionPivot5300 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 2, -4]]

theorem reductionSound5300 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2289).moment H =
      Integer.Sparse.eval reductionProjection5300 (momentVector H) := by
  have heq : reductionPivot5300 = (fun u v => (normalNode2289).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2289).moment H = injectiveMoment H reductionPivot5300 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2289).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5300 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5300 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 144, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5300 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection770, reductionProjection5276, reductionProjection5299, oldProjection1725, reductionProjection4614] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5300 (0 : Fin 5)) = canonicalInput3780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection770 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3780 hH))).trans (reductionSound770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5300 (1 : Fin 5)) = (normalNode2278).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5276 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5300 (2 : Fin 5)) = (normalNode2311).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5299 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5300 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1725⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1725 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5300 (4 : Fin 5)) = canonicalInput4757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4614 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5300 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4614 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4757 hH))).trans (reductionSound4614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2289).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5300 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2289).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5300 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 144, 144, 1440] ![5, 5, 10, 10, 1] reductionProjection5300 ![reductionProjection770, reductionProjection5276, reductionProjection5299, oldProjection1725, reductionProjection4614]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5301 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, -30), (228, 240), (248, -720), (548, -720), (609, -720), (698, -80), (704, -80), (1251, -35)]

def reductionPivot5301 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, 1, 2, -4]]

theorem reductionSound5301 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2312).moment H =
      Integer.Sparse.eval reductionProjection5301 (momentVector H) := by
  have heq : reductionPivot5301 = (fun u v => (normalNode2312).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2312).moment H = injectiveMoment H reductionPivot5301 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2312).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5301 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5301 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5301 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection894, oldProjection512, oldProjection501, reductionProjection1750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5301 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6605 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5301 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection894 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5301 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6605 hH))).trans (oldProjectionSound894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5301 (1 : Fin 4)) = canonicalInput5344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5301 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection512 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5301 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5344 hH))).trans (oldProjectionSound512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5301 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5301 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5301 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5301 (3 : Fin 4)) = canonicalInput4756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5301 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5301 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4756 hH))).trans (reductionSound1750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2312).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5301 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2312).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5301 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5301 ![oldProjection894, oldProjection512, oldProjection501, reductionProjection1750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5302 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -170), (20, 5), (23, -120), (26, 40), (88, 80), (94, 95), (104, 160), (105, 120), (108, 80), (228, -360), (241, 480), (243, 360), (247, 240), (248, 360), (329, 360), (539, 360), (548, 720), (549, 360), (609, 360), (698, 400), (704, 200), (1226, 120), (1227, 40), (1251, 40)]

def reductionPivot5302 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 2, -4]]

theorem reductionSound5302 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2290).moment H =
      Integer.Sparse.eval reductionProjection5302 (momentVector H) := by
  have heq : reductionPivot5302 = (fun u v => (normalNode2290).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2290).moment H = injectiveMoment H reductionPivot5302 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2290).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5302 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5302 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 144, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5302 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2301, reductionProjection5280, reductionProjection5301, oldProjection1727, oldProjection1728] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5302 (0 : Fin 5)) = canonicalInput3781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2301 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3781 hH))).trans (reductionSound2301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5302 (1 : Fin 5)) = (normalNode2279).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5280 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5302 (2 : Fin 5)) = (normalNode2312).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5301 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5302 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1727⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1727 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5302 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1728⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1728 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5302 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2290).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5302 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2290).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5302 (j : Fin 5)))
      1 720 1440 2 ![720, 144, 1440, 1440, 1440] ![2, 10, 1, 1, 1] reductionProjection5302 ![reductionProjection2301, reductionProjection5280, reductionProjection5301, oldProjection1727, oldProjection1728]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5303 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, -15), (228, 240), (241, -80), (247, -160), (251, -720), (545, -720), (548, -720), (1251, -20)]

def reductionPivot5303 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, 2, -4], ![1, 0, -2, 1]]

theorem reductionSound5303 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2325).moment H =
      Integer.Sparse.eval reductionProjection5303 (momentVector H) := by
  have heq : reductionPivot5303 = (fun u v => (normalNode2325).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2325).moment H = injectiveMoment H reductionPivot5303 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2325).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot5303 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5303 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5303 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1100, oldProjection501, reductionProjection1770, oldProjection499] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5303 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1100⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5303 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1100 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5303 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5303 (1 : Fin 4)) = canonicalInput5345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5303 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection501 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5303 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5345 hH))).trans (oldProjectionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5303 (2 : Fin 4)) = canonicalInput4780.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5303 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1770 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5303 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4780 hH))).trans (reductionSound1770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5303 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node499⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5303 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5303 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2325).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5303 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2325).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5303 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection5303 ![oldProjection1100, oldProjection501, reductionProjection1770, oldProjection499]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5304 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -340), (20, 5), (23, -480), (38, -240), (81, -240), (94, 175), (101, -240), (104, 160), (108, 320), (141, 720), (228, -1200), (231, -480), (241, 560), (243, 80), (247, 640), (251, 720), (484, 720), (538, 720), (545, 1440), (548, 720), (698, 160), (704, 160), (1251, 170)]

def reductionPivot5304 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, 2, -4], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound5304 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2291).moment H =
      Integer.Sparse.eval reductionProjection5304 (momentVector H) := by
  have heq : reductionPivot5304 = (fun u v => (normalNode2291).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2291).moment H = injectiveMoment H reductionPivot5304 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2291).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5304 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5304 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 360, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5304 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection775, reductionProjection5285, reductionProjection4619, reductionProjection5303, oldProjection1735] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5304 (0 : Fin 5)) = canonicalInput3791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection775 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3791 hH))).trans (reductionSound775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5304 (1 : Fin 5)) = (normalNode2281).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5285 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5304 (2 : Fin 5)) = canonicalInput4769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4619 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4619 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4769 hH))).trans (reductionSound4619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5304 (3 : Fin 5)) = (normalNode2325).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5303 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5304 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1735⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1735 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5304 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2291).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5304 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2291).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5304 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 360, 1440, 1440] ![1, 5, 4, 1, 1] reductionProjection5304 ![reductionProjection775, reductionProjection5285, reductionProjection4619, reductionProjection5303, oldProjection1735]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5305 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 240), (197, -720), (541, -720), (698, -80), (1050, 480), (1058, 240), (1059, -80), (1221, 240), (1251, 15)]

def reductionPivot5305 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![2, 1, -1, -2]]

theorem reductionSound5305 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2308).moment H =
      Integer.Sparse.eval reductionProjection5305 (momentVector H) := by
  have heq : reductionPivot5305 = (fun u v => (normalNode2308).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2308).moment H = injectiveMoment H reductionPivot5305 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2308).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5305 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5305 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5305 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection831, oldProjection825, oldProjection497, oldProjection410] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5305 (0 : Fin 4)) = canonicalInput7372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5305 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection831 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5305 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7372 hH))).trans (oldProjectionSound831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5305 (1 : Fin 4)) = canonicalInput4918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5305 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection825 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5305 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4918 hH))).trans (oldProjectionSound825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5305 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node497⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5305 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5305 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5305 (3 : Fin 4)) = canonicalInput4755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5305 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection410 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5305 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4755 hH))).trans (oldProjectionSound410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2308).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5305 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2308).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5305 (j : Fin 4)))
      2 1440 1440 2 ![720, 3, 1, 1] ![2, 480, 1440, 1440] reductionProjection5305 ![oldProjection831, oldProjection825, oldProjection497, oldProjection410]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5306 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -160), (72, -240), (94, 75), (197, 720), (241, 400), (243, 80), (247, 240), (541, 1440), (697, -960), (698, 960), (700, 240), (1050, -480), (1058, -480), (1059, 560), (1221, -240), (1250, 180), (1251, -125)]

def reductionPivot5306 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2]]

theorem reductionSound5306 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2292).moment H =
      Integer.Sparse.eval reductionProjection5306 (momentVector H) := by
  have heq : reductionPivot5306 = (fun u v => (normalNode2292).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2292).moment H = injectiveMoment H reductionPivot5306 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2292).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5306 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5306 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 360, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5306 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4816, reductionProjection4056, reductionProjection5305, reductionProjection4150, oldProjection1627] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5306 (0 : Fin 5)) = canonicalInput5559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4816 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5559 hH))).trans (reductionSound4816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5306 (1 : Fin 5)) = (normalNode2367).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4056 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5306 (2 : Fin 5)) = (normalNode2308).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5305 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5306 (3 : Fin 5)) = (normalNode2298).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4150 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5306 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2153 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1627 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5306 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2153 hH))).trans (oldProjectionSound1627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2292).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5306 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2292).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5306 (j : Fin 5)))
      1 1440 1440 1 ![720, 360, 1440, 288, 288] ![2, 4, 1, 5, 5] reductionProjection5306 ![reductionProjection4816, reductionProjection4056, reductionProjection5305, reductionProjection4150, oldProjection1627]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5307 : Integer.Sparse (Fin 1613) := [(0, 3), (81, 240), (94, -10), (197, -720), (542, -720), (698, -240), (700, -160), (1059, -240), (1221, 240), (1251, 35)]

def reductionPivot5307 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![2, 1, -2, -1]]

theorem reductionSound5307 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2309).moment H =
      Integer.Sparse.eval reductionProjection5307 (momentVector H) := by
  have heq : reductionPivot5307 = (fun u v => (normalNode2309).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2309).moment H = injectiveMoment H reductionPivot5307 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2309).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot5307 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5307 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5307 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection844, reductionProjection4815, reductionProjection1111, oldProjection410] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5307 (0 : Fin 4)) = canonicalInput8342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5307 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection844 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5307 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8342 hH))).trans (oldProjectionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5307 (1 : Fin 4)) = canonicalInput4983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5307 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4815 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5307 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4815 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4983 hH))).trans (reductionSound4815 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5307 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code542).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5307 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5307 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5307 (3 : Fin 4)) = canonicalInput4755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5307 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection410 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5307 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4755 hH))).trans (oldProjectionSound410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2309).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5307 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2309).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5307 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 1, 1] ![2, 4, 1440, 1440] reductionProjection5307 ![oldProjection844, reductionProjection4815, reductionProjection1111, oldProjection410]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5308 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -10), (541, -720), (542, -720), (553, -720), (697, 240), (698, -80), (1059, -80), (1251, 35)]

def reductionPivot5308 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, 1, -2, -1]]

theorem reductionSound5308 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode2299).moment H =
      Integer.Sparse.eval reductionProjection5308 (momentVector H) := by
  have heq : reductionPivot5308 = (fun u v => (normalNode2299).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2299).moment H = injectiveMoment H reductionPivot5308 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2299).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5308 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5308 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5308 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection503, oldProjection1346, reductionProjection1111, oldProjection497] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5308 (0 : Fin 4)) = canonicalInput5574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5308 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5308 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5574 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5308 (1 : Fin 4)) = canonicalInput4795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5308 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1346 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5308 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4795 hH))).trans (oldProjectionSound1346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5308 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code542).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5308 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5308 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5308 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node497⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5308 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5308 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2299).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5308 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2299).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5308 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection5308 ![oldProjection503, oldProjection1346, reductionProjection1111, oldProjection497]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5309 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -12), (81, -48), (94, 10), (197, 144), (241, 16), (247, 16), (541, 288), (542, 288), (553, 288), (697, -192), (698, 144), (700, 32), (1058, -48), (1059, 112), (1221, -48), (1226, 16), (1250, 36), (1251, -21)]

def reductionPivot5309 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]

theorem reductionSound5309 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode2293).moment H =
      Integer.Sparse.eval reductionProjection5309 (momentVector H) := by
  have heq : reductionPivot5309 = (fun u v => (normalNode2293).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2293).moment H = injectiveMoment H reductionPivot5309 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2293).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot5309 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot5309 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5309 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4797, oldProjection1737, reductionProjection5307, reductionProjection5308, reductionProjection4150] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5309 (0 : Fin 5)) = canonicalInput5560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4797 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5560 hH))).trans (reductionSound4797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5309 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1737⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1737 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5309 (2 : Fin 5)) = (normalNode2309).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5307 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5309 (3 : Fin 5)) = (normalNode2299).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5308 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5309 (4 : Fin 5)) = (normalNode2298).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4150 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5309 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode2293).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5309 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2293).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot5309 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 1440, 1440, 288] ![1, 1, 1, 1, 5] reductionProjection5309 ![reductionProjection4797, oldProjection1737, reductionProjection5307, reductionProjection5308, reductionProjection4150]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5310 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (76, 120), (94, -15), (243, -40), (682, 120), (697, 240), (698, -80), (704, -40), (1058, 120), (1115, -360), (1226, -40), (1250, -30)]

def reductionPivot5310 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -1, 1, 2], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]

theorem reductionSound5310 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode2542).moment H =
      Integer.Sparse.eval reductionProjection5310 (momentVector H) := by
  have heq : reductionPivot5310 = (fun u v => (normalNode2542).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode2542).moment H = injectiveMoment H reductionPivot5310 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode2542).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot5310 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot5310 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 360, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5310 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection953, oldProjection973, oldProjection679, oldProjection947] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot5310 (0 : Fin 4)) = canonicalInput3856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5310 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection953 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5310 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection953 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound3856 hH))).trans (oldProjectionSound953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5310 (1 : Fin 4)) = canonicalInput4854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5310 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection973 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5310 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4854 hH))).trans (oldProjectionSound973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5310 (2 : Fin 4)) = canonicalInput4895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5310 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5310 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4895 hH))).trans (oldProjectionSound679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot5310 (3 : Fin 4)) = canonicalInput4896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot5310 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot5310 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4896 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode2542).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5310 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode2542).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot5310 (j : Fin 4)))
      2 720 720 2 ![9, 360, 1, 72] ![80, 2, 720, 10] reductionProjection5310 ![oldProjection953, oldProjection973, oldProjection679, oldProjection947]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection5311 : Integer.Sparse (Fin 1613) := [(589, 1)]

theorem reductionSound5311 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code589).moment H =
      Integer.Sparse.eval reductionProjection5311 (momentVector H) := by
  have hc : coordinates (589 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code589) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection5311, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

end NoFourMUBs.Step2.SOS.Normalization

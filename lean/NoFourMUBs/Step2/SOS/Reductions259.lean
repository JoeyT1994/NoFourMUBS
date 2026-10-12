import NoFourMUBs.Step2.SOS.Canonical047
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical129
import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical170
import NoFourMUBs.Step2.SOS.Canonical253
import NoFourMUBs.Step2.SOS.Canonical256
import NoFourMUBs.Step2.SOS.Canonical277
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical411
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions018
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions058
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions094
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions118
import NoFourMUBs.Step2.SOS.Reductions123
import NoFourMUBs.Step2.SOS.Reductions127
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions151
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions191
import NoFourMUBs.Step2.SOS.Reductions192
import NoFourMUBs.Step2.SOS.Reductions195
import NoFourMUBs.Step2.SOS.Reductions221
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions258
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical125
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical126
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical128
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8288 : Integer.Sparse (Fin 1613) := [(20, 1), (93, 12), (94, -2), (1044, -48), (1047, -48), (1060, -48), (1251, 1)]

def reductionPivot8288 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 0, 2], ![0, -3, 3], ![0, 3, -3], ![1, 1, -2]]

theorem reductionSound8288 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4616).moment H =
      Integer.Sparse.eval reductionProjection8288 (momentVector H) := by
  have heq : reductionPivot8288 = (fun u v => (normalNode4616).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4616).moment H = injectiveMoment H reductionPivot8288 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4616).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8288 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8288 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8288 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection277, oldProjection213, oldProjection196, oldProjection192] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8288 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node277⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8288 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection277 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8288 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection277 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8288 (1 : Fin 4)) = canonicalInput9320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8288 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8288 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9320 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8288 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4013 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8288 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection196 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8288 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4013 hH))).trans (oldProjectionSound196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8288 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node192⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8288 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection192 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8288 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4616).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8288 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4616).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8288 (j : Fin 4)))
      2 96 96 2 ![48, 1, 1, 1] ![2, 96, 96, 96] reductionProjection8288 ![oldProjection277, oldProjection213, oldProjection196, oldProjection192]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8289 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -1), (93, -12), (94, 1), (105, -32), (106, -16), (241, -16), (243, -96), (244, -16), (698, -16), (700, -32), (1044, 96), (1045, 48), (1047, 48), (1052, 48), (1060, 48), (1217, 48), (1225, -16), (1226, -16), (1251, -2)]

def reductionPivot8289 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![0, -3, 3], ![0, 3, -3], ![1, -1, 0], ![1, 0, -1]]

theorem reductionSound8289 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4613).moment H =
      Integer.Sparse.eval reductionProjection8289 (momentVector H) := by
  have heq : reductionPivot8289 = (fun u v => (normalNode4613).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4613).moment H = injectiveMoment H reductionPivot8289 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4613).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8289 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8289 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 96, 24, 48, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8289 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection700, oldProjection648, oldProjection637, oldProjection636, reductionProjection8288] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8289 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection700 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection700 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8289 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node648⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection648 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8289 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node637⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection637 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8289 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node636⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection636 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection636 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8289 (4 : Fin 5)) = (normalNode4616).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8288 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8289 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4613).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8289 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4613).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8289 (j : Fin 5)))
      1 96 96 1 ![48, 96, 24, 48, 96] ![2, 1, 4, 2, 1] reductionProjection8289 ![oldProjection700, oldProjection648, oldProjection637, oldProjection636, reductionProjection8288]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8290 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (20, -1), (106, -16), (107, -16)]

def reductionPivot8290 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 0, 2], ![0, 5, -5], ![1, -4, 3]]

theorem reductionSound8290 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4637).moment H =
      Integer.Sparse.eval reductionProjection8290 (momentVector H) := by
  have heq : reductionPivot8290 = (fun u v => (normalNode4637).entries (OAI.MUB6.Certificate.PairSemantics.permutation27 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4637).moment H = injectiveMoment H reductionPivot8290 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4637).entries OAI.MUB6.Certificate.PairSemantics.permutation27)).symm
  have hshape : reductionPivot8290 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8290 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8290 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection55, oldProjection29, reductionProjection608] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8290 (0 : Fin 3)) = canonicalInput18662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8290 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection55 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8290 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection55 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18662 hH))).trans (oldProjectionSound55 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8290 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4163 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8290 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection29 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8290 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection29 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4163 hH))).trans (oldProjectionSound29 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8290 (2 : Fin 3)) = canonicalInput9318.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8290 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection608 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8290 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9318 hH))).trans (reductionSound608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode4637).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8290 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4637).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8290 (j : Fin 3)))
      3 48 48 3 ![16, 1, 1] ![3, 48, 48] reductionProjection8290 ![oldProjection55, oldProjection29, reductionProjection608]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8291 : Integer.Sparse (Fin 1613) := [(4, 1), (20, 2), (94, 1), (105, 8), (106, 16), (107, 8), (1046, -24)]

def reductionPivot8291 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 0, 2], ![0, -3, 3], ![0, 5, -5], ![1, -1, 0]]

theorem reductionSound8291 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4617).moment H =
      Integer.Sparse.eval reductionProjection8291 (momentVector H) := by
  have heq : reductionPivot8291 = (fun u v => (normalNode4617).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4617).moment H = injectiveMoment H reductionPivot8291 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4617).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8291 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8291 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8291 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1895, reductionProjection8290, oldProjection194, reductionProjection6271] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8291 (0 : Fin 4)) = (normalNode9524).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8291 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1895 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8291 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8291 (1 : Fin 4)) = canonicalInput9321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8291 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8290 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8291 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9321 hH))).trans (reductionSound8290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8291 (2 : Fin 4)) = canonicalInput9284.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8291 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection194 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8291 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9284 hH))).trans (oldProjectionSound194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8291 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1046).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8291 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6271 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8291 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4617).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8291 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4617).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8291 (j : Fin 4)))
      2 48 48 2 ![48, 48, 48, 1] ![1, 1, 1, 48] reductionProjection8291 ![reductionProjection1895, reductionProjection8290, oldProjection194, reductionProjection6271]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8292 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (93, -60), (94, -20), (241, -80), (243, -40), (690, 120), (691, 120), (694, 120), (696, 120), (698, -120), (1047, 120), (1049, -240), (1050, 120), (1055, 120), (1057, 120), (1058, 120), (1226, -40), (1250, -60), (1251, 15)]

def reductionPivot8292 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, -2, 2], ![0, 2, -2], ![1, -1, 0], ![1, 2, -3]]

theorem reductionSound8292 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode4618).moment H =
      Integer.Sparse.eval reductionProjection8292 (momentVector H) := by
  have heq : reductionPivot8292 = (fun u v => (normalNode4618).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4618).moment H = injectiveMoment H reductionPivot8292 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4618).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8292 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8292 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![8, 48, 480, 1, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8292 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection546, reductionProjection7096, oldProjection645, reductionProjection3123, oldProjection647] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8292 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node546⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((8 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection546 (momentVector H)
      have hh : (8 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection546 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (8 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound546 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8292 (1 : Fin 5)) = (normalNode4615).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7096 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound7096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8292 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node645⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection645 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8292 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1049).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3123 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound3123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8292 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection647 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8292 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4618).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8292 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4618).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8292 (j : Fin 5)))
      1 240 480 2 ![8, 48, 480, 1, 480] ![60, 10, 1, 480, 1] reductionProjection8292 ![oldProjection546, reductionProjection7096, oldProjection645, reductionProjection3123, oldProjection647]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8293 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (93, -120), (94, 10), (241, -80), (243, -80), (691, 240), (694, 240), (698, -80), (699, 240), (700, -80), (1044, 240), (1047, 240), (1050, 240), (1051, -480), (1052, 240), (1055, 240), (1058, 240), (1060, 240), (1250, -60), (1251, 10)]

def reductionPivot8293 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, -2, 2], ![0, 3, -3], ![1, -1, 0], ![1, 1, -2]]

theorem reductionSound8293 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4619).moment H =
      Integer.Sparse.eval reductionProjection8293 (momentVector H) := by
  have heq : reductionPivot8293 = (fun u v => (normalNode4619).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4619).moment H = injectiveMoment H reductionPivot8293 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4619).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8293 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8293 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 96, 480, 1, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8293 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection548, reductionProjection8288, oldProjection647, reductionProjection2641, oldProjection648] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8293 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node548⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection548 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8293 (1 : Fin 5)) = (normalNode4616).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8288 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8293 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection647 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8293 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1051).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2641 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound2641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8293 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node648⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection648 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8293 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4619).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8293 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4619).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8293 (j : Fin 5)))
      1 480 480 1 ![48, 96, 480, 1, 96] ![10, 5, 1, 480, 5] reductionProjection8293 ![oldProjection548, reductionProjection8288, oldProjection647, reductionProjection2641, oldProjection648]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8294 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -1), (693, -6), (1054, -6), (1062, -6)]

def reductionPivot8294 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 0, 2], ![0, -2, 2], ![0, 5, -5], ![1, -2, 1]]

theorem reductionSound8294 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode4622).moment H =
      Integer.Sparse.eval reductionProjection8294 (momentVector H) := by
  have heq : reductionPivot8294 = (fun u v => (normalNode4622).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4622).moment H = injectiveMoment H reductionPivot8294 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4622).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot8294 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8294 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![6, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8294 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection282, reductionProjection1883, oldProjection200, reductionProjection633] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8294 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node282⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8294 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection282 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8294 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8294 (1 : Fin 4)) = canonicalInput9323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8294 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1883 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8294 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1883 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9323 hH))).trans (reductionSound1883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8294 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4047 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8294 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection200 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8294 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4047 hH))).trans (oldProjectionSound200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8294 (3 : Fin 4)) = canonicalInput9288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8294 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection633 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8294 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection633 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9288 hH))).trans (reductionSound633 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4622).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8294 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4622).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8294 (j : Fin 4)))
      2 12 12 2 ![6, 1, 1, 1] ![2, 12, 12, 12] reductionProjection8294 ![oldProjection282, reductionProjection1883, oldProjection200, reductionProjection633]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8295 : Integer.Sparse (Fin 1613) := [(3, 20), (4, -1), (19, 12), (20, -3), (94, -3), (104, -8), (105, -8), (106, -16), (107, -8), (241, -8), (243, -16), (244, -8), (245, -8), (693, 72), (703, -16), (1046, 24), (1053, 24), (1054, 48), (1062, 48), (1251, -1)]

def reductionPivot8295 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, -2, 2], ![0, 5, -5], ![1, -1, 0], ![1, -1, 0]]

theorem reductionSound8295 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4620).moment H =
      Integer.Sparse.eval reductionProjection8295 (momentVector H) := by
  have heq : reductionPivot8295 = (fun u v => (normalNode4620).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4620).moment H = injectiveMoment H reductionPivot8295 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4620).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8295 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8295 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![12, 48, 48, 12, 12] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8295 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6144, reductionProjection8291, oldProjection650, reductionProjection8294, reductionProjection8294] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8295 (0 : Fin 5)) = (normalNode3020).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6144 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8295 (1 : Fin 5)) = (normalNode4617).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8291 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8295 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node650⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection650 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8295 (3 : Fin 5)) = (normalNode4622).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8294 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8295 (4 : Fin 5)) = canonicalInput9287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8294 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8295 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9287 hH))).trans (reductionSound8294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4620).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8295 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4620).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8295 (j : Fin 5)))
      1 48 48 1 ![12, 48, 48, 12, 12] ![4, 1, 1, 4, 4] reductionProjection8295 ![reductionProjection6144, reductionProjection8291, oldProjection650, reductionProjection8294, reductionProjection8294]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8296 : Integer.Sparse (Fin 1613) := [(0, 1), (698, -80), (700, -80), (1048, -120), (1050, 120), (1052, 240), (1053, 60), (1059, -60), (1221, 120), (1251, 15)]

def reductionPivot8296 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![0, -2, 2], ![0, 1, -1], ![0, 2, -2], ![2, -2, 0]]

theorem reductionSound8296 {H : CMatrix} (hH : IsHadamard H) :
    (120 : ℝ) * (normalNode4621).moment H =
      Integer.Sparse.eval reductionProjection8296 (momentVector H) := by
  have heq : reductionPivot8296 = (fun u v => (normalNode4621).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4621).moment H = injectiveMoment H reductionPivot8296 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4621).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8296 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8296 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 240, 1, 6, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8296 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection642, oldProjection656, reductionProjection3072, oldProjection643, oldProjection642] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8296 (0 : Fin 5)) = canonicalInput10903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection642 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10903 hH))).trans (oldProjectionSound642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8296 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node656⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection656 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection656 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8296 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1048).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3072 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3072 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound3072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8296 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node643⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection643 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8296 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection642 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8296 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4621).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8296 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4621).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8296 (j : Fin 5)))
      1 120 480 4 ![480, 240, 1, 6, 480] ![1, 2, 480, 80, 1] reductionProjection8296 ![oldProjection642, oldProjection656, reductionProjection3072, oldProjection643, oldProjection642]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8297 : Integer.Sparse (Fin 1613) := [(243, 1), (696, -3), (698, 1), (1057, -3), (1058, -3), (1226, 1)]

def reductionPivot8297 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, 2, -2], ![1, -3, 2], ![1, 2, -3]]

theorem reductionSound8297 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4628).moment H =
      Integer.Sparse.eval reductionProjection8297 (momentVector H) := by
  have heq : reductionPivot8297 = (fun u v => (normalNode4628).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4628).moment H = injectiveMoment H reductionPivot8297 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4628).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8297 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8297 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8297 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection183, oldProjection209, oldProjection211, oldProjection212] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8297 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8297 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection183 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8297 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8297 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8297 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection209 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8297 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8297 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8297 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8297 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8297 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8297 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection212 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8297 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4628).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8297 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4628).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8297 (j : Fin 4)))
      2 6 6 2 ![1, 3, 1, 1] ![6, 2, 6, 6] reductionProjection8297 ![oldProjection183, oldProjection209, oldProjection211, oldProjection212]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8298 : Integer.Sparse (Fin 1613) := [(0, 3), (94, -20), (240, 240), (243, -160), (696, 480), (697, 480), (698, -320), (704, -160), (1049, -480), (1057, 240), (1058, 480), (1059, -80), (1226, -160), (1227, -160), (1251, 25)]

def reductionPivot8298 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, -1, 1], ![0, 2, -2], ![1, -2, 1], ![1, 2, -3]]

theorem reductionSound8298 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4623).moment H =
      Integer.Sparse.eval reductionProjection8298 (momentVector H) := by
  have heq : reductionPivot8298 = (fun u v => (normalNode4623).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4623).moment H = injectiveMoment H reductionPivot8298 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4623).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8298 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8298 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 1, 480, 6, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8298 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6118, reductionProjection3123, oldProjection658, reductionProjection8297, oldProjection660] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8298 (0 : Fin 5)) = (normalNode3026).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6118 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8298 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1049).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3123 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound3123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8298 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node658⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection658 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection658 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound658 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8298 (3 : Fin 5)) = (normalNode4628).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8297 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8297 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8298 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection660 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8298 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection660 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4623).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8298 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4623).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8298 (j : Fin 5)))
      1 480 480 1 ![48, 1, 480, 6, 240] ![10, 480, 1, 80, 2] reductionProjection8298 ![reductionProjection6118, reductionProjection3123, oldProjection658, reductionProjection8297, oldProjection660]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8299 : Integer.Sparse (Fin 1613) := [(94, -3), (243, 16), (699, -48), (700, 16), (1058, -48), (1060, -48), (1251, 1)]

def reductionPivot8299 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, 3, -3], ![1, -3, 2], ![1, 1, -2]]

theorem reductionSound8299 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4629).moment H =
      Integer.Sparse.eval reductionProjection8299 (momentVector H) := by
  have heq : reductionPivot8299 = (fun u v => (normalNode4629).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4629).moment H = injectiveMoment H reductionPivot8299 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4629).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8299 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8299 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8299 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection186, oldProjection212, oldProjection213, oldProjection214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8299 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8299 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection186 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8299 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8299 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8299 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection212 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8299 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8299 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8299 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8299 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8299 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8299 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8299 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4629).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8299 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4629).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8299 (j : Fin 4)))
      2 96 96 2 ![1, 1, 1, 48] ![96, 96, 96, 2] reductionProjection8299 ![oldProjection186, oldProjection212, oldProjection213, oldProjection214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8300 : Integer.Sparse (Fin 1613) := [(0, 3), (242, 240), (243, -160), (697, 480), (698, -320), (699, 480), (700, -400), (704, -160), (1051, -480), (1058, 480), (1059, -160), (1060, 240), (1227, -80), (1251, 5)]

def reductionPivot8300 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, -1, 1], ![0, 3, -3], ![1, -2, 1], ![1, 1, -2]]

theorem reductionSound8300 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4624).moment H =
      Integer.Sparse.eval reductionProjection8300 (momentVector H) := by
  have heq : reductionPivot8300 = (fun u v => (normalNode4624).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4624).moment H = injectiveMoment H reductionPivot8300 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4624).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8300 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8300 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 1, 240, 96, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8300 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6148, reductionProjection2641, oldProjection660, reductionProjection8299, oldProjection662] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8300 (0 : Fin 5)) = (normalNode3027).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6148 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6148 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6148 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8300 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1051).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2641 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound2641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8300 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection660 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection660 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8300 (3 : Fin 5)) = (normalNode4629).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8299 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8300 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node662⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection662 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8300 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection662 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4624).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8300 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4624).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8300 (j : Fin 5)))
      1 480 480 1 ![48, 1, 240, 96, 480] ![10, 480, 2, 5, 1] reductionProjection8300 ![reductionProjection6148, reductionProjection2641, oldProjection660, reductionProjection8299, oldProjection662]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8301 : Integer.Sparse (Fin 1613) := [(3, -12), (4, 1), (19, -4), (20, 2), (94, 1), (106, 16), (107, 16), (243, 16), (244, 16), (245, 16), (703, 16), (1062, -48)]

def reductionPivot8301 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, 5, -5], ![1, -3, 2], ![1, -1, 0]]

theorem reductionSound8301 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4630).moment H =
      Integer.Sparse.eval reductionProjection8301 (momentVector H) := by
  have heq : reductionPivot8301 = (fun u v => (normalNode4630).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4630).moment H = injectiveMoment H reductionPivot8301 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4630).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8301 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8301 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![6, 48, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8301 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6143, oldProjection217, reductionProjection8290, reductionProjection1883] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8301 (0 : Fin 4)) = (normalNode3031).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8301 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6143 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8301 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8301 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node217⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8301 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection217 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8301 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8301 (2 : Fin 4)) = (normalNode4637).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8301 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8290 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8301 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8301 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1062).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8301 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1883 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8301 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1883 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4630).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8301 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4630).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8301 (j : Fin 4)))
      2 96 96 2 ![6, 48, 48, 1] ![16, 2, 2, 96] reductionProjection8301 ![reductionProjection6143, oldProjection217, reductionProjection8290, reductionProjection1883]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8302 : Integer.Sparse (Fin 1613) := [(702, -1), (1061, -1), (1062, -2)]

def reductionPivot8302 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, 5, -5], ![1, -2, 1], ![1, -2, 1]]

theorem reductionSound8302 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4631).moment H =
      Integer.Sparse.eval reductionProjection8302 (momentVector H) := by
  have heq : reductionPivot8302 = (fun u v => (normalNode4631).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4631).moment H = injectiveMoment H reductionPivot8302 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4631).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8302 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8302 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8302 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection642, oldProjection218, reductionProjection1883, reductionProjection1883] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8302 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code702).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8302 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection642 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8302 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8302 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node218⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8302 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection218 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8302 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8302 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1062).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8302 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1883 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8302 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1883 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8302 (3 : Fin 4)) = canonicalInput9317.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8302 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1883 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8302 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1883 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9317 hH))).trans (reductionSound1883 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4631).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8302 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4631).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8302 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8302 ![reductionProjection642, oldProjection218, reductionProjection1883, reductionProjection1883]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8303 : Integer.Sparse (Fin 1613) := [(3, 20), (4, -1), (19, 12), (20, -3), (94, -3), (106, -8), (107, -8), (243, -16), (244, -16), (245, -24), (246, -8), (693, 24), (698, -8), (700, -8), (701, -16), (702, 48), (703, -16), (704, -16), (1054, 24), (1061, 48), (1062, 96), (1251, -1)]

def reductionPivot8303 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, -1, 1], ![0, 5, -5], ![1, -2, 1], ![1, -1, 0]]

theorem reductionSound8303 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4626).moment H =
      Integer.Sparse.eval reductionProjection8303 (momentVector H) := by
  have heq : reductionPivot8303 = (fun u v => (normalNode4626).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4626).moment H = injectiveMoment H reductionPivot8303 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4626).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8303 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8303 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 12, 48, 96, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8303 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6150, reductionProjection8294, oldProjection665, reductionProjection8301, reductionProjection8302] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8303 (0 : Fin 5)) = (normalNode3028).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6150 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6150 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6150 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8303 (1 : Fin 5)) = (normalNode4622).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8294 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8294 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8303 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node665⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection665 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8303 (3 : Fin 5)) = (normalNode4630).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8301 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8303 (4 : Fin 5)) = (normalNode4631).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8302 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8303 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8302 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8302 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4626).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8303 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4626).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8303 (j : Fin 5)))
      1 48 96 2 ![96, 12, 48, 96, 2] ![1, 8, 2, 1, 48] reductionProjection8303 ![reductionProjection6150, reductionProjection8294, oldProjection665, reductionProjection8301, reductionProjection8302]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8304 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (94, 20), (106, -80), (243, -400), (244, -160), (698, -240), (699, 240), (700, -320), (701, -80), (703, -80), (704, -80), (1058, 240), (1059, -80), (1060, 240), (1225, -80), (1226, -160), (1251, -5)]

def reductionPivot8304 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, 1, -1], ![0, 3, -3], ![1, -3, 2], ![1, 0, -1]]

theorem reductionSound8304 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4627).moment H =
      Integer.Sparse.eval reductionProjection8304 (momentVector H) := by
  have heq : reductionPivot8304 = (fun u v => (normalNode4627).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4627).moment H = injectiveMoment H reductionPivot8304 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4627).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8304 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8304 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 480, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8304 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection574, oldProjection214, oldProjection669, reductionProjection8274, oldProjection671] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8304 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node574⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection574 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection574 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8304 (1 : Fin 5)) = canonicalInput9304.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9304 hH))).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8304 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node669⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection669 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection669 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8304 (3 : Fin 5)) = (normalNode4634).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8274 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8304 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node671⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection671 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8304 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection671 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4627).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8304 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4627).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8304 (j : Fin 5)))
      1 480 480 1 ![96, 48, 480, 96, 96] ![5, 10, 1, 5, 5] reductionProjection8304 ![oldProjection574, oldProjection214, oldProjection669, reductionProjection8274, oldProjection671]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8305 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -4), (698, -80), (700, -32), (1055, 24), (1056, -48), (1059, -32), (1061, 24), (1219, 48), (1227, -32), (1251, 11)]

def reductionPivot8305 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![0, 1, -1], ![0, 2, -2], ![1, -2, 1], ![1, -2, 1]]

theorem reductionSound8305 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4632).moment H =
      Integer.Sparse.eval reductionProjection8305 (momentVector H) := by
  have heq : reductionPivot8305 = (fun u v => (normalNode4632).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4632).moment H = injectiveMoment H reductionPivot8305 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4632).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8305 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8305 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![240, 1, 24, 240, 240] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8305 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection703, reductionProjection3108, oldProjection672, oldProjection670, oldProjection670] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8305 (0 : Fin 5)) = canonicalInput10917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection703 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10917 hH))).trans (oldProjectionSound703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8305 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1056).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3108 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound3108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8305 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node672⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection672 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8305 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4122 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection670 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4122 hH))).trans (oldProjectionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8305 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node670⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection670 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8305 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4632).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8305 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4632).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8305 (j : Fin 5)))
      1 48 240 5 ![240, 1, 24, 240, 240] ![1, 240, 10, 1, 1] reductionProjection8305 ![oldProjection703, reductionProjection3108, oldProjection672, oldProjection670, oldProjection670]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8306 : Integer.Sparse (Fin 1613) := [(20, 3), (94, -1), (106, -16), (1225, -16)]

def reductionPivot8306 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 1, 1], ![0, -4, 4], ![1, 3, -4]]

theorem reductionSound8306 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode5583).moment H =
      Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
  have heq : reductionPivot8306 = (fun u v => (normalNode5583).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5583).moment H = injectiveMoment H reductionPivot8306 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5583).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot8306 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8306 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8306 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection54, oldProjection42, oldProjection29] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8306 (0 : Fin 3)) = canonicalInput22821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8306 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection54 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8306 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound22821 hH))).trans (oldProjectionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8306 (1 : Fin 3)) = ((⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node42⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8306 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection42 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8306 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection42 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound42 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8306 (2 : Fin 3)) = canonicalInput10894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8306 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection29 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8306 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection29 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10894 hH))).trans (oldProjectionSound29 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode5583).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8306 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5583).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8306 (j : Fin 3)))
      3 48 48 3 ![16, 1, 1] ![3, 48, 48] reductionProjection8306 ![oldProjection54, oldProjection42, oldProjection29]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8307 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -8), (105, 16), (106, 16), (243, 48), (1225, 32), (1226, 16), (1251, 1)]

def reductionPivot8307 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 1, 1], ![0, -3, 3], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound8307 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode5590).moment H =
      Integer.Sparse.eval reductionProjection8307 (momentVector H) := by
  have heq : reductionPivot8307 = (fun u v => (normalNode5590).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5590).moment H = injectiveMoment H reductionPivot8307 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5590).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8307 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8307 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8307 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection195, reductionProjection8306, oldProjection221, oldProjection222] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8307 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node195⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8307 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection195 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8307 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8307 (1 : Fin 4)) = (normalNode5583).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8307 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8306 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8307 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8307 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8307 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8307 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8307 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8307 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection222 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8307 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5590).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8307 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5590).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8307 (j : Fin 4)))
      2 96 96 2 ![48, 48, 48, 48] ![2, 2, 2, 2] reductionProjection8307 ![oldProjection195, reductionProjection8306, oldProjection221, oldProjection222]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8308 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -4), (20, 1), (93, 12), (94, 1), (103, -48), (1057, -48), (1060, -48)]

def reductionPivot8308 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 0, 2], ![0, 2, -2], ![0, 3, -3], ![1, -4, 3]]

theorem reductionSound8308 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4636).moment H =
      Integer.Sparse.eval reductionProjection8308 (momentVector H) := by
  have heq : reductionPivot8308 = (fun u v => (normalNode4636).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4636).moment H = injectiveMoment H reductionPivot8308 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4636).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot8308 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8308 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8308 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection257, oldProjection213, oldProjection211, reductionProjection606] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8308 (0 : Fin 4)) = canonicalInput18660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8308 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection257 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8308 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18660 hH))).trans (oldProjectionSound257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8308 (1 : Fin 4)) = canonicalInput9325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8308 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8308 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9325 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8308 (2 : Fin 4)) = canonicalInput9311.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8308 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8308 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9311 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8308 (3 : Fin 4)) = canonicalInput9310.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8308 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection606 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8308 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9310 hH))).trans (reductionSound606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4636).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8308 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4636).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8308 (j : Fin 4)))
      2 96 96 2 ![48, 1, 1, 1] ![2, 96, 96, 96] reductionProjection8308 ![oldProjection257, oldProjection213, oldProjection211, reductionProjection606]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8309 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (19, -4), (20, -4), (94, 3), (106, 48), (107, 16), (243, 16), (244, 32), (1225, 16)]

def reductionPivot8309 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![0, 4, -4], ![1, -4, 3], ![1, -1, 0]]

theorem reductionSound8309 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4635).moment H =
      Integer.Sparse.eval reductionProjection8309 (momentVector H) := by
  have heq : reductionPivot8309 = (fun u v => (normalNode4635).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4635).moment H = injectiveMoment H reductionPivot8309 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4635).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8309 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8309 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8309 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8306, reductionProjection8290, oldProjection217, oldProjection216] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8309 (0 : Fin 4)) = canonicalInput10928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8309 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8306 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8309 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10928 hH))).trans (reductionSound8306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8309 (1 : Fin 4)) = (normalNode4637).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8309 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8290 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8309 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8290 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8290 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8309 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node217⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8309 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection217 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8309 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8309 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node216⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8309 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection216 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8309 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4635).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8309 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4635).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8309 (j : Fin 4)))
      2 96 96 2 ![48, 48, 48, 48] ![2, 2, 2, 2] reductionProjection8309 ![reductionProjection8306, reductionProjection8290, oldProjection217, oldProjection216]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8310 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -1), (19, 12), (20, 5), (93, -12), (94, 12), (103, 48), (105, -16), (106, -80), (107, -16), (243, -144), (244, -64), (698, -16), (700, -48), (1057, 48), (1060, 96), (1225, -64), (1226, -32), (1251, -6)]

def reductionPivot8310 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![0, 1, -1], ![0, 3, -3], ![1, -4, 3], ![1, -1, 0]]

theorem reductionSound8310 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4633).moment H =
      Integer.Sparse.eval reductionProjection8310 (momentVector H) := by
  have heq : reductionPivot8310 = (fun u v => (normalNode4633).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4633).moment H = injectiveMoment H reductionPivot8310 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4633).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8310 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8310 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 96, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8310 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8307, reductionProjection8308, reductionProjection8309, oldProjection671, reductionProjection8274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8310 (0 : Fin 5)) = canonicalInput10918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8307 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8307 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10918 hH))).trans (reductionSound8307 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8310 (1 : Fin 5)) = (normalNode4636).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8308 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8310 (2 : Fin 5)) = (normalNode4635).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8309 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8310 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node671⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection671 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection671 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8310 (4 : Fin 5)) = (normalNode4634).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8274 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8310 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4633).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8310 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4633).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8310 (j : Fin 5)))
      1 96 96 1 ![96, 96, 96, 96, 96] ![1, 1, 1, 1, 1] reductionProjection8310 ![reductionProjection8307, reductionProjection8308, reductionProjection8309, oldProjection671, reductionProjection8274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8311 : Integer.Sparse (Fin 1613) := [(0, 1), (546, 720), (563, 1440), (666, 720), (669, 720), (697, -240), (698, 240), (1227, 400), (1251, -65), (1389, -720)]

def reductionPivot8311 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![1, 0, 1, -2, 0], ![-1, 2, 1, -1, -1], ![1, -1, -2, 1, 1]]

theorem reductionSound8311 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10797).moment H =
      Integer.Sparse.eval reductionProjection8311 (momentVector H) := by
  have heq : reductionPivot8311 = (fun u v => (normalNode10797).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10797).moment H = injectiveMoment H reductionPivot8311 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10797).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode10797).entries)).symm
  have hshape : reductionPivot8311 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8311 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8311 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4825, reductionProjection4825, reductionProjection4861, reductionProjection4861] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8311 (0 : Fin 4)) = canonicalInput17734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8311 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4825 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8311 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17734 hH))).trans (reductionSound4825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8311 (1 : Fin 4)) = canonicalInput26328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8311 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4825 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8311 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26328 hH))).trans (reductionSound4825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8311 (2 : Fin 4)) = canonicalInput26360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8311 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4861 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8311 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26360 hH))).trans (reductionSound4861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8311 (3 : Fin 4)) = canonicalInput26361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8311 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4861 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8311 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound26361 hH))).trans (reductionSound4861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10797).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8311 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10797).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8311 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 1440, 1440] ![2, 2, 1, 1] reductionProjection8311 ![reductionProjection4825, reductionProjection4825, reductionProjection4861, reductionProjection4861]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8312 : Integer.Sparse (Fin 1613) := [(1063, 1)]

theorem reductionSound8312 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1063).moment H =
      Integer.Sparse.eval reductionProjection8312 (momentVector H) := by
  have hc : coordinates (1063 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1063) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8312, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8313 : Integer.Sparse (Fin 1613) := [(0, -9), (81, 48), (94, -18), (247, -16), (377, -576), (383, -576), (546, -288), (563, -720), (666, -432), (669, -576), (697, 144), (698, -256), (1055, 48), (1059, -32), (1063, -576), (1227, -320), (1251, 87), (1388, 48), (1389, 480)]

def reductionPivot8313 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-2, 0, 2, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1], ![1, 0, 0, 1, -2]]

theorem reductionSound8313 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode4638).moment H =
      Integer.Sparse.eval reductionProjection8313 (momentVector H) := by
  have heq : reductionPivot8313 = (fun u v => (normalNode4638).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4638).moment H = injectiveMoment H reductionPivot8313 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4638).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8313 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8313 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 2880, 1440, 1, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8313 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4064, reductionProjection4862, reductionProjection8311, reductionProjection3967, reductionProjection8312] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8313 (0 : Fin 5)) = canonicalInput5489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4064 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound5489 hH))).trans (reductionSound4064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8313 (1 : Fin 5)) = canonicalInput9326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4862 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4862 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9326 hH))).trans (reductionSound4862 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8313 (2 : Fin 5)) = canonicalInput9327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8311 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9327 hH))).trans (reductionSound8311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8313 (3 : Fin 5)) = canonicalInput9328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3967 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9328 hH))).trans (reductionSound3967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8313 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1063).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8312 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8313 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound8312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4638).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8313 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4638).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8313 (j : Fin 5)))
      1 576 2880 5 ![1, 2880, 1440, 1, 1] ![2880, 1, 2, 2880, 2880] reductionProjection8313 ![reductionProjection4064, reductionProjection4862, reductionProjection8311, reductionProjection3967, reductionProjection8312]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8314 : Integer.Sparse (Fin 1613) := [(0, 74), (94, 45), (617, 720), (669, 720), (698, 160), (1227, 400), (1251, -385), (1373, -1440), (1385, 720), (1388, -240), (1389, -1440)]

def reductionPivot8314 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![2, 1, -2, -1, 0]]

theorem reductionSound8314 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8081).moment H =
      Integer.Sparse.eval reductionProjection8314 (momentVector H) := by
  have heq : reductionPivot8314 = (fun u v => (normalNode8081).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8081).moment H = injectiveMoment H reductionPivot8314 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8081).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8081).entries)).symm
  have hshape : reductionPivot8314 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8314 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8314 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3561, reductionProjection3790, reductionProjection4844, reductionProjection5129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8314 (0 : Fin 4)) = canonicalInput3054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8314 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3561 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8314 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3561 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound3054 hH))).trans (reductionSound3561 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8314 (1 : Fin 4)) = canonicalInput16239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8314 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3790 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8314 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16239 hH))).trans (reductionSound3790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8314 (2 : Fin 4)) = canonicalInput16401.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8314 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4844 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8314 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16401 hH))).trans (reductionSound4844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8314 (3 : Fin 4)) = canonicalInput16414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8314 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5129 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8314 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16414 hH))).trans (reductionSound5129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8081).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8314 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8081).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8314 (j : Fin 4)))
      2 2880 2880 2 ![1, 720, 720, 1440] ![2880, 4, 4, 2] reductionProjection8314 ![reductionProjection3561, reductionProjection3790, reductionProjection4844, reductionProjection5129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8315 : Integer.Sparse (Fin 1613) := [(0, -74), (94, -45), (617, -720), (669, -720), (698, -160), (825, -1440), (1063, -2880), (1227, -400), (1251, 385), (1373, 1440), (1385, -720), (1388, 240), (1389, 1440)]

def reductionPivot8315 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-2, 0, 2, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1], ![1, -1, 0, 1, -1]]

theorem reductionSound8315 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4639).moment H =
      Integer.Sparse.eval reductionProjection8315 (momentVector H) := by
  have heq : reductionPivot8315 = (fun u v => (normalNode4639).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4639).moment H = injectiveMoment H reductionPivot8315 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4639).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8315 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8315 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 2880, 1, 2880, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8315 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection7198, reductionProjection8314, reductionProjection8312, reductionProjection8314, reductionProjection8312] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8315 (0 : Fin 5)) = canonicalInput9471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9471 hH))).trans (reductionSound7198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8315 (1 : Fin 5)) = canonicalInput9331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8314 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9331 hH))).trans (reductionSound8314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8315 (2 : Fin 5)) = canonicalInput9330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8312 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9330 hH))).trans (reductionSound8312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8315 (3 : Fin 5)) = canonicalInput9329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8314 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8314 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9329 hH))).trans (reductionSound8314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8315 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1063).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8312 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8315 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound8312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4639).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8315 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4639).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8315 (j : Fin 5)))
      1 1440 2880 2 ![1, 2880, 1, 2880, 1] ![2880, 1, 2880, 1, 2880] reductionProjection8315 ![reductionProjection7198, reductionProjection8314, reductionProjection8312, reductionProjection8314, reductionProjection8312]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8316 : Integer.Sparse (Fin 1613) := [(38, 24), (94, -1), (129, -36), (134, -36), (698, -8), (700, -8), (1061, 24), (1251, -1)]

def reductionPivot8316 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-2, 0, 2, 0], ![0, -1, -3, 4], ![1, 1, 0, -2], ![1, 1, 0, -2]]

theorem reductionSound8316 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode4640).moment H =
      Integer.Sparse.eval reductionProjection8316 (momentVector H) := by
  have heq : reductionPivot8316 = (fun u v => (normalNode4640).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4640).moment H = injectiveMoment H reductionPivot8316 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4640).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8316 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8316 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8316 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection846, oldProjection397, oldProjection997, oldProjection997] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8316 (0 : Fin 4)) = canonicalInput5870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8316 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection846 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8316 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5870 hH))).trans (reductionSound846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8316 (1 : Fin 4)) = canonicalInput9360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8316 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection397 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8316 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9360 hH))).trans (oldProjectionSound397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8316 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4185 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8316 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8316 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4185 hH))).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8316 (3 : Fin 4)) = canonicalInput9378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8316 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8316 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9378 hH))).trans (oldProjectionSound997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4640).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8316 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4640).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8316 (j : Fin 4)))
      2 72 72 2 ![1, 1, 72, 72] ![72, 72, 1, 1] reductionProjection8316 ![reductionProjection846, oldProjection397, oldProjection997, oldProjection997]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8317 : Integer.Sparse (Fin 1613) := [(0, 2), (81, 240), (94, -5), (243, -80), (662, -720), (698, -240), (700, -320), (720, -720), (1059, -160), (1251, 5)]

def reductionPivot8317 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 2, 0], ![0, -1, -2, 3], ![1, 1, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound8317 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4643).moment H =
      Integer.Sparse.eval reductionProjection8317 (momentVector H) := by
  have heq : reductionPivot8317 = (fun u v => (normalNode4643).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4643).moment H = injectiveMoment H reductionPivot8317 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4643).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8317 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8317 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8317 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6002, oldProjection578, oldProjection938, oldProjection1098] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8317 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code662).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8317 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6002 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8317 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6002 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8317 (1 : Fin 4)) = canonicalInput9359.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8317 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection578 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8317 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection578 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9359 hH))).trans (oldProjectionSound578 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8317 (2 : Fin 4)) = canonicalInput9383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8317 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection938 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8317 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9383 hH))).trans (oldProjectionSound938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8317 (3 : Fin 4)) = canonicalInput9384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8317 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1098 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8317 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1098 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9384 hH))).trans (oldProjectionSound1098 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4643).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8317 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4643).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8317 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 720] ![1440, 1440, 2, 2] reductionProjection8317 ![reductionProjection6002, oldProjection578, oldProjection938, oldProjection1098]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8318 : Integer.Sparse (Fin 1613) := [(0, -9), (81, -720), (94, 80), (229, -240), (243, 80), (244, 80), (427, 720), (508, 720), (698, 1040), (700, 1280), (701, 240), (704, 240), (717, 720), (895, 1440), (1058, -240), (1059, 400), (1227, 80), (1251, -55)]

def reductionPivot8318 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 0, 2, 0], ![0, -1, -2, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]

theorem reductionSound8318 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4644).moment H =
      Integer.Sparse.eval reductionProjection8318 (momentVector H) := by
  have heq : reductionPivot8318 = (fun u v => (normalNode4644).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4644).moment H = injectiveMoment H reductionPivot8318 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4644).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8318 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8318 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 1440, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8318 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1724, reductionProjection7660, reductionProjection3032, reductionProjection3032, oldProjection1650] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8318 (0 : Fin 5)) = canonicalInput8295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8295 hH))).trans (oldProjectionSound1724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8318 (1 : Fin 5)) = (normalNode4641).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7660 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7660 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8318 (2 : Fin 5)) = canonicalInput9379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3032 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3032 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9379 hH))).trans (reductionSound3032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8318 (3 : Fin 5)) = canonicalInput9380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3032 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3032 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9380 hH))).trans (reductionSound3032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8318 (4 : Fin 5)) = canonicalInput9381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1650 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8318 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9381 hH))).trans (oldProjectionSound1650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4644).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8318 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4644).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8318 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 1440, 1440, 360] ![1, 20, 1, 1, 4] reductionProjection8318 ![oldProjection1724, reductionProjection7660, reductionProjection3032, reductionProjection3032, oldProjection1650]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8319 : Integer.Sparse (Fin 1613) := [(0, 21), (94, 35), (433, 360), (669, 360), (697, -120), (698, 920), (700, 240), (1052, -120), (1059, 480), (1221, -240), (1226, 40), (1227, 400), (1251, -330), (1389, -120)]

def reductionPivot8319 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound8319 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode4645).moment H =
      Integer.Sparse.eval reductionProjection8319 (momentVector H) := by
  have heq : reductionPivot8319 = (fun u v => (normalNode4645).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4645).moment H = injectiveMoment H reductionPivot8319 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4645).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8319 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8319 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 360, 720, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8319 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1834, oldProjection1687, reductionProjection3171, oldProjection2021, oldProjection2609] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8319 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8319 (1 : Fin 5)) = canonicalInput9361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1687 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9361 hH))).trans (oldProjectionSound1687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8319 (2 : Fin 5)) = canonicalInput9388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3171 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9388 hH))).trans (reductionSound3171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8319 (3 : Fin 5)) = canonicalInput9397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2021 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9397 hH))).trans (oldProjectionSound2021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8319 (4 : Fin 5)) = canonicalInput9398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2609 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8319 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9398 hH))).trans (oldProjectionSound2609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4645).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8319 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4645).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8319 (j : Fin 5)))
      1 720 1440 2 ![1440, 288, 360, 720, 144] ![1, 5, 4, 2, 10] reductionProjection8319 ![oldProjection1834, oldProjection1687, reductionProjection3171, oldProjection2021, oldProjection2609]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
